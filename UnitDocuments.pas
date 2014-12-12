unit UnitDocuments;

interface

uses SysUtils, Classes, Forms, Windows, SpTBXTabs, SciLexerMemo, SciLexer,
     Dialogs, Controls, SciStreamDefault, SciSupport, UnitCodeProcessor,
     ComCtrls, UnitConfigManager, Messages;

type
  TFoldedLines = array of Integer;

  TLineRange = record
    Start: Integer;
    Stop: Integer;
  end;

  TErrorList = record
    Count: Integer;
    OutputIdx: array of Integer;
    FileName: array of String;
    LineNumber: array of TLineRange;
    ErrorCode: array of Integer;
    Description: array of String;
  end;

  TDocument = class;
  
  TCompilationResult = class(TObject)
    public
      Success: Boolean;
      SourceFile: String;
      TargetFile: String;
      Errors: TErrorList;
      FatalErrors: TErrorList;
      Warnings: TErrorList;
      Length: Cardinal; // in ms
      ConsoleOutput: String;
      ConsoleErrors: String;
      CompleteOutput: String;

      Parent: TDocument;
      NotifyProc: TNotifyEvent;
  end;

  TDocParser = class(TThread)
    protected
      UpdateInternal, UpdateVisual: Boolean;
      Code, IncDir, FileName: String;
      Highlighter: THighlighterType;
      ParsingResInt: TCodeResult;
      procedure Execute; override;
    private
      Document: TDocument;
      procedure GetUpdateStat;
    public
      NeedUpdate: Boolean;
      NeedRecreate: Boolean;
  end;

  TKeywordUpdater = class(TThread)
    private
      Document: TDocument;
    protected
      procedure Execute; override;
    public
      NeedUpdate: Boolean;
  end;

  TClamType = (ctFunction, ctConstVal, ctVariable, ctEnum);
  TClamTypeD = (ctdConst, ctdPublicConst, ctdStaticConst, ctdStockConst,
                ctdDefinition, ctdMacro, ctdForward, ctdPrivFunc, ctdPubFunc,
                ctdNative, ctdStockFunc, ctdGlobalVar, ctdPublicVar, ctdStockVar,
                ctdStaticVar, ctdEnum, ctdFuncEnum);


  TClamList = class(TObject)     
    private
      FCount: Integer;
      function GetIsLocal(Index: Integer): Boolean;
      function GetItem(Index: Integer): Pointer;
      function GetItemType(Index: Integer): TClamType;
      function GetItemTypeD(Index: Integer): TClamTypeD;
      function GetParent(Index: Integer): TObject;
      procedure SetIsLocal(Index: Integer; const Value: Boolean);
      procedure SetItem(Index: Integer; const Value: Pointer);
      procedure SetItemTypeD(Index: Integer; const Value: TClamTypeD);
      procedure SetParent(Index: Integer; const Value: TObject);
      function GetLVEntry(Index: Integer): TListItem;
      procedure SetLVEntry(Index: Integer; const Value: TListItem);
    protected
      VirtLVList: PPointerList;
      VirtCnt: Integer;
      VirtUse: Integer;
      VirtList: PPointerList;
    public
      property Items[Index: Integer]: Pointer read GetItem write SetItem;
      property ItemType[Index: Integer]: TClamType read GetItemType;
      property ItemTypeD[Index: Integer]: TClamTypeD read GetItemTypeD write SetItemTypeD;
      property IsLocal[Index: Integer]: Boolean read GetIsLocal write SetIsLocal;
      property Parent[Index: Integer]: TObject read GetParent write SetParent;
      property LVEntry[Index: Integer]: TListItem read GetLVEntry write SetLVEntry;
      property Count: Integer read FCount;
    public
      IsLocked: Boolean;
      ExtraPubs: String;
      function Add(const Item: Pointer; const ItemType: TClamType; const ItemTypeD: TClamTypeD; const IsLocal: Boolean; const Parent: TObject): Integer;
      function IndexOf(const Ptr: Pointer): Integer;
      procedure Delete(const Index: Integer);
      procedure Clear;
      procedure ClearLVEntries;
      procedure Pack;
      procedure Lock;
      procedure Unlock;
      function GetNextItem(const Start: Integer; const Parent: TObject): Integer;
    public
      constructor Create; overload;
      destructor Destroy; override;
  end;

  TDocument = class(TObject)
    private
      FDocPtr: Integer;
      FFirstActivate: Boolean;

      FText: String;
      FTitle: String;
      FTab: TSpTBXTabItem;
      FIndex: Integer;
      FModified: Boolean;
      FReadOnly: Boolean;
      FSelLength: Integer;
      FFirstLineInView: Integer;
      FSelStart: Integer;
      FCodePage: CodePageType;
      FFilename: String;
      FHighlighter: String;
      FFoldedLines: TFoldedLines;
      FOutput: String;
      FSavedText: String;
      FDefaultExtension: String;
      FStreamClass: TSciStreamClass;
      FStreamExtra : Integer;
      FStreamExtraStr : String;
      FZoomLevel: Integer;
      FOutputY: Integer;
      FOutputX: Integer;
      FOutputOldIdx: Integer;
      FLastCompilationRes: TCompilationResult;
      FParsingResult: TCodeResult;
      FHighlighterType: THighlighterType;
      FClamList: TClamList;
      FTasks: TCollection;
      procedure SetTitle(const Value: String);
      procedure SetModified(const Value: Boolean);
      procedure SetReadOnly(const Value: Boolean);
      procedure SetSelLength(const Value: Integer);
      procedure SetSelStart(const Value: Integer);
      procedure SetOutput(const Value: String);
      function GetStreamClass: TSciStreamClass;
      procedure SetZoomLevel(const Value: Integer);
      procedure SetFirstLineInView(const Value: Integer);
      procedure SetText(const Value: String);
      procedure SetHighlighter(const Value: String);
      procedure SetHighlighterType(const Value: THighlighterType);
    published
      // Tab
      property Text: String read FText write SetText;
      property SavedText: String read FSavedText write FSavedText;
      property Title: String read FTitle write SetTitle;
      property Tab: TSpTBXTabItem read FTab write FTab;
      property Index: Integer read FIndex write FIndex;
      // Editor
      property Modified: Boolean read FModified write SetModified;
      property Highlighter: String read FHighlighter write SetHighlighter;
      property HighlighterType: THighlighterType read FHighlighterType write SetHighlighterType default htNone;
      property Filename: String read FFilename write FFilename;
      property CodePage: CodePageType read FCodePage write FCodePage;
      property ReadOnly: Boolean read FReadOnly write SetReadOnly;
      property SelStart: Integer read FSelStart write SetSelStart;
      property SelLength: Integer read FSelLength write SetSelLength;
      property FirstLineInView: Integer read FFirstLineInView write SetFirstLineInView;
      property ZoomLevel: Integer read FZoomLevel write SetZoomLevel;
      property FoldedLines: TFoldedLines read FFoldedLines write FFoldedLines;
      property StreamClass: TSciStreamClass read GetStreamClass write FStreamClass;
      property StreamExtra: Integer read FStreamExtra write FStreamExtra;
      property StreamExtraStr: String read FStreamExtraStr write FStreamExtraStr;
      // Toolbar
      property Output: String read FOutput write SetOutput;
      property OutputX: Integer read FOutputX write FOutputX;
      property OutputY: Integer read FOutputY write FOutputY;
      property OutputOldIdx: Integer read FOutputOldIdx write FOutputOldIdx;
      // Code Explorer
      // Code Inspector
      // ClamSense
      property ParsingRes: TCodeResult read FParsingResult write FParsingResult;
      property ClamList: TClamList read FClamList write FClamList;
      // Misc
      property Tasks: TCollection read FTasks write FTasks;
      property DefaultExtension: String read FDefaultExtension write FDefaultExtension;
      property LastCompilationRes: TCompilationResult read FLastCompilationRes write FLastCompilationRes;
    public
      CodeParser: TDocParser;
      KeywordUpdater: TKeywordUpdater;
      HighlighterCache: Pointer;
    public
      constructor Create; overload;
      destructor Destroy; override;
  end;

  TTask = class(TCollectionItem)
    private
      FTargetDate: String;
      FTask: String;
      FNotes: String;
      FCompleteness: String;
    published
      property Completeness: String read FCompleteness write FCompleteness;
      property Task: String read FTask write FTask;
      property Notes: String read FNotes write FNotes;
      property TargetDate: String read FTargetDate write FTargetDate;
  end;

