unit UnitCSResultSaver;
// used to save ClamSense results

interface

// DEBUG: shows you how many times a file has been included and how it's done
{.DEFINE SHOW_INCLUDING_PROCESS}

// Use private functions of includes? enabled to "fix" xs library [AMX Mod X]
{$DEFINE AC_USE_PRIVATE_FUNCS}

uses SysUtils, Windows, Classes, UnitConfigManager, UnitDocuments, Contnrs,
     UnitCodeProcessor, Forms;

type
  THighlighterCache = class;
  TIntegerArray = array of Integer;

  TListEx = class(TList)
    protected
      procedure Notify(Ptr: Pointer; Action: TListNotification); override;
    private
      FReferenceList: TIntegerArray;
    published
      property ReferenceList: TIntegerArray read FReferenceList write FReferenceList;
    public
      OnChange: TNotifyEvent;
      Parent: TObject;

      function Add(Item: Pointer): Integer; overload;
      procedure Clear; override;
      procedure Delete(Index: Integer); overload;
      procedure Assign(ListA: TList; AOperator: TListAssignOp = laCopy; ListB: TList = nil); overload;
      constructor Create(const Owner: TObject); reintroduce;
  end;

  TFileWatcher = class;
  
  TFileInfo = class(TCollectionItem)
    private
      FOldFileChange: TDateTime;
      FFileName: String;
      FHighlighterType: THighlighterType;
      FParsingResult: TCodeResult;

      Updating: Boolean;
      procedure UpdateDone;
      procedure ListChanged(Sender: TObject);
    published
      property FileName: String read FFileName write FFileName;
      property OldFileChange: TDateTime read FOldFileChange write FOldFileChange;
      property HighlighterType: THighlighterType read FHighlighterType write FHighlighterType default htNone;
      property ParsingResult: TCodeResult read FParsingResult write FParsingResult;
    public
      WatcherThread: TFileWatcher;
      DocsUsed: TListEx;
      procedure Update;
    public
      constructor Create(Collection: TCollection); override;
      destructor Destroy; override;
    end;

  TFileWatcher = class(TThread)
    private
      // used for thread
      NeedUpdate: Boolean;
      FileName: String;
      IncludeDir: String;
      OldFileChange: TDateTime;
      HighlighterType: THighlighterType;
      IsUsed: Boolean;
      // synchronization procedures
      procedure GetCurrentValues;
      procedure SetCurrentValues;
      procedure GetUpdateDone;
    protected
      procedure Execute; override;
    public
      FileInfo: TFileInfo;
  end;

  THighlighterCache = class(TComponent)
    private
      FFiles: TCollection;
    published
      property Files: TCollection read FFiles write FFiles;
    public
      procedure LoadFromFile(const FileName: String);
      procedure SaveToFile(const FileName: String);
      
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;
  end;

  TQueueParser = class(TThread)
    protected
      procedure Execute; override;
  end;

  TQueueHack = class(TOrderedList)
    public
      function GetItem(const Index: Integer): Pointer;
      function ItemExists(const Ptr: Pointer): Boolean;
  end;

function GetHighlighterCache(const HighlighterType: THighlighterType): THighlighterCache;
function GetHighlighterName(const HighlighterType: THighlighterType): String;
function GetHighlighterByName(const Highlighter: String): THighlighterType;
function FindFileItem(const FileName: String; const Cache: THighlighterCache): TFileInfo;
procedure CheckIncludes(const NewResult, OldResult: TCodeResult; const Docs: TObject; const Highlighter: THighlighterType);
procedure UnlinkDocument(const Document: TDocument);
                              