function NewDocument(const Highlighter, Text, Title, Extension: String; const StartLine, IconIdx: Integer; const MarkStartLine: Boolean; const Activate: Boolean = True): TDocument;
procedure ActivateDocument(const Document: TDocument);
function CloseDocument(const Document: TDocument; const SaveConfirmation: Boolean = True): Boolean;
function GetDocument(const Idx: Integer): TDocument;
function GetDocumentByFN(const FileName: String): TDocument;

procedure ShowStartPage;
procedure ShowCodePage;
function MakeStartPage: TSpTBXTabItem;

var DocumentCount: Integer;
    ActiveDoc: TDocument;

    CS_CEUpdater: TRTLCriticalSection;
    CS_DocParser: TRTLCriticalSection;
    CS_KeywordUpdater: TRTLCriticalSection;

implementation

uses UnitfrmMain, UnitFunctions, UnitfrmCreateNewFile, UnitExtensionManager,
     UnitXPMs, UnitCSResultSaver;

function NewDocument(const Highlighter, Text, Title, Extension: String; const StartLine, IconIdx: Integer; const MarkStartLine: Boolean; const Activate: Boolean = True): TDocument;
var Tab: TSpTBXTabItem;
    Document: TDocument;
    Buffer: String;
begin
  with frmMain do begin
    // Create Tab
    Tab := TSpTBXTabItem.Create(tbxTabs);
    Tab.Caption := Title;
    Tab.Images := ilTabs;
    if (IconIdx < 0) then // if it's already added
      Tab.ImageIndex := -(IconIdx +1)
    else begin // copy it otherwise (gah, using GetImageIndex() hardly works here)
      ilTabs.PngImages.BeginUpdate;
      with ilTabs.PngImages.Add do begin
        Assign(frmCreateNewFile.ilSmallImages.PngImages.Items[IconIdx]);
        Tab.ImageIndex := Index;
      end;
      ilTabs.PngImages.EndUpdate;
    end;
    Tab.ThemeType := tttTBX;
    tbxTabs.Items.Insert(tbxTabs.Items.Count - 5, Tab);
    // Prepare template (insert given values from settings, pre-indent)
    Buffer := StringReplace(Text, '%DEF_PLUGIN_NAME%', Configuration.DefaultPluginName, [rfReplaceAll, rfIgnoreCase]);
    Buffer := StringReplace(Buffer, '%DEF_VERSION%', Configuration.DefaultVersion, [rfReplaceAll, rfIgnoreCase]);
    Buffer := StringReplace(Buffer, '%DEF_AUTHOR%', Configuration.DefaultAuthor, [rfReplaceAll, rfIgnoreCase]);
    if (Configuration.AutoIndentTemplates) and (GetHighlighterByName(Highlighter) <> htNone) then
      Buffer := IndentCode(Buffer, GetEscapeChr(GetHighlighterByName(Highlighter)), Configuration.Indent_IndentString);
    // Create Object
    Document := TDocument.Create;
    Document.FFirstActivate := True;
    Document.Tab := Tab;
    Document.Text := Buffer;
    Document.Title := Title;
    Document.Index := DocumentCount;
    Document.Highlighter := Highlighter;
    Document.DefaultExtension := Extension;
    Document.SelStart := GetSelStart(Buffer, StartLine);
    Document.FDocPtr := frmMain.sciEditor.CreateDocument;
    frmMain.sciEditor.AddRefDocument(Document.FDocPtr);
    if (MarkStartLine) then
      Document.SelLength := Length(TrimLeft(FastGetLine(Buffer, StartLine -1)))
    else
      Document.SelLength := 0;
     // Link Object To Tab
    Tab.Tag := Integer(Pointer(Document));
  end;

  Inc(DocumentCount, 1);
  if (Activate) then
    ActivateDocument(Document);
  Result := Document;
end;

procedure ActivateDocument(const Document: TDocument);
var i, idx: integer;
begin
  Include(BusyState, bsChangingDoc);
  Screen.Cursor := crHourGlass;
  with frmMain do begin
    tbxTabs.Enabled := False;
    // Save old one
    if (ActiveDoc <> nil) then begin
      with ActiveDoc do begin
        Text := sciEditor.Lines.Text;
        Highlighter := sciEditor.LanguageManager.SelectedLanguage;
        ReadOnly := sciEditor.ReadOnly;
        SelStart := sciEditor.SelStart;
        SelLength := sciEditor.SelLength;
        FirstLineInView := sciEditor.GetFirstVisibleLine;
        StreamClass := sciEditor.StreamClass;
        if (Assigned(sciEditor.Streamer)) then begin
          StreamExtra := sciEditor.Streamer.GetData;
          StreamExtraStr := sciEditor.Streamer.GetDataStr;
        end
        else begin
          StreamExtra := 0;
          StreamExtraStr := '';
        end;
        // Fold Status
        SetLength(FFoldedLines, 0);
        idx := 0;
        for i := 0 to sciEditor.GetLineCount -1 do begin
          if ((sciEditor.GetFoldLevel(i) and SC_FOLDLEVELHEADERFLAG) <> 0) and (not sciEditor.GetFoldExpanded(i)) then begin
            SetLength(FFoldedLines, idx+1);
            FFoldedLines[idx] := i;
            Inc(idx, 1);
          end;
        end;
        // Toolbar
        Output := lstOutput.Items.GetTextW;
        OutputOldIdx := lstOutput.ItemIndex;
        OutputX := GetScrollPos(lstOutput.Handle, SB_HORZ);
        OutputY := GetScrollPos(lstOutput.Handle, SB_VERT);
        // Misc
        ClamList.Lock;
        try
          ClamList.ClearLVEntries;
        except
          // no
        end;
        ClamList.Unlock;
        // Update Tasks
        Tasks.Clear;
        for i := 0 to frmMain.lvTasks.Items.Count -1 do begin
          with frmMain.lvTasks.Items[i] do begin
            with TTask(Tasks.Add) do begin
              Completeness := Caption;
              Task := SubItems[0];
              Notes := SubItems[1];
              TargetDate := SubItems[2];
            end;
          end;
        end;
      end;
    end;
    // Activate new document
    if (Document = nil) then begin
      idx := -1;
      // Activate Tab
      for i := 0 to frmMain.tbxTabs.Items.Count -1 do begin
        if (frmMain.tbxTabs.Items[i].Tag = 0) then begin
          idx := i;
          break;
        end;
      end;
      // make new start page item if there's none
      if (idx = -1) then
        idx := frmMain.tbxTabs.Items.IndexOf(MakeStartPage);
      tbxTabs.ActiveTabIndex := idx;
      // Show Page
      ShowStartPage;
      // Misc
      lvTasks.Clear;
      mnuStatus.Caption := 'Ready';
    end
    else begin
      // Show Code Page
      ShowCodePage;
      // Activate Tab
      sciEditor.SetDocPointer(Document.FDocPtr);
      tbxTabs.ActiveTabIndex := tbxTabs.Items.IndexOf(Document.Tab);
      // Editor Properties
      SetHighlighter(Document, Document.Highlighter);
      sciEditor.ReadOnly := Document.ReadOnly;
      sciEditor.StreamClass := Document.StreamClass;
      if (Document.FFirstActivate) then begin // urgh, hack
        Document.FFirstActivate := False;
        sciEditor.SetTextBuf(PChar(Document.Text));
        sciEditor.EmptyUndoBuffer;
      end
      else if (Assigned(sciEditor.Streamer)) then begin
        sciEditor.Streamer.SetData(Document.StreamExtra);
        sciEditor.Streamer.SetDataStr(Document.StreamExtraStr);
      end
      else begin
        sciEditor.Streamer.SetData(0);
        sciEditor.Streamer.SetDataStr('');
      end;
      // SelStart etc.
      sciEditor.LineScroll(0, (0 - sciEditor.GetFirstVisibleLine) + Document.FirstLineInView);
      sciEditor.SelStart := Document.SelStart;
      sciEditor.SelLength := Document.SelLength;
      if (not Document.Modified) then
        sciEditor.SetSavePoint;
      // Fold Status
      for i := 0 to High(Document.FFoldedLines) do
        sciEditor.ToggleFold(Document.FFoldedLines[i]);
      // Modification Bar
      if (Configuration.EnableModMarkers) then
        UpdateBarImages(sciEditor.TextHeight(0))
      else begin
        sciEditor.MarkerDeleteAll(MODIFIED_MARKER);
        sciEditor.MarkerDeleteAll(UNMODIFIED_MARKER);
      end;
      // Update Menu Items
      mnuRedo.Enabled := sciEditor.CanRedo;
      tbiRedo.Enabled := mnuRedo.Enabled;
      mnuUndo.Enabled := sciEditor.CanUndo;
      tbiUndo.Enabled := mnuUndo.Enabled;
      // Code Explorer
      frmMain.trvCodeExplorer.Items.Clear;
      Document.CodeParser.NeedRecreate := True; // <-- recreate Node IDs
      // Tab Size
      frmMain.sciEditor.TabWidth := Configuration.Indent_TabSize;
      // Toolbar
      lstOutput.Items.Text := Document.Output;
      SetScrollPos(frmMain.lstOutput.Handle, SB_HORZ, Document.OutputX, False);
      SetScrollPos(frmMain.lstOutput.Handle, SB_VERT, Document.OutputY, False);
      frmMain.lstOutput.ItemIndex := Document.OutputOldIdx;
      // Misc
      if (Document.Filename = '') then
        mnuStatus.Caption := Document.Title
      else
        mnuStatus.Caption := Document.Filename;
      // Restore tasks
      lvTasks.Clear;
      if (Document.Tasks.Count <> 0) then begin
        for i := 0 to Document.Tasks.Count -1 do begin
          with TTask(Document.Tasks.Items[i]) do begin
            with lvTasks.Items.Add do begin
              Caption := Completeness;
              SubItems.Add(Task);
              SubItems.Add(Notes);
              SubItems.Add(TargetDate);
            end;
          end;
        end;
      end;
    end;
    tbxTabs.Enabled := True;
    // Set Focus
    if (Document <> nil) and (Visible) then begin
      SetFocus;
      sciEditor.SetFocus;
    end;
  end;
  // update controls
  //frmMain.mnuCurrProject.Visible := Assigned(Document);
  frmMain.mnuModified.Visible := Assigned(Document);
  // refresh
  Screen.Cursor := crDefault;
  if (Document = nil) or (Document.HighlighterType = htNone) then
    Exclude(BusyState, bsChangingDoc);
end;

function CloseDocument(const Document: TDocument; const SaveConfirmation: Boolean = True): Boolean;
var i: integer;
    Buff: String;
    Ext: TExtension;