var AMXXCache: THighlighterCache;
    SMCache: THighlighterCache;
    PawnCache: THighlighterCache;
    { C/C++? I doubt I'll add it }

    ParsingQueue: TQueue;
    ParsingThread: TQueueParser;

    UC_CriticalSection: TRTLCriticalSection;
    FW_CriticalSection: TRTLCriticalSection;
    QP_CriticalSection: TRTLCriticalSection;
    UD_CriticalSection: TRTLCriticalSection;

    JobsLeft: Integer = 0;
    DBStream: TFileStream;

implementation

uses UnitFunctions, UnitfrmMain;

function GetHighlighterCache(const HighlighterType: THighlighterType): THighlighterCache;
begin
  case HighlighterType of
    htAMXX: Result := AMXXCache;
    htSM:   Result := SMCache;
    htPawn: Result := PawnCache;
    else    Result := nil;
  end;
end;

function GetHighlighterName(const HighlighterType: THighlighterType): String;
begin
  case HighlighterType of
    htAMXX: Result := 'AMXModX';
    htSM: Result := 'SourceMod';
    htPawn: Result := 'Pawn';
    htNone: Result := 'null';
  end;
end;

function GetHighlighterByName(const Highlighter: String): THighlighterType;
begin
  if (Highlighter = 'AMXModX') then
    Result := htAMXX
  else if (Highlighter = 'SourceMod') then
    Result := htSM
  else if (Highlighter = 'Pawn') then
    Result := htPawn
  else
    Result := htNone;
end;

function FindFileItem(const FileName: String; const Cache: THighlighterCache): TFileInfo;
var i: integer;
begin
  Result := nil;
  for i := 0 to Cache.Files.Count -1 do begin
    if (AnsiSameText(TFileInfo(Cache.Files.Items[i]).FileName, FileName)) then begin
      Result := TFileInfo(Cache.Files.Items[i]);
      break;
    end;
  end;
end;

procedure CheckIncludes(const NewResult, OldResult: TCodeResult; const Docs: TObject; const Highlighter: THighlighterType);
procedure AttemptDelete(const Include, Start: TFileInfo; const Starting: Boolean);
procedure RemDocItems(const List: TClamList; const FInfo: TObject);
var i: integer;
begin
  if (List.Count = 0) then
    exit;
  i := 0;
  repeat
    i := List.GetNextItem(i, FInfo);
    if (i = -1) then
      break;
    List.Delete(i);
  until (i = -1);
end;

var i, idx, cnt: integer;
    IItem: TInclude;
begin
  if (Include = nil) then exit;
  cnt := 0;
  // decrease Reference by 1
  if (Docs is TDocument) then begin
    idx := Include.DocsUsed.IndexOf(Docs);
    if (idx <> -1) then begin
      cnt := Include.DocsUsed.ReferenceList[idx] -1;
      Include.DocsUsed.ReferenceList[idx] := cnt;
      {$IFDEF SHOW_INCLUDING_PROCESS}
      frmMain.lstOutput.Items.Add('removed: ' + ExtractFileName(Include.FileName) + ' (times included: ' + IntToStr(cnt) + ')');
      {$ENDIF}
      if (cnt = 0) then begin
        RemDocItems(TDocument(Include.DocsUsed[idx]).ClamList, Include);
        Include.DocsUsed.Delete(idx);
      end;
    end;
  end
  else begin
    for i := Include.DocsUsed.Count -1 downto 0 do begin
      Dec(Include.DocsUsed.ReferenceList[i], 1);
      if (Include.DocsUsed.ReferenceList[i] = 0) then begin
        RemDocItems(TDocument(Include.DocsUsed[i]).ClamList, Include);
        Include.DocsUsed.Delete(i);
      end
      else
        cnt := 1;
    end;
    {$IFDEF SHOW_INCLUDING_PROCESS}
    if (Include.DocsUsed.IndexOf(ActiveDoc) = -1) then
      frmMain.lstOutput.Items.Add('removed: ' + ExtractFileName(Include.FileName) + ' (times included: -)')
    else
      frmMain.lstOutput.Items.Add('removed: ' + ExtractFileName(Include.FileName) + ' (times included: ' + IntToStr(Include.DocsUsed.ReferenceList[Include.DocsUsed.IndexOf(ActiveDoc)]) + ')');
    {$ENDIF}
  end;
  // if cnt = 0, remove every sub-include too
  if (cnt = 0) and (Include.ParsingResult <> nil) and ((Include <> Start) or (Starting)) then begin
    for i := 0 to Include.ParsingResult.Includes.Count -1 do begin
      IItem := TInclude(Include.ParsingResult.Includes.Items[i]);
      if (not IItem.IsCircularLink) then
        AttemptDelete(TFileInfo(IItem.FileInfo), Start, False);
    end;
  end;
end;

procedure MarkCircularReferences(const Item: TFileInfo);
procedure MarkSubIncludes(const Start: TFileInfo; const Include: TInclude);
var i: integer;
    IItem: TInclude;
begin
  if (Start.ParsingResult = nil) then exit;
  for i := 0 to Start.ParsingResult.Includes.Count -1 do begin
    IItem := TInclude(Start.ParsingResult.Includes.Items[i]);
    if (IItem.FileInfo = Item) then
      Include.IsCircularLink := True
    else if (IItem.FileInfo <> nil) and (not IItem.IsCircularLink) then
      MarkSubIncludes(TFileInfo(IItem.FileInfo), Include);
  end;
end;

var i: integer;
    IItem: TInclude;
    FItem: TFileInfo;
begin
  for i := 0 to Item.ParsingResult.Includes.Count -1 do begin
    IItem := TInclude(Item.ParsingResult.Includes.Items[i]);
    FItem := TFileInfo(IItem.FileInfo);
    if (FItem <> nil) then
      MarkSubIncludes(FItem, IItem);
  end;
end;

procedure UpdateCL(List: TClamList; const PRes: TCodeResult; const Parent: TObject; const Updated: Boolean);
var i: integer;
    CollID, CurrCollItem: integer;
    Adding, IsLocal: Boolean;
    CurrColl: TCollection;
    CollType: TClamType;
    CollTypeD: TClamTypeD;
begin
  List.Lock;
  IsLocal := (Parent is TDocument);
  if (Updated) then begin
    i := List.GetNextItem(0, Parent);
    Adding := (i = -1);
    CollID := 0;
    CurrCollItem := 0;
    CurrColl := PRes.Consts;
    CollType := ctConstVal;
    CollTypeD := ctdConst;
    repeat
      // check if we need to get a new collection
      if (CurrCollItem = CurrColl.Count) then begin
        {$IFNDEF AC_USE_PRIVATE_FUNCS}
        if (not IsLocal) and (CollID = 6) then
          CollID := 7;
        {$ENDIF}
        case CollID of
          // Constant Values
          0: begin
            CurrColl := PRes.PublicConst;
            CollTypeD := ctdPublicConst;
          end;
          1: begin
            CurrColl := PRes.StaticConst;
            CollTypeD := ctdStaticConst;
          end;
          2: begin
            CurrColl := PRes.StockConst;
            CollTypeD := ctdStockConst;
          end;
          3: begin
            CurrColl := PRes.Definitions;
            CollTypeD := ctdDefinition;
          end;
          // Functions
          4: begin
            CurrColl := PRes.Macros;
            CollType := ctFunction;
            CollTypeD := ctdMacro;
          end;
          5: begin
            CurrColl := PRes.Forwards;
            CollTypeD := ctdForward;
          end;
          6: begin
            CurrColl := PRes.PrivFuncs; // if document is being added
            CollTypeD := ctdPrivFunc;
          end;
          7: begin
            CurrColl := PRes.PubFuncs;
            CollTypeD := ctdPubFunc;
          end;
          8: begin
            CurrColl := PRes.Natives;
            CollTypeD := ctdNative;
          end;
          9: begin
            CurrColl := PRes.StockFuncs;
            CollTypeD := ctdStockFunc;
          end;
          // Variables
          10: begin
            CurrColl := PRes.GlobalVars;
            CollType := ctVariable;
            CollTypeD := ctdGlobalVar;
          end;
          11: begin
            CurrColl := PRes.PublicVars;
            CollTypeD := ctdPublicVar;
          end;
          12: begin
            CurrColl := PRes.StockVars;
            CollTypeD := ctdStockVar;
          end;
          13: begin
            CurrColl := PRes.StaticVars;
            CollTypeD := ctdStaticVar;
          end;
          // Enums
          14: begin
            CurrColl := PRes.Enums;
            CollType := ctEnum;
            CollTypeD := ctdEnum;
          end;
          15: begin
            CurrColl := PRes.FuncEnums;
            CollTypeD := ctdFuncEnum;
          end;
          else CurrColl := nil;
        end;
        Inc(CollID, 1);
        CurrCollItem := 0;
      end
      // no? add/replace new item
      else if (Adding) then begin
        List.Add(CurrColl.Items[CurrCollItem], CollType, CollTypeD, IsLocal, Parent);
        Inc(CurrCollItem, 1);
      end                     
      else begin
        // overwrite it
        List.Items[i] := CurrColl.Items[CurrCollItem];
        //List.ItemType[i] := CollType;
        List.ItemTypeD[i] := CollTypeD;
        // IsLocal should still be the same value
        Inc(CurrCollItem, 1);
        // find next item to overwrite
        i := List.GetNextItem(i+1, Parent);
        Adding := (i = -1);
      end;
    until (CurrColl = nil);
    // check if we need to remove items
    if (not Adding) then begin
      repeat
        List.Delete(i);
        i := List.GetNextItem(i, Parent);
      until (i = -1);
    end;
  end
  else begin
    // ** Constant Values ** //
    for i := 0 to PRes.Consts.Count -1 do
      List.Add(PRes.Consts.Items[i], ctConstVal, ctdConst, IsLocal, Parent);
    for i := 0 to PRes.PublicConst.Count -1 do
      List.Add(PRes.PublicConst.Items[i], ctConstVal, ctdPublicConst, IsLocal, Parent);
    for i := 0 to PRes.StaticConst.Count -1 do
      List.Add(PRes.StaticConst.Items[i], ctConstVal, ctdStaticConst, IsLocal, Parent);
    for i := 0 to PRes.StockConst.Count -1 do
      List.Add(PRes.StockConst.Items[i], ctConstVal, ctdStockConst, IsLocal, Parent);
    for i := 0 to PRes.Definitions.Count -1 do
      List.Add(PRes.Definitions.Items[i], ctConstVal, ctdDefinition, IsLocal, Parent);
    // ** Functions ** //
    for i := 0 to PRes.Macros.Count -1 do
      List.Add(PRes.Macros.Items[i], ctFunction, ctdMacro, IsLocal, Parent);
    for i := 0 to PRes.Forwards.Count -1 do
      List.Add(PRes.Forwards.Items[i], ctFunction, ctdForward, IsLocal, Parent);
    {$IFDEF AC_USE_PRIVATE_FUNCS}
    if ((Parent is TDocument) or ((Parent is TFileInfo) and ((not (AnsiSameText(ExtractFileExt(TFileInfo(Parent).FileName), '.sma'))) or (AnsiSameText(ExtractFileExt(TFileInfo(Parent).FileName), '.psrc'))))) then begin
      for i := 0 to PRes.PrivFuncs.Count -1 do
        List.Add(PRes.PrivFuncs.Items[i], ctFunction, ctdPrivFunc, True, Parent);
    end;
    {$ELSE}
    if (IsLocal) then begin
      for i := 0 to PRes.PrivFuncs.Count -1 do
        List.Add(PRes.PrivFuncs.Items[i], ctFunction, ctdPrivFunc, True, Parent);
    end;
    {$ENDIF}
    for i := 0 to PRes.PubFuncs.Count -1 do
      List.Add(PRes.PubFuncs.Items[i], ctFunction, ctdPubFunc, IsLocal, Parent);
    for i := 0 to PRes.Natives.Count -1 do
      List.Add(PRes.Natives.Items[i], ctFunction, ctdNative, IsLocal, Parent);
    for i := 0 to PRes.StockFuncs.Count -1 do
      List.Add(PRes.StockFuncs.Items[i], ctFunction, ctdStockFunc, IsLocal, Parent);
    // ** Variables ** //
    for i := 0 to PRes.GlobalVars.Count -1 do
      List.Add(PRes.GlobalVars.Items[i], ctVariable, ctdGlobalVar, IsLocal, Parent);
    for i := 0 to PRes.PublicVars.Count -1 do
      List.Add(PRes.PublicVars.Items[i], ctVariable, ctdPublicVar, IsLocal, Parent);
    for i := 0 to PRes.StockVars.Count -1 do
      List.Add(PRes.StockVars.Items[i], ctVariable, ctdStockVar, IsLocal, Parent);
    for i := 0 to PRes.StaticVars.Count -1 do
      List.Add(PRes.StaticVars.Items[i], ctVariable, ctdStaticVar, IsLocal, Parent);
    // ** Enums ** //
    for i := 0 to PRes.Enums.Count -1 do
      List.Add(PRes.Enums.Items[i], ctEnum, ctdEnum, IsLocal, Parent);
    for i := 0 to PRes.FuncEnums.Count -1 do
      List.Add(PRes.FuncEnums.Items[i], ctEnum, ctdFuncEnum, IsLocal, Parent);
  end;
  List.Unlock;
end;

procedure LinkSubIncludes(const Include: TFileInfo; Doc: TObject);
var i, k, idx: integer;
    Item: TInclude;
    FInfo: TFileInfo;
    NoInc: Boolean;
begin
  // init vars and first check
  if (Doc = nil) then
    Doc := Docs;
  NoInc := False;
  // link item
  if (Doc is TDocument) then begin
    idx := Include.DocsUsed.IndexOf(Doc);
    if (idx = -1) then begin
      Include.DocsUsed.Add(Doc);
      if (Include.ParsingResult <> nil) then
        UpdateCL(TDocument(Doc).ClamList, Include.ParsingResult, Include, False);
    end
    else begin
      Inc(Include.DocsUsed.ReferenceList[idx], 1);
      NoInc := True;
    end;
  end
  else begin
    for i := 0 to TFileInfo(Docs).DocsUsed.Count -1 do begin
      idx := Include.DocsUsed.IndexOf(TFileInfo(Docs).DocsUsed[i]);
      if (idx = -1) then begin
        Include.DocsUsed.Add(Doc);
        if (Include.ParsingResult <> nil) then
          UpdateCL(TDocument(TFileInfo(Docs).DocsUsed[i]).ClamList, Include.ParsingResult, Include, True);
      end
      else begin
        Inc(Include.DocsUsed.ReferenceList[idx], 1);
        NoInc := True;
      end;
    end;
  end;
  {$IFDEF SHOW_INCLUDING_PROCESS}
  if (Doc is TDocument) then
    frmMain.lstOutput.Items.Add('exists: ' + ExtractFileName(Include.FileName) + ' (times included: ' + IntToStr(Include.DocsUsed.ReferenceList[Include.DocsUsed.IndexOf(ActiveDoc)]) + ') by: ' + TDocument(Doc).Title)
  else
    frmMain.lstOutput.Items.Add('exists: ' + ExtractFileName(Include.FileName) + ' (times included: ' + IntToStr(Include.DocsUsed.ReferenceList[Include.DocsUsed.IndexOf(ActiveDoc)]) + ') by: ' + ExtractFileName(TFileInfo(Doc).FileName));
  {$ENDIF}
  // recursive search
  if (Include.ParsingResult <> nil) then begin
    for i := 0 to Include.ParsingResult.Includes.Count -1 do begin
      Item := TInclude(Include.ParsingResult.Includes.Items[i]);
      if (not Item.IsCircularLink) then begin
        FInfo := TFileInfo(Item.FileInfo);
        if (FInfo <> nil) then begin
          if (Doc is TDocument) then begin
            idx := FInfo.DocsUsed.IndexOf(Doc);
            if (idx = -1) then
              LinkSubIncludes(FInfo, Doc)
            else if (not NoInc) then
              Inc(FInfo.DocsUsed.ReferenceList[idx], 1);
          end
          else begin
            for k := 0 to Include.DocsUsed.Count -1 do begin
              idx := FInfo.DocsUsed.IndexOf(Include.DocsUsed[k]);
              if (idx = -1) then
                LinkSubIncludes(FInfo, Doc)
              else if (not NoInc) then
                Inc(FInfo.DocsUsed.ReferenceList[idx], 1);
            end;
          end;
        end;
      end;
    end;
  end;
end;

var i, k, idx: integer;
    Item: TInclude;
    CmpStr: String;
    Cache: THighlighterCache;
    FileItem: TFileInfo;
    Found: Boolean;
    OldInc: TCollectionItem;
begin
  // get cache and init vars
  Cache := GetHighlighterCache(Highlighter);
  FileItem := nil;
  // get rid of circular references, bah
  if (Docs is TFileInfo) then
    MarkCircularReferences(TFileInfo(Docs));
  // check
  if (OldResult = nil) then begin
    { add new items }
    for i := 0 to NewResult.Includes.Count -1 do begin
      Item := TInclude(NewResult.Includes.Items[i]);
      if (not Item.IsCircularLink) and (FileExists(Item.FileName)) then begin
        // add to parsing queue if it doesn't already exist
        Found := False;
        CmpStr := Item.FileName;
        for k := 0 to Cache.Files.Count -1 do begin
          FileItem := TFileInfo(Cache.Files.Items[k]);
          if (AnsiSameText(CmpStr, FileItem.FileName)) then begin
            Found := True;
            break;
          end;
        end;
        if (Found) then begin
          if (Docs is TDocument) then begin
            idx := FileItem.DocsUsed.IndexOf(Docs);
            {$IFDEF SHOW_INCLUDING_PROCESS}
            if (idx = -1) then
              LinkSubIncludes(FileItem, nil)
            else begin
              Inc(FileItem.DocsUsed.ReferenceList[idx], 1);
              frmMain.lstOutput.Items.Add('inc: ' + ExtractFileName(FileItem.FileName) + ' (times included: ' + IntToStr(FileItem.DocsUsed.ReferenceList[FileItem.DocsUsed.IndexOf(ActiveDoc)]) + ') by: ' + ExtractFileName(TDocument(Docs).FileName));
            end;
            {$ELSE}
            if (idx = -1) then
              LinkSubIncludes(FileItem, nil)
            else
              Inc(FileItem.DocsUsed.ReferenceList[idx], 1);
            {$ENDIF}
          end
          else begin
            for k := 0 to TFileInfo(Docs).DocsUsed.Count -1 do begin
              if (FileItem.DocsUsed.IndexOf(TFileInfo(Docs).DocsUsed[k]) = -1) then
                LinkSubIncludes(FileItem, TDocument(TFileInfo(Docs).DocsUsed[k]));
            end;
            FileItem.DocsUsed.Assign(TFileInfo(Docs).DocsUsed, laOr);
            {$IFDEF SHOW_INCLUDING_PROCESS}
            frmMain.lstOutput.Items.Add('inc: ' + ExtractFileName(FileItem.FileName) + ' (times included: ' + IntToStr(FileItem.DocsUsed.ReferenceList[FileItem.DocsUsed.IndexOf(ActiveDoc)]) + ') by: ' + ExtractFileName(TFileInfo(Docs).FileName));
            {$ENDIF}
          end;
        end
        else begin
          FileItem := TFileInfo(Cache.Files.Add);
          with FileItem do begin
            FileName := Item.FileName;
            OldFileChange := GetFileLastModified(FileName);
            HighlighterType := Highlighter;
            if (Docs is TDocument) then begin
              if (DocsUsed.IndexOf(Docs) = -1) then
                DocsUsed.Add(Docs);
            end
            else
              FileItem.DocsUsed.Assign(TFileInfo(Docs).DocsUsed, laOr);
            {$IFDEF SHOW_INCLUDING_PROCESS}
            frmMain.lstOutput.Items.Add('dadd: ' + ExtractFileName(FileItem.FileName) + ' (times included: ' + IntToStr(FileItem.DocsUsed.ReferenceList[FileItem.DocsUsed.IndexOf(ActiveDoc)]) + ')');
            {$ENDIF}
            Item.FileInfo := FileItem;
            ParsingQueue.Push(FileItem);
          end;
        end;
      end;
    end;
    { update ClamLists of new references }
    if (Docs is TFileInfo) then begin
      for i := 0 to TFileInfo(Docs).DocsUsed.Count -1 do
        UpdateCL(TDocument(TFileInfo(Docs).DocsUsed.Items[i]).ClamList, NewResult, TFileInfo(Docs), False);
    end
    else
      UpdateCL(TDocument(Docs).ClamList, NewResult, Docs, False);
  end
  else begin
    { add new items }
    for i := 0 to NewResult.Includes.Count -1 do begin
      Item := TInclude(NewResult.Includes.Items[i]);
      if (not Item.IsCircularLink) and (FileExists(Item.FileName)) then begin
        // check if it already exists in old result
        Found := False;
        CmpStr := Item.FileName;
        for k := 0 to OldResult.Includes.Count -1 do begin
          if (AnsiSameText(CmpStr, TInclude(OldResult.Includes.Items[k]).FileName)) then begin
            Found := True;
            break;
          end;
        end;
        // if it doesn't, add it to cache or take existing one and link
        // sub-includes to document(s)
        if (not Found) then begin
          // found is already False, check if it's somewhere in the cache
          for k := 0 to Cache.Files.Count -1 do begin
            FileItem := TFileInfo(Cache.Files.Items[k]);
            if (AnsiSameText(CmpStr, FileItem.FileName)) then begin
              Found := True;
              break;
            end;
          end;
          // link sub-includes
          if (Found) then
            LinkSubIncludes(FileItem, nil)
          else begin
            // add it like in the part above
            FileItem := TFileInfo(Cache.Files.Add);
            with FileItem do begin
              FileName := Item.FileName;
              OldFileChange := GetFileLastModified(FileName);
              HighlighterType := Highlighter;
              if (Docs is TDocument) then begin
                if (DocsUsed.IndexOf(Docs) = -1) then
                  DocsUsed.Add(Docs);
              end
              else
                FileItem.DocsUsed.Assign(TFileInfo(Docs).DocsUsed, laOr);
              {$IFDEF SHOW_INCLUDING_PROCESS}
              frmMain.lstOutput.Items.Add('radd: ' + ExtractFileName(FileItem.FileName) + ' (times included: ' + IntToStr(FileItem.DocsUsed.ReferenceList[FileItem.DocsUsed.IndexOf(ActiveDoc)]) + ')');
              {$ENDIF}
              Item.FileInfo := FileItem;
              ParsingQueue.Push(FileItem);
            end;
          end;
        end;
      end;
    end;
    { remove unused docs from DocsUsed list }
    for i := 0 to OldResult.Includes.Count -1 do begin
      // check if include is still in list
      Found := False;
      OldInc := OldResult.Includes.Items[i];
      for k := 0 to NewResult.Includes.Count -1 do begin
        if (AnsiSameText(TInclude(NewResult.Includes.Items[k]).FileName, TInclude(OldInc).FileName)) then begin
          Found := True;
          break;
        end;
      end;
      // if it's not, try to delete every include and sub-include and so on..
      if (not Found) then begin
        FileItem := TFileInfo(TInclude(OldInc).FileInfo);
        if (FileItem <> nil) then
          AttemptDelete(FileItem, FileItem, True);
      end;
    end;
    { update ClamLists of new references }
    if (Docs is TFileInfo) then begin
      for i := 0 to TFileInfo(Docs).DocsUsed.Count -1 do
        UpdateCL(TDocument(TFileInfo(Docs).DocsUsed[i]).ClamList, NewResult, TFileInfo(Docs), True);
    end
    else
      UpdateCL(TDocument(Docs).ClamList, NewResult, Docs, True);
  end;
end;

procedure UnlinkDocument(const Document: TDocument);
var i, idx: integer;
    Cache: THighlighterCache;
    Item: TFileInfo;
begin
  Cache := Document.HighlighterCache;
  for i := 0 to Cache.Files.Count -1 do begin
    Item := TFileInfo(Cache.Files.Items[i]);
    idx := Item.DocsUsed.IndexOf(Document);
    if (idx <> -1) then
      Item.DocsUsed.Delete(idx);
  end
end;

{ THighlighterCache }

procedure THighlighterCache.LoadFromFile(const FileName: String);
var FileStream: TFileStream;
begin
  FileStream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  // TODO (low priority): implement this function
  FileStream.Free;
end;

procedure THighlighterCache.SaveToFile(const FileName: String);
var FileStream: TFileStream;
begin
  FileStream := TFileStream.Create(FileName, fmCreate);
  // TODO (low priority): Implement own save function here, RTL funcs don't work here
  FileStream.Free;
end;

constructor THighlighterCache.Create(AOwner: TComponent);
begin
  inherited;
  Files := TCollection.Create(TFileInfo);
end;

destructor THighlighterCache.Destroy;
begin
  Files.Free;
  inherited;
end;

{ TFileInfo }

constructor TFileInfo.Create(Collection: TCollection);
begin
  inherited;
  // preset variables
  DocsUsed := TListEx.Create(Self);
  DocsUsed.OnChange := ListChanged;
  // vars
  Inc(JobsLeft, 1);
  Updating := False;
end;

destructor TFileInfo.Destroy;
begin
  // terminate thread
  if (Assigned(WatcherThread)) and (not WatcherThread.Terminated) then begin
    WatcherThread.Terminate;
    //WatcherThread.WaitFor;
  end;
  // decrease jobs
  Dec(JobsLeft, 1);
  // then destroy classes
  DocsUsed.Free;
  inherited;
end;

procedure TFileInfo.ListChanged(Sender: TObject);
begin
  if (DocsUsed.Count = 0) then
    WatcherThread.Terminate // safe
  else if ((not Assigned(WatcherThread)) or (WatcherThread.Terminated)) then begin
    // create watcher thread
    WatcherThread := TFileWatcher.Create(True);
    TFileWatcher(WatcherThread).FileInfo := Self;
    TFileWatcher(WatcherThread).Priority := tpLower;
    TFileWatcher(WatcherThread).Resume;
  end;
end;

procedure TFileInfo.Update;
begin
  Updating := True; // filewatcher should do the rest
end;

procedure TFileInfo.UpdateDone;
var i: integer;
begin
  Updating := False;
  for i := 0 to DocsUsed.Count -1 do
    TDocument(DocsUsed[i]).KeywordUpdater.NeedUpdate := True;
end;

{ TFileWatcher }

procedure TFileWatcher.Execute;
var NewFileChange: TDateTime;
    BreakObj: TCodeResult;
begin
  HighlighterType := htNone;
  repeat
    Synchronize(GetCurrentValues);
    if (FileName <> '') then begin
      if (FileExists(FileName)) then begin
        NewFileChange := GetFileLastModified(FileName);
        if (HighlighterType <> htNone) and (IsUsed) and ((NeedUpdate) or (NewFileChange <> OldFileChange)) then begin
          OldFileChange := NewFileChange;
          try
            // add to parsing queue
            FileInfo.Update;
            EnterCriticalSection(FW_CriticalSection);
            ParsingQueue.Push(FileInfo);
            LeaveCriticalSection(FW_CriticalSection);
            NeedUpdate := False;
            repeat
              Sleep(500);
              if (not Terminated) then
                Synchronize(GetUpdateDone);
            until (not NeedUpdate) or (Terminated);
            // finish
            if (not Terminated) then
              Synchronize(SetCurrentValues);
          except
            // uh, we have a delay, let's try to access it until it works
          end;
        end;
        Sleep(250);
      end
      else begin
        EnterCriticalSection(FW_CriticalSection);
        BreakObj := TCodeResult.Create(GetHighlighterCache(FileInfo.HighlighterType));
        CheckIncludes(BreakObj, FileInfo.ParsingResult, FileInfo, FileInfo.HighlighterType);
        FileInfo.Free;
        LeaveCriticalSection(FW_CriticalSection);
        break;
      end;
    end;
  until (Terminated) or (not IsUsed);
  Free;
end;

procedure TFileWatcher.GetCurrentValues;
begin
  if (Application.Terminated) then
    Terminate
  else begin
    IsUsed := FileInfo.DocsUsed.Count <> 0;
    NeedUpdate := FileInfo.Updating;
    OldFileChange := FileInfo.OldFileChange;
    FileName := FileInfo.FileName;
    if (HighlighterType <> FileInfo.HighlighterType) then
      IncludeDir := ExtractFilePath(GetCompiler(GetHighlighterName(FileInfo.HighlighterType)).Filename) + 'include\';
    HighlighterType := FileInfo.HighlighterType;
  end;
end;

procedure TFileWatcher.GetUpdateDone;
begin
  NeedUpdate := FileInfo.Updating;
end;

procedure TFileWatcher.SetCurrentValues;
begin
  FileInfo.OldFileChange := OldFileChange;
end;

{ TListEx }

function TListEx.Add(Item: Pointer): Integer;
begin
  inherited Add(Item);
  // add item to referencelist
  Result := Count -1;
  SetLength(FReferenceList, Count);
  FReferenceList[Result] := 1;
end;

procedure TListEx.Assign(ListA: TList; AOperator: TListAssignOp;
  ListB: TList);
var i, idx: integer;
begin
  // !! we only replace laOr here !!
  if (AOperator = laOr) then begin
    for i := 0 to ListA.Count -1 do begin
      idx := IndexOf(ListA.Items[i]);
      if (idx = -1) then
        Add(ListA.Items[i])
      else
        Inc(ReferenceList[idx], 1);
    end;
  end
  else
    inherited;
end;

procedure TListEx.Clear;
begin
  inherited;
  SetLength(FReferenceList, 0);
end;

constructor TListEx.Create(const Owner: TObject);
begin
  inherited Create;
  Parent := Owner;
  SetLength(FReferenceList, 0);
end;

procedure TListEx.Delete(Index: Integer);
begin
  inherited;
  System.Move(FReferenceList[Index + 1], FReferenceList[Index], (Count - Index +1) * SizeOf(Integer));
  SetLength(FReferenceList, Count);
end;

procedure TListEx.Notify(Ptr: Pointer; Action: TListNotification);
begin
  if (@OnChange <> nil) then
    OnChange(Ptr);       
end;

{ TQueueParser }

procedure TQueueParser.Execute;
var NextItem: TFileInfo;
    OldResult, NewResult: TCodeResult;
begin
  repeat
    EnterCriticalSection(QP_CriticalSection);
    if (ParsingQueue.Count <> 0) then begin
      NextItem := ParsingQueue.Pop;
      with GetCompiler(GetHighlighterName(NextItem.HighlighterType)) do begin
        NewResult := ParseCode(GetFileContent(NextItem.FileName), ExtractFilePath(FileName) + 'include\', NextItem.FileName, GetHighlighterByName(Language));
        OldResult := NextItem.ParsingResult;
        NextItem.ParsingResult := NewResult;
        CheckIncludes(NewResult, OldResult, NextItem, NextItem.HighlighterType);
        OldResult.Free;
      end;
      NextItem.UpdateDone;
      LeaveCriticalSection(QP_CriticalSection);
    end
    else begin
      LeaveCriticalSection(QP_CriticalSection);
      Sleep(500);
    end;
  until (Terminated);
end;

{ TQueueHack }

function TQueueHack.GetItem(const Index: Integer): Pointer;
begin
  Result := List[Index];
end;

function TQueueHack.ItemExists(const Ptr: Pointer): Boolean;
begin
  Result := not (List.IndexOf(Ptr) = -1);
end;

initialization

InitializeCriticalSection(UC_CriticalSection);
InitializeCriticalSection(FW_CriticalSection);
InitializeCriticalSection(QP_CriticalSection);
InitializeCriticalSection(UD_CriticalSection);

AMXXCache := THighlighterCache.Create(nil);
SMCache := THighlighterCache.Create(nil);
PawnCache := THighlighterCache.Create(nil);

// Threads and Objects

ParsingQueue := TQueue.Create;

ParsingThread := TQueueParser.Create(True);
ParsingThread.Priority := tpLower;
ParsingThread.Resume;

finalization

// Create directory if it doesn't exist and write+free caches
// AMX Mod X
AMXXCache.Free;
// SourceMod
SMCache.Free;
// Pawn
PawnCache.Free;

// Destroy threads and critical sections
ParsingThread.Terminate;
ParsingThread.WaitFor;
ParsingQueue.Free;

DeleteCriticalSection(UC_CriticalSection);
DeleteCriticalSection(FW_CriticalSection);
DeleteCriticalSection(QP_CriticalSection);
DeleteCriticalSection(UD_CriticalSection);

end.