begin
  Result := False;
  Include(BusyState, bsClosing);
  if (Assigned(Document)) then begin
    // Make sure file will be saved
    if (SaveConfirmation) then begin
      if (Document.Filename = '') then begin
        case Application.MessageBox(PChar(Document.Title + ' has not been saved yet. Do you want to do this now?'), 'Question', MB_ICONQUESTION + MB_YESNOCANCEL) of
          mrYes: begin
            if (not DoSaveAs(Document)) then begin
              Exclude(BusyState, bsClosing);
              exit;
            end;
          end;
          mrCancel: begin
            Exclude(BusyState, bsClosing);
            exit;
          end;
        end;
      end
      else begin
        if (Document.Modified) then begin
          case Application.MessageBox(PChar(Document.Title + ' has been modified but not saved. Do you want to do this now?'), 'Question', MB_ICONQUESTION + MB_YESNOCANCEL) of
            mrYes: begin
              if (not DoSave(Document)) then begin
                Exclude(BusyState, bsClosing);
                exit;
              end
              else if (Configuration.RecentFiles.IndexOf(Document.Filename) = -1) then begin
                Configuration.RecentFiles.Insert(0, Document.Filename);
                with frmMain.lvRecentFiles.Items.Insert(0) do begin
                  Ext := GetExtension(Buff, Document.Text);
                  ImageIndex := Document.Tab.ImageIndex;
                  // then everything else
                  Caption := ExtractFileName(Document.Filename);
                  if (Ext = nil) then
                    SubItems.Add('Textfile')
                  else
                    SubItems.Add(Ext.FileType);
                  SubItems.Add(DateTimeToStr(GetFileLastModified(Document.Filename)));
                  // don't forget to save filename
                  Data := PChar(Document.Filename);
                end;
              end
              else begin
                for i := 0 to frmMain.lvRecentFiles.Items.Count -1 do begin
                  if (AnsiSameText(PChar(frmMain.lvRecentFiles.Items[i].Data), LowerCase(Document.Filename))) then begin
                    frmMain.lvRecentFiles.Items.Insert(0).Assign(frmMain.lvRecentFiles.Items[i]);
                    frmMain.lvRecentFiles.Items[i+1].Delete;
                    Configuration.RecentFiles.Move(Configuration.RecentFiles.IndexOf(Document.Filename), 0);
                    break;
                  end;
                end;
              end;

              if (Configuration.RecentFiles.Count > 15) then begin // limited to 15 items
                Configuration.RecentFiles.Delete(15);
                frmMain.lvRecentFiles.Items.Delete(15);
              end;
            end;
            mrCancel: begin
              Exclude(BusyState, bsClosing);
              exit;
            end;
          end;
        end
        else if (Configuration.RecentFiles.IndexOf(Document.Filename) = -1) then begin
          Configuration.RecentFiles.Insert(0, Document.Filename);
          with frmMain.lvRecentFiles.Items.Insert(0) do begin
            Ext := GetExtension(Buff, Document.Text);
            ImageIndex := Document.Tab.ImageIndex;
            // then everything else
            Caption := ExtractFileName(Document.Filename);
            if (Ext = nil) then
              SubItems.Add('Textfile')
            else
              SubItems.Add(Ext.FileType);
            SubItems.Add(DateTimeToStr(GetFileLastModified(Document.Filename)));
            // don't forget to save filename
            Data := PChar(Document.Filename);
          end;
        end
        else begin
          for i := 0 to frmMain.lvRecentFiles.Items.Count -1 do begin
            if (AnsiSameText(PChar(frmMain.lvRecentFiles.Items[i].Data), Document.Filename)) then begin
              frmMain.lvRecentFiles.Items.Insert(0).Assign(frmMain.lvRecentFiles.Items[i]);
              frmMain.lvRecentFiles.Items[i+1].Delete;
              Configuration.RecentFiles.Move(Configuration.RecentFiles.IndexOf(Document.Filename), 0);
              break;
            end;
          end;
        end;

        if (Configuration.RecentFiles.Count > 15) then begin // limited to 15 items
          Configuration.RecentFiles.Delete(15);
          frmMain.lvRecentFiles.Items.Delete(15);
        end;
      end;
    end;
    // Reorder index and reset count
    for i := Document.Index to DocumentCount -1 do
      GetDocument(i).Index := i-1;
    Inc(DocumentCount, -1);
    // Remove all links from highlighter cache
    if (Document.HighlighterType <> htNone) then
      UnlinkDocument(Document);
    // Free document+tab
    frmMain.sciEditor.ReleaseDocument(Document.FDocPtr);
    Document.Tab.Free;
    Document.Free;
    // Add Start Page if there are too few tabs
    if (frmMain.tbxTabs.Items.Count < 6) then begin
      MakeStartPage;
      ActiveDoc := nil; // we've closed the doc, do not ever try to save it
      ActivateDocument(nil);
    end;
    // Return True
    Result := True;
  end
  else begin
    if (frmMain.tbxTabs.Items.Count <= 6) then begin
      AddDebugLog('CloseDocument', 'Warning: CloseDocument called with less than 7 tab items');
      exit;
    end;

    for i := 0 to frmMain.tbxTabs.Items.Count -6 do begin
      if (frmMain.tbxTabs.Items[i].Tag = 0) then begin
        TSpTBXTabItem(frmMain.tbxTabs.Items[i]).Free;
        break;
      end;
    end;
  end;
  // set new tab index, causes graphic+code errors otherwise
  for i := 0 to frmMain.tbxTabs.Items.Count -6 do begin
    if (TSpTBXTabItem(frmMain.tbxTabs.Items[i]).Checked) then begin
      frmMain.tbxTabs.ActiveTabIndex := i;
      break;
    end;
  end;
  // call update functions
  frmMain.UpdateScrollTabs;
  if (Document = nil) or (Document.HighlighterType = htNone) then
    Exclude(BusyState, bsClosing);
end;

procedure ShowStartPage;
begin
  frmMain.jspStartPage.Show;
end;

procedure ShowCodePage;
begin
  frmMain.jspCode.Show;
end;

function MakeStartPage: TSpTBXTabItem;
begin
  Result := TSpTBXTabItem.Create(frmMain.tbxTabs);
  Result.Caption := 'Start Page';
  Result.Images := frmMain.ilMain;
  Result.ImageIndex := 17;
  frmMain.tbxTabs.Items.Insert(0, Result);
end;

function GetDocument(const Idx: Integer): TDocument;
var i: Integer;
    Document: TDocument;
begin
  for i := 0 to frmMain.tbxTabs.Items.Count -1 do begin
    Document := Pointer(frmMain.tbxTabs.Items[i].Tag);
    if (Document <> nil) then begin
      if (Document.Index = Idx) then begin
        Result := Document;
        exit;
      end;
    end;
  end;

  Result := nil;
end;

function GetDocumentByFN(const FileName: String): TDocument;
var i: Integer;
    Document: TDocument;
begin
  for i := 0 to frmMain.tbxTabs.Items.Count -1 do begin
    Document := Pointer(frmMain.tbxTabs.Items[i].Tag);
    if (Document <> nil) then begin
      if (AnsiSameText(Document.Filename, FileName)) then begin
        Result := Document;
        exit;
      end;
    end;
  end;

  Result := nil;
end;

{ TDocument }

constructor TDocument.Create;
begin
  inherited;
  LastCompilationRes := TCompilationResult.Create;
  LastCompilationRes.Parent := Self;
  ClamList := TClamList.Create;
  // this is for basic code parsing -> parsing results and so on
  CodeParser := TDocParser.Create(True);
  CodeParser.NeedUpdate := True;
  CodeParser.NeedRecreate := False;
  CodeParser.Document := Self;
  CodeParser.Resume;
  // and a separate one for the keywords, incredibly slow so in a 2nd thread
  KeywordUpdater := TKeywordUpdater.Create(True);
  KeywordUpdater.Document := Self;
  KeywordUpdater.Resume;

  Tasks := TCollection.Create(TTask);
end;

destructor TDocument.Destroy;
begin
  KeywordUpdater.Terminate;
  CodeParser.Terminate;
  CodeParser.WaitFor;
  LastCompilationRes.Free;
  ClamList.Free;
  Tasks.Free;
  inherited;
end;

function TDocument.GetStreamClass: TSciStreamClass;
begin
  if (Assigned(FStreamClass)) then
    Result := FStreamClass
  else
    Result := TSciStreamDefault;
end;

procedure TDocument.SetFirstLineInView(const Value: Integer);
begin
  FFirstLineInView := Value;
  if (ActiveDoc = Self) and (BusyState = []) then
    frmMain.sciEditor.GotoLineEnsureVisible(Value);
end;

procedure TDocument.SetHighlighter(const Value: String);
begin
  FHighlighter := Value;
  FHighlighterType := GetHighlighterByName(Value);
  HighlighterCache := GetHighlighterCache(FHighlighterType);
end;

procedure TDocument.SetHighlighterType(const Value: THighlighterType);
begin
  FHighlighterType := Value;
  FHighlighter := GetHighlighterName(Value);
  HighlighterCache := GetHighlighterCache(FHighlighterType);
end;

procedure TDocument.SetModified(const Value: Boolean);
begin
  FModified := Value;
  if (ActiveDoc = Self) then begin // do not change this line, used by other events!
    if (Value) then
      frmMain.mnuModified.Caption := 'Modified'
    else begin
      frmMain.mnuModified.Caption := '';
      frmMain.sciEditor.MarkerDeleteAll(MODIFIED_MARKER);
    end;
  end;
end;

procedure TDocument.SetOutput(const Value: String);
begin
  FOutput := Value;
  if (ActiveDoc = Self) and (BusyState = []) then
    frmMain.lstOutput.Items.Text := Value;
end;

procedure TDocument.SetReadOnly(const Value: Boolean);
begin
  FReadOnly := Value;
  if (ActiveDoc = Self) and (BusyState = []) then
    frmMain.sciEditor.ReadOnly := Value;
end;

procedure TDocument.SetSelLength(const Value: Integer);
begin
  FSelLength := Value;
  if (ActiveDoc = Self) and (BusyState = []) then
    frmMain.sciEditor.SelLength := Value;
end;

procedure TDocument.SetSelStart(const Value: Integer);
begin
  FSelStart := Value;
  if (ActiveDoc = Self) and (BusyState = []) then
    frmMain.sciEditor.SelStart := Value;
end;

procedure TDocument.SetText(const Value: String);
begin
  FText := Value;
  if (ActiveDoc = Self) then begin
    if (SavedText <> Value) and (not (bsChangingDoc in BusyState)) and (not (bsClosing in BusyState)) then
      frmMain.sciEditor.SetText(PChar(Value));
  end
  else
    CodeParser.NeedUpdate := True;
end;

procedure TDocument.SetTitle(const Value: String);
begin
  FTitle := Value;
  if (Tab.Caption <> Value) then
    Tab.Caption := Value;
end;

procedure TDocument.SetZoomLevel(const Value: Integer);
begin
  FZoomLevel := Value;
  if (ActiveDoc = Self) and (BusyState = []) then
    frmMain.sciEditor.SetZoom(Value);
end;

{ TDocParser }

procedure TDocParser.Execute;
function TreeItemIdxOf(const SubItem: String; const TreeItem: TTreeNode): Integer;
var i: integer;
begin
  Result := -1;
  for i := 0 to TreeItem.Count -1 do begin
    if (TreeItem.Item[i].Text = SubItem) then begin
      Result := i;
      break;
    end;
  end;
end;

function GetCategory(const SubCat, Caption: String; const Recreate: Boolean): TTreeNode;
var i: integer;
    Node, Parent: TTreeNode;
begin
  Result := nil;
  // get parent node
  if (SubCat <> '') then
    Parent := GetCategory('', SubCat, Recreate)
  else
    Parent := nil;
  // check if it exists
  for i := 0 to frmMain.trvCodeExplorer.Items.Count -1 do begin
    Node := frmMain.trvCodeExplorer.Items[i];
    if (Node.Parent = Parent) and (Node.Text = Caption) then begin
      Result := Node;
      exit;
    end;
  end;
  // create it
  if (Recreate) then
    Result := frmMain.trvCodeExplorer.Items.AddChild(Parent, Caption);
  //Result.ImageIndex := 0;
  if (Parent = nil) then
    frmMain.trvCodeExplorer.Items.AlphaSort
  else
    Parent.AlphaSort;
end;

procedure MergeNodeCats(CatOld, CatNew: TCollection);
var i, c: integer;
begin
  // overwrite every node's ID with node #i, simple and fast
  if (CatOld.Count > CatNew.Count) then
    c := CatNew.Count -1
  else
    c := CatOld.Count -1;
  // set nodes
  if (CatOld.ItemClass = TCodeElement) then begin
    for i := 0 to c do
      TCodeElement(CatNew.Items[i]).Node := TCodeElement(CatOld.Items[i]).Node;
  end
  else if (CatOld.ItemClass = TInclude) then begin
    for i := 0 to c do
      TInclude(CatNew.Items[i]).Node := TInclude(CatOld.Items[i]).Node;
  end
  else if (CatOld.ItemClass = TFunction) then begin
    for i := 0 to c do
      TFunction(CatNew.Items[i]).Node := TFunction(CatOld.Items[i]).Node;
  end;
end;

procedure MergeNodes(const OldParsingRes: TCodeResult; var NewResult: TCodeResult);
begin
  { catpart }
  MergeNodeCats(OldParsingRes.Consts, NewResult.Consts);
  MergeNodeCats(OldParsingRes.PublicConst, NewResult.PublicConst);
  MergeNodeCats(OldParsingRes.StaticConst, NewResult.StaticConst);
  MergeNodeCats(OldParsingRes.StockConst, NewResult.StockConst);
  MergeNodeCats(OldParsingRes.Definitions, NewResult.Definitions);
  MergeNodeCats(OldParsingRes.Macros, NewResult.Macros);
  MergeNodeCats(OldParsingRes.Forwards, NewResult.Forwards);
  MergeNodeCats(OldParsingRes.PrivFuncs, NewResult.PrivFuncs);
  MergeNodeCats(OldParsingRes.PubFuncs, NewResult.PubFuncs);
  MergeNodeCats(OldParsingRes.StockFuncs, NewResult.StockFuncs);
  MergeNodeCats(OldParsingRes.Includes, NewResult.Includes);
  MergeNodeCats(OldParsingRes.Natives, NewResult.Natives);
  MergeNodeCats(OldParsingRes.GlobalVars, NewResult.GlobalVars);
  MergeNodeCats(OldParsingRes.PublicVars, NewResult.PublicVars);
  MergeNodeCats(OldParsingRes.StockConst, NewResult.StockConst);
  MergeNodeCats(OldParsingRes.StockVars, NewResult.StockVars);
end;

procedure RecreateCategory(const SubCat, Caption: String; const ImgIndex: Integer; const Category: TCollection);
var TreeCat: TTreeNode;
    i: integer;
begin
  if (Configuration.HideEmptyGroups) and (Category.Count = 0) then exit;

  TreeCat := GetCategory(SubCat, Caption, True);
  TreeCat.DeleteChildren;
  // Code Elements
  if (Category.ItemClass = TCodeElement) then begin
    for i := 0 to Category.Count -1 do begin
      with TCodeElement(Category.Items[i]) do begin
        Node := frmMain.trvCodeExplorer.Items.AddChildObject(TreeCat, Caption, Category.Items[i]);
        with Node do begin
          ImageIndex := ImgIndex;
          SelectedIndex := ImgIndex;
        end;
      end;
    end;
  end
  // Functions
  else if (Category.ItemClass = TFunction) then begin
    for i := 0 to Category.Count -1 do begin
      with TFunction(Category.Items[i]) do begin
        Node := frmMain.trvCodeExplorer.Items.AddChildObject(TreeCat, Caption, Category.Items[i]);
        with Node do begin
          ImageIndex := ImgIndex;
          SelectedIndex := ImgIndex;
        end;
      end;
    end;
  end
  // Includes
  else if (Category.ItemClass = TInclude) then begin
    for i := 0 to Category.Count -1 do begin
      with TInclude(Category.Items[i]) do begin
        Node := frmMain.trvCodeExplorer.Items.AddChildObject(TreeCat, Caption, Category.Items[i]);
        with Node do begin
          ImageIndex := ImgIndex;
          SelectedIndex := ImgIndex;
        end;
      end;
    end;
  end;
  if (Configuration.SortEntries) then
    TreeCat.AlphaSort;
end;

procedure UpdateCat(const SubCat, Caption: String; const ImgIndex: Integer; const Category: TCollection);
var TreeCat: TTreeNode;
    i: integer;
    Changed, Added: Boolean;
begin
  if (Configuration.HideEmptyGroups) and (Category.Count = 0) then begin
    TreeCat := GetCategory(SubCat, Caption, False);
    if (TreeCat <> nil) then begin
      if (TreeCat.Parent <> nil) and (TreeCat.Parent.Count = 1) then
        TreeCat.Parent.Delete
      else
        TreeCat.Delete;
    end;
    exit;
  end
  else
    TreeCat := GetCategory(SubCat, Caption, True);
  Changed := False;
  Added := False;
  //try
  { add/update nodes }
  // Code Elements
  if (Category.ItemClass = TCodeElement) then begin
    for i := 0 to Category.Count -1 do begin
      with TCodeElement(Category.Items[i]) do begin
        if (not Assigned(Node)) then begin
          Node := frmMain.trvCodeExplorer.Items.AddChildObject(TreeCat, Caption, Category.Items[i]);
          Node.ImageIndex := ImgIndex;
          Node.SelectedIndex := ImgIndex;
          Changed := True;
          Added := True;
        end
        else if (Node.Text <> Caption) then begin
          Node.Text := Caption;
          Node.Data := Category.Items[i];
          Changed := True;
        end
        else
          Node.Data := Category.Items[i];
      end;
    end;
  end
  // Functions
  else if (Category.ItemClass = TFunction) then begin
    for i := 0 to Category.Count -1 do begin
      with TFunction(Category.Items[i]) do begin
        if (not Assigned(Node)) then begin
          Node := frmMain.trvCodeExplorer.Items.AddChildObject(TreeCat, Caption, Category.Items[i]);
          Node.ImageIndex := ImgIndex;
          Node.SelectedIndex := ImgIndex;
          Changed := True;
          Added := True;
        end
        else if (Node.Text <> Caption) then begin
          Node.Text := Caption;
          Node.Data := Category.Items[i];
          Changed := True;
        end
        else
          Node.Data := Category.Items[i];
      end;
    end;
  end
  // Includes
  else if (Category.ItemClass = TInclude) then begin
    for i := 0 to Category.Count -1 do begin
      with TInclude(Category.Items[i]) do begin
        if (not Assigned(Node)) then begin
          Node := frmMain.trvCodeExplorer.Items.AddChildObject(TreeCat, Caption, Category.Items[i]);
          Node.ImageIndex := ImgIndex;
          Node.SelectedIndex := ImgIndex;
          Changed := True;
          Added := True;
        end
        else if (Node.Text <> Caption) then begin
          Node.Text := Caption;
          Node.Data := Category.Items[i];
          Changed := True;
        end
        else
          Node.Data := Category.Items[i];
      end;
    end;
  end;
  { delete old, unused nodes }
  if (TreeCat.Count > Category.Count) then begin
    for i := TreeCat.Count -1 downto 0 do begin
      if (TreeCat.Item[i].ImageIndex =ImgIndex) then begin
        // weird, why don't some items get destroyed properly?! this workaround works though
        try
          if (TCollectionItem(TreeCat.Item[i].Data).Collection <> Category) then begin
            TreeCat.Item[i].Delete;
            Changed := True;
          end;
        except
          TreeCat.Item[i].Delete;
          Changed := True;
        end;
      end;
    end;
  end;
  { sort if category has changed }
  if (Changed) then begin
    if (Configuration.SortEntries) then
      TreeCat.AlphaSort
    else if (Added) then
      frmMain.trvCodeExplorer.Refresh;
  end;
  //except
  //  RecreateCategory(SubCat, Caption, ImgIndex, Category);
  //end;
end;

begin
  repeat
    Sleep(50);

    Synchronize(GetUpdateStat);
    if (Highlighter = htNone) then continue;

    if (UpdateInternal) then begin
      { Parse own code first }
      ParsingResInt := ParseCode(Code, IncDir, FileName, Highlighter);
      { Enter CS }
      EnterCriticalSection(CS_DocParser);
      { Merge Nodes }
      if (Document.ParsingRes <> nil) then
        MergeNodes(Document.ParsingRes, ParsingResInt);
      { Then process includes }
      CheckIncludes(ParsingResInt, Document.ParsingRes, Document, Document.HighlighterType);
      Document.ClamList.Lock;
      Document.ClamList.ExtraPubs := ParsingResInt.ExtraPubs;
      try
        Document.ParsingRes.Free;
        Document.ParsingRes := ParsingResInt;
      except
        // must be unlocked
      end;
      Document.ClamList.Unlock;
      { Leave CS again }
      LeaveCriticalSection(CS_DocParser);
      { Done? Update Code Explorer etc. if neccessary }
    end;

    if (UpdateVisual) and ((UpdateInternal) or (NeedRecreate)) then begin
      { Reset Values }
      UpdateVisual := False;
      UpdateInternal := False;
      { Enter CS }
      EnterCriticalSection(CS_CEUpdater);
      { Update Keywords }
      TKeywordUpdater(Document.KeywordUpdater).NeedUpdate := True;
      { Do we need to recreate the entire tree? }
      if (NeedRecreate) then begin
        // Start Update
        frmMain.trvCodeExplorer.Items.BeginUpdate;
        frmMain.trvCodeExplorer.Items.Clear;
        { recreate hook? }
        // Create every category { catpart }
        try
          RecreateCategory('Constants', 'Const', 12, ParsingResInt.Consts);
          RecreateCategory('Constants', 'Public', 3, ParsingResInt.PublicConst);
          RecreateCategory('Constants', 'Static', 2, ParsingResInt.StaticConst);
          RecreateCategory('Constants', 'Stock', 4, ParsingResInt.StockConst);
          RecreateCategory('Definitions', 'Static', 2, ParsingResInt.Definitions);
          RecreateCategory('Definitions', 'Macros', 5, ParsingResInt.Macros);
          RecreateCategory('', 'Forwards', 6, ParsingResInt.Forwards);
          RecreateCategory('Functions', 'Private', 7, ParsingResInt.PrivFuncs);
          RecreateCategory('Functions', 'Public', 8, ParsingResInt.PubFuncs);
          RecreateCategory('Functions', 'Stocks', 9, ParsingResInt.StockFuncs);
          RecreateCategory('', 'Includes', 10, ParsingResInt.Includes);
          RecreateCategory('', 'Natives', 11, ParsingResInt.Natives);
          RecreateCategory('Variables', 'Global', 12, ParsingResInt.GlobalVars);
          RecreateCategory('Variables', 'Public', 3, ParsingResInt.PublicVars);
          RecreateCategory('Variables', 'Static', 2, ParsingResInt.StaticVars);
          RecreateCategory('Variables', 'Stock', 4, ParsingResInt.StockVars);
        except
          // End
        end;
        frmMain.trvCodeExplorer.Items.EndUpdate;
        NeedRecreate := False;
      end
      else begin
        // Update categories (mm, critical sections are awesome) { catpart }
        UpdateCat('Constants', 'Const', 12, ParsingResInt.Consts);
        UpdateCat('Constants', 'Public', 3, ParsingResInt.PublicConst);
        UpdateCat('Constants', 'Static', 2, ParsingResInt.StaticConst);
        UpdateCat('Constants', 'Stock', 4, ParsingResInt.StockConst);
        UpdateCat('Definitions', 'Static', 2, ParsingResInt.Definitions);
        UpdateCat('Definitions', 'Macros', 5, ParsingResInt.Macros);
        UpdateCat('', 'Forwards', 6, ParsingResInt.Forwards);
        UpdateCat('Functions', 'Private', 7, ParsingResInt.PrivFuncs);
        UpdateCat('Functions', 'Public', 8, ParsingResInt.PubFuncs);
        UpdateCat('Functions', 'Stocks', 9, ParsingResInt.StockFuncs);
        UpdateCat('', 'Includes', 10, ParsingResInt.Includes);
        UpdateCat('', 'Natives', 11, ParsingResInt.Natives);
        UpdateCat('Variables', 'Global', 12, ParsingResInt.GlobalVars);
        UpdateCat('Variables', 'Public', 3, ParsingResInt.PublicVars);
        UpdateCat('Variables', 'Static', 2, ParsingResInt.StaticVars);
        UpdateCat('Variables', 'Stock', 4, ParsingResInt.StockVars);
      end;
      { Leave CS again }
      LeaveCriticalSection(CS_CEUpdater);
    end;
    Exclude(BusyState, bsChangingDoc);
    Exclude(BusyState, bsClosing);
  until (Terminated);
end;

procedure TDocParser.GetUpdateStat;
begin
  UpdateInternal := (NeedUpdate) or (Highlighter = htNone);
  UpdateVisual := (ActiveDoc = Document);
  if (UpdateInternal) then begin
    if (ActiveDoc = Document) then
      Code := frmMain.sciEditor.Lines.Text
    else
      Code := Document.Text;
    FileName := Document.Filename;
    with GetCompiler(Document.Highlighter) do begin
      Self.Highlighter := Highlighter;
      IncDir := ExtractFilePath(Filename) + 'include\';
    end;
    NeedUpdate := False;
  end;
end;

{ TClamList }

function TClamList.Add(const Item: Pointer; const ItemType: TClamType;
  const ItemTypeD: TClamTypeD; const IsLocal: Boolean;
  const Parent: TObject): Integer;
begin               
  // make sure we have enough free space for this list
  if (VirtUse = VirtCnt) then begin
    VirtCnt := VirtCnt *2;
    ReallocMem(VirtList, VirtCnt * SizeOf(Pointer));
    ReallocMem(VirtLVList, (VirtCnt div 4) * SizeOf(Pointer));
  end;
  // add new item
  VirtList[VirtUse] := Item;
  Inc(VirtUse, 1);
  VirtList[VirtUse] := Pointer(ItemTypeD);
  Inc(VirtUse, 1);
  VirtList[VirtUse] := Pointer(IsLocal);
  Inc(VirtUse, 1);
  VirtList[VirtUse] := Pointer(Parent);
  Inc(VirtUse, 1);
  VirtLVList[FCount] := nil;
  // return something
  Inc(FCount, 1);
  Result := FCount;
end;

procedure TClamList.Clear;
begin
  ClearLVEntries;
  VirtUse := 0;
  FCount := 0;
end;

procedure TClamList.ClearLVEntries;
var i, k: integer;
begin
  FillChar(VirtLVList^, (VirtUse div 4) * SizeOf(Pointer), 0);
  // ooh, I hate enums
  for i := 0 to FCount -1 do begin
    if (GetItemType(i) = ctEnum) then begin
      with TEnum(GetItem(i)).Entries do begin
        for k := 0 to Count -1 do
          Objects[k] := nil;
      end;
    end;
  end;
end;

constructor TClamList.Create;
begin
  inherited;
  VirtUse := 0;
  VirtCnt := 512; // 128*4=512, a good starting value
  ReallocMem(VirtList, 512 * SizeOf(Pointer));
  ReallocMem(VirtLVList, 128 * SizeOf(Pointer));
end;

procedure TClamList.Delete(const Index: Integer);
begin
  if (Index >= FCount) then
    raise Exception.Create('Index out of bounds: ' + IntToStr(Index))
  else begin
    Dec(FCount, 1);
    Move(VirtList^[Index *4 + 4], VirtList^[Index *4], (VirtUse - Index *4) * SizeOf(Pointer));
    Move(VirtLVList^[Index + 1], VirtLVList^[Index], (FCount - Index) * SizeOf(Pointer));
    Dec(VirtUse, 4);
    // I know I could shrink down the actual list here a bit but why, this list
    // is supposed to be big anyway and these 2-3kb don't really matter
  end;
end;

destructor TClamList.Destroy;
begin
  inherited;
  ReallocMem(VirtList, 0);
end;

function TClamList.GetIsLocal(Index: Integer): Boolean;
begin
  Result := Boolean(VirtList[Index * 4 +2]);
end;

function TClamList.GetItem(Index: Integer): Pointer;
begin
  Result := VirtList[Index * 4];
end;

function TClamList.GetItemType(Index: Integer): TClamType;
var Val: TClamTypeD;
begin
  Val := GetItemTypeD(Index);
  if (Val < ctdMacro) then
    Result := ctConstVal
  else if (Val < ctdGlobalVar) then
    Result := ctFunction
  else if (Val < ctdEnum) then
    Result := ctVariable
  else
    Result := ctEnum;
end;

function TClamList.GetItemTypeD(Index: Integer): TClamTypeD;
begin
  Result := TClamTypeD(VirtList[Index * 4 +1]);
end;

function TClamList.GetLVEntry(Index: Integer): TListItem;
begin
  Result := TListItem(VirtLVList[Index]);
end;

function TClamList.GetNextItem(const Start: Integer;
  const Parent: TObject): Integer;
var i: integer;
begin
  Result := -1;
  // check for max here; I don't really want to raise an exception here
  if (Start >= FCount) then
    exit;
  // look for next item
  i := Start * 4 +3;
  repeat
    if (VirtList[i] = Parent) then begin
      Result := (i -3) div 4;
      break;
    end;
    Inc(i, 4);
  until (i > VirtUse);
end;

function TClamList.GetParent(Index: Integer): TObject;
begin
  Result := TObject(VirtList[Index * 4 +3]);
end;

function TClamList.IndexOf(const Ptr: Pointer): Integer;
var i: integer;
begin
  Result := -1;
  
  if (FCount = 0) then exit;
  i := 0;
  repeat
    if (VirtList[i] = Ptr) then
      Result := i div 4
    else
      Inc(i, 4);
  until (Result <> -1) or (i > VirtUse);
end;

procedure TClamList.Lock;
begin
  while (IsLocked) do
    Sleep(10);
  IsLocked := True;
end;

procedure TClamList.Pack;
var i: integer;
begin
  if (FCount = 0) then exit;           
  i := VirtUse -4;
  repeat
    if (VirtList[i] = nil) then
      Delete(i div 4);
    Dec(i, 4);
  until (i = 0);
end;

procedure TClamList.SetIsLocal(Index: Integer; const Value: Boolean);
begin
  VirtList[Index * 4 +2] := Pointer(Value);
end;

procedure TClamList.SetItem(Index: Integer; const Value: Pointer);
begin
  VirtList[Index * 4] := Value;
end;

procedure TClamList.SetItemTypeD(Index: Integer; const Value: TClamTypeD);
begin
  VirtList[Index * 4 +1] := Pointer(Value);
end;

procedure TClamList.SetLVEntry(Index: Integer; const Value: TListItem);
begin
  VirtLVList[Index] := Pointer(Value);
end;

procedure TClamList.SetParent(Index: Integer; const Value: TObject);
begin
  VirtList[Index * 4 +3] := Pointer(Value);
end;

procedure TClamList.Unlock;
begin
  IsLocked := False;
end;

{ TKeywordUpdater }

procedure TKeywordUpdater.Execute;
var i: integer;
    OldVars, OldFuncs: String;
    Vars, Funcs: String;
begin
  OldFuncs := '';
  OldVars := '';
  NeedUpdate := False;
  repeat
    { Wait for (important) change }
    repeat
      Sleep(50);
      if (Terminated) then begin
        Free;
        exit;
      end
      else
        NeedUpdate := (NeedUpdate) or (ActiveDoc <> Document);
    until (ActiveDoc = Document) and (not Document.ClamList.IsLocked) and (NeedUpdate) and (Document.HighlighterType <> htNone) and (BusyState = []);
    { Erase vars }
    Vars := ' ';
    Funcs := ' ';
    { Enter CS and prepare keyword list }
    EnterCriticalSection(CS_KeywordUpdater);
    NeedUpdate := False;
    Document.ClamList.Lock;
    Funcs := Funcs + Document.ClamList.ExtraPubs;
    try
      for i := 0 to Document.ClamList.Count -1 do begin
        case Document.ClamList.ItemType[i] of
          ctConstVal, ctVariable: Vars := Vars + TCodeElement(Document.ClamList.Items[i]).Caption + #32;
          ctFunction: Funcs := Funcs + TFunction(Document.ClamList.Items[i]).Caption + #32;
          ctEnum: begin
            with TEnum(Document.ClamList.Items[i]).Entries do begin
              Delimiter := #32;
              Vars := Vars + DelimitedText + #32;
            end;
          end;
        end;
      end;
    except
      // unlock under every condition
    end;
    Document.ClamList.Unlock;
    { Check if we still exist }
    if (Terminated) then
      break;
    { Check if we need to update }
    if (Funcs <> OldFuncs) or (Vars <> OldVars) then begin
      { Update Keywords in CS }
      with frmMain.sciEditor.LanguageManager.LanguageList.Find(frmMain.sciEditor.LanguageManager.SelectedLanguage).Keywords do begin
        BeginUpdate;
        TStringList(Items[1].Keywords).Text := Funcs;
        TStringList(Items[3].Keywords).Text := Vars;
        EndUpdate;
      end;
      { Redraw entire document }
      frmMain.sciEditor.Colourise(0, frmMain.sciEditor.GetTextLen);
      { Set Old-variables }
      OldVars := Vars;
      OldFuncs := Funcs;
      NeedUpdate := False;
    end;
    { Leave CS again }
    LeaveCriticalSection(CS_KeywordUpdater);
  until (Terminated);
  Free;
end;

initialization

InitializeCriticalSection(CS_CEUpdater);
InitializeCriticalSection(CS_DocParser);
InitializeCriticalSection(CS_KeywordUpdater);

finalization

DeleteCriticalSection(CS_CEUpdater);
DeleteCriticalSection(CS_DocParser);
DeleteCriticalSection(CS_KeywordUpdater);

end.

