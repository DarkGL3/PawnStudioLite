unit UnitFunctions;

interface

uses SysUtils, Classes, Windows, Forms, ComCtrls, ExtCtrls, StdCtrls,
     UnitDocuments, JvRichEdit, IniFiles, SpTBXItem, TBX, PngImageList,
     Controls, SciLexer, ScintillaLanguageManager, IdFTP, IdFTPList,
     ShellApi, Registry, WinSock, uMysqlVio, uMysqlCT, uMysqlClient,
     UnitConfigManager, StrUtils, UnitCodeProcessor;

type
  TBusyState = set of(bsChangingDoc, bsSaving, bsLoading, bsClosing, bsCompiling);

  TQuickCreateInfo = class(TObject)
    Highlighter: String;
    TabName: String;
    FileName: String;
    Category: String;
    ImageIndex: Integer;
    StartLine: Integer;
    MarkStartLine: Boolean;
  end;

procedure LoadMenuItems(const Category, ConfigF: String);
function GetFileContent(const FileName: String): String;
procedure AddDebugLog(const Section, Info: String);
function MatchStrings(const Source, pattern: string): Boolean;
function Between(const eText, eFirst, eSecond: String): String;
function GetBinaryExtension(const SrcExt: String): String;
function PrepareTabTitle(TabIn: String): String;
function QuickIniRead(const FileName, Section, Key, Default: String): String;
function GetFileLastModified(const FileName: String): TDateTime;

function DoOpenFile(const eFileName: String; const Activate: Boolean): Boolean;
function DoSave(const Document: TDocument): Boolean;
function DoSaveAs(const Document: TDocument): Boolean;

procedure SetHighlighter(const Document: TDocument; const Highlighter: String);
function FindStyleIdx(const Style: String; const LangItem: TSciLangItem): Integer;
function IsInString(Pos: Integer = -1): Boolean;
function IsInComment(const IgnoreLineComment: Boolean; Pos: Integer = -1): Boolean;
function GetEscapeChr(const Highlighter: THighlighterType): Char;

function ShowSearch: Boolean;
function ShowReplace: Boolean;

function GetSelStart(const Text: String; const Line: Integer): Integer;
function FastGetLine(const Text: String; const Line: Integer): String;
function AdjustTabs(const StrIn, Pattern: String; const VScroll: Boolean): String;
function PosBack(const eSubStr, eStr: String): Integer;

function PathFromTreeNode(TreeNode: TTreeNode): String;
function GoToFTPDir(TreeItem: TTreeNode; Client: TIdFTP; const Path: String; const ImgCol, ImgExp: Integer): Boolean;
function InitTreeView(TreeView: TTreeView; Client: TIdFTP; const ImgCol, ImgExp: Integer): TTreeNode;

procedure UpdateCaretPos;
function OptionalPort(const CurrPort, DefaultPort: Integer): String;
function GetAssociatedIcon(const AExtension: string; ASmall: Boolean): HIcon;

function GetIpAddressByName(Lines: TStrings; const AHost: String): Boolean;
procedure DoSQLQuery(const Query: String);

function GetCurrCompiler: TCompiler;
function GetCompiler(const Name: String): TCompiler;
procedure ParseCommandLine(const Command: String; var Directory, Filename, Parameters: String);
procedure RemoveModificationMarkers;
function TN(const Condition: Boolean; const R1, R2: Variant): Variant;
procedure PrepareComment(const CommentIn: String; Comment: TComment);
function WrapComment(const Comment: String; const MaxLen: Integer): String;

var BusyState: TBusyState;
    ApplicationPath: String;

var ToolbarHeight: array[0..5] of Integer = (154, 154, 300, 200, 200, 250);
    LastSQLQuery: String;

implementation

uses UnitfrmMain, UnitExtensionManager, UnitfrmSearchFor, UnitSearchUtils,
  UnitfrmSettings;

procedure LoadMenuItems(const Category, ConfigF: String);
var Config: TIniFile;
    Entries: TStringList;
    i, idx: integer;
    LItem: TSpTBXLabelItem;
    IItem: TSpTBXItem;
    Image: TPngImageCollectionItem;
    Info: TQuickCreateInfo;
begin
  // initialize stuff
  Config := TIniFile.Create(ConfigF);
  Entries := TStringList.Create;
  Config.ReadSections(Entries);
  // get menu items
  for i := Entries.Count -1 downto 0 do begin
    if not Config.ReadBool(Entries[i], 'AddMenu', False) then
      Entries.Delete(i);
  end;
  // add to menu if there are any "good" items
  if (Entries.Count > 0) then begin
    with frmMain do begin
      // add separator if there's more than one item
      if (mnuNew.Count > 1) then
        mnuNew.Insert(mnuNew.Count -1, TSpTBXSeparatorItem.Create(mnuNew));
      // then our label
      LItem := TSpTBXLabelItem.Create(mnuNew);
      LItem.FontSettings.Bold := tsTrue;
      LItem.Caption := Category;
      LItem.CustomHeight := 15;
      mnuNew.Insert(mnuNew.Count -1, LItem);
      // and finally our items
      for i := 0 to Entries.Count -1 do begin
        IItem := TSpTBXItem.Create(mnuNew);
        { get title }
        if (Config.ValueExists(Entries[i], 'MenuTitle')) then
          IItem.Caption := Config.ReadString(Entries[i], 'MenuTitle', '(Untitled)')
        else
          IItem.Caption := Config.ReadString(Entries[i], 'Title', '(Untitled)');
        { check if icon has custom image }
        if (Config.ValueExists(Entries[i], 'MenuIcon')) then
          idx := -1
        else
          idx := GetImageIndex(Category, Entries[i]);
        { then, if the icon already exists -> set it then }
        if (idx = -1) then begin
          ilMain.PngImages.BeginUpdate;
          Image := ilMain.PngImages.Add;
          try
            if (Config.ValueExists(Entries[i], 'MenuIcon')) then
              Image.PngImage.LoadFromFile(ApplicationPath + 'Templates\Pictures\' + Config.ReadString(Entries[i], 'MenuIcon', ''))
            else
              Image.PngImage.LoadFromFile(ApplicationPath + 'Templates\Pictures\' + Config.ReadString(Entries[i], 'Icon', ''));
          except
            on E: Exception do
              AddDebugLog('LoadMenuItems', 'Error loading menu items for the "New..."-menu!' + #13 + E.Message);
          end;
          ilMain.PngImages.EndUpdate;
          IItem.ImageIndex := Image.Index;
        end
        else begin
          IItem.Images := ilTabs;
          IItem.ImageIndex := idx;
        end;
        { well, I guess we still need to add an image for the tab }
        if (idx = -1) then begin
          ilTabs.PngImages.BeginUpdate;
          Image := ilTabs.PngImages.Add;
          try
            Image.PngImage.LoadFromFile(ApplicationPath + 'Templates\Pictures\' + Config.ReadString(Entries[i], 'Icon', ''));
          except
            on E: Exception do
              AddDebugLog('LoadMenuItems', 'Error loading tab icons for the "New..."-menu!' + #13 + E.Message);
          end;
          ilTabs.PngImages.EndUpdate;
          idx := Image.Index;
        end;
        { we still need to save the filename, tab name and the category somewhere }
        Info := TQuickCreateInfo.Create;
        Info.ImageIndex := idx;
        Info.Highlighter := Config.ReadString(Entries[i], 'Highlighter', 'null');
        Info.FileName := ExtractFilePath(ConfigF) + Config.ReadString(Entries[i], 'Source', '');
        Info.TabName := Config.ReadString(Entries[i], 'Tab', '');
        Info.Category := Category;
        Info.StartLine := Config.ReadInteger(Entries[i], 'StartLine', -1);
        Info.MarkStartLine := Config.ReadBool(Entries[i], 'MarkStartLine', False);
        IItem.Tag := Integer(Pointer(Info));
        { set click handler and add item to the menu }
        IItem.OnClick := frmMain.mnuQuickCreate;
        mnuNew.Insert(mnuNew.Count -1, IItem);
      end;
    end;
  end;
  // free objects
  Entries.Free;
  Config.Free;
end;

function GetFileContent(const FileName: String): String;
var LoadStream: TFileStream;
    Size: Integer;
begin
  LoadStream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    Size := LoadStream.Size - LoadStream.Position;
    SetString(Result, nil, Size);
    LoadStream.Read(Pointer(Result)^, Size);
  finally
    LoadStream.Free;
  end;
end;

procedure AddDebugLog(const Section, Info: String);
begin
  //Buffer := '[' + TimeToStr(Now) + '] (' + Section + ') ' + StringReplace(Info, #13, #13 + '           ', [rfReplaceAll]);
  // TODO: Add info to a textbox in the property dialog (or so)
  //application.MessageBox(PChar(Buffer), '');
end;

function MatchStrings(const Source, pattern: string): Boolean;
var
  pSource: array [0..255] of Char;
  pPattern: array [0..255] of Char;

  function MatchPattern(element, pattern: PChar): Boolean;

    function IsPatternWild(pattern: PChar): Boolean;
    begin
      Result := StrScan(pattern, '*') <> nil;
      if not Result then Result := StrScan(pattern, '?') <> nil;
    end;
  begin
    if 0 = StrComp(pattern, '*') then
      Result := True
    else if (element^ = Chr(0)) and (pattern^ <> Chr(0)) then
      Result := False
    else if element^ = Chr(0) then
      Result := True
    else 
    begin
      case pattern^ of
        '*': if MatchPattern(element, @pattern[1]) then
            Result := True
          else
            Result := MatchPattern(@element[1], pattern);
          '?': Result := MatchPattern(@element[1], @pattern[1]);
        else
          if element^ = pattern^ then
            Result := MatchPattern(@element[1], @pattern[1])
          else
            Result := False;
      end;
    end;
  end;
begin
  StrPCopy(pSource, Source);
  StrPCopy(pPattern, pattern);
  Result := MatchPattern(pSource, pPattern);
end;

function Between(const eText, eFirst, eSecond: String): String;
var pTmp: Integer;
begin
  if (Pos(eFirst, eText) = 0) or (Pos(eSecond, eText) = 0) then
    Result := ''
  else begin
    pTmp := Pos(eFirst, eText)+1;
    Result := Copy(eText, pTmp, PosEx(eSecond, eText, pTmp) - pTmp);
  end;
end;

function GetBinaryExtension(const SrcExt: String): String;
begin
  if (LowerCase(SrcExt) = '.sma') then
    Result := '.amxx'
  else if (LowerCase(SrcExt) = '.sp') then
    Result := '.smx'
  else if (LowerCase(SrcExt) = '.c') or (LowerCase(SrcExt) = '.cpp') then
    Result := '.exe'
  else if (LowerCase(SrcExt) = '.p') or (LowerCase(SrcExt) = '.pwn') then
    Result := '.amx' 
  else
    Result := SrcExt;
end;

function PrepareTabTitle(TabIn: String): String;
var i, k: integer;
    StartPos: Integer;
    NumStr, NS2: String;
begin
  TabIn := Trim(TabIn);
  if (Length(TabIn) = 0) then
    Result := TabIn
  else begin
    // Okay, what do we have...
    // %*NUM*% - Number of opened tabs

    // Get values
    StartPos := -1;
    for i := 1 to Length(TabIn) do begin
      if (TabIn[i] = '%') then begin
        if (StartPos = -1) then
          StartPos := i
        else begin
          NumStr := Copy(TabIn, StartPos, i-StartPos+1);
          StartPos := -1;
          if (Pos('num', NumStr) <> 0) then // Pos is case-insensitive
            break;
        end;
      end;
    end;
    // if num value exists, go and replace it
    if (StartPos = -1) then begin
      // Check if tab with no num-value already exists
      Result := StringReplace(TabIn, NumStr, '', []);
      for i := 0 to frmMain.tbxTabs.Items.Count -1 do begin
        if (frmMain.tbxTabs.Items[i].Caption = Result) then begin
          StartPos := 0;
          break;
        end;
      end;
      if (StartPos = -1) then
        exit;
      // Otherwise.. Well, find out what number we need to use and replace it.
      k := 0;
      repeat
        StartPos := -1;
        Inc(k, 1);
        NS2 := StringReplace(NumStr, 'num', IntToStr(k), [rfIgnoreCase]);
        Result := StringReplace(TabIn, NumStr, Copy(NS2, 2, Length(NS2) -2), []);
        { check tabs }
        for i := 0 to frmMain.tbxTabs.Items.Count -1 do begin
          if (frmMain.tbxTabs.Items[i].Caption = Result) then begin
            StartPos := 0;
            break;
          end;
        end;
      until (StartPos = -1);
    end;
  end;
end;

function QuickIniRead(const FileName, Section, Key, Default: String): String;
var Config: TIniFile;
begin
  Config := TIniFile.Create(FileName);
  Result := Config.ReadString(Section, Key, Default);
  Config.Free;
end;

function GetFileLastModified(const FileName: String): TDateTime;
var FindData: TWin32FindData;
    FindHandle: THandle;

    LocalTime: TFileTime;
    DosTime: DWORD;
begin
  Result := 0;
  
  FindHandle := FindFirstFile(PChar(FileName), FindData) ;
  if (FindHandle <> INVALID_HANDLE_VALUE) then begin
    if ((FindData.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY) = 0) then begin
      FileTimeToLocalFileTime(FindData.ftLastWriteTime, LocalTime);
      FileTimeToDosDateTime(LocalTime, LongRec(DosTime).Hi, LongRec(DosTime).Lo);
      Result := FileDateToDateTime(DosTime);
    end;
    Windows.FindClose(FindHandle);
  end;
end;

// File Utils below

function DoOpenFile(const eFileName: String; const Activate: Boolean): Boolean;
var FilterList: TStringList;
    i, idx: integer;
    Extension, Line: String;
    ExtObj: TExtension;
    TasksIni: TIniFile;
    Tmp: TDocument;
begin
  Result := True;
  Include(BusyState, bsLoading);
  // show file dialog
  if (eFileName = '') then begin
    { set filter type }
    if (ActiveDoc <> nil) then begin
      // Find out what filter we need
      idx := -1;
      Extension := LowerCase(ActiveDoc.DefaultExtension);
      FilterList := TStringList.Create;
      FilterList.Text := StringReplace(frmMain.odOpen.Filter, '|', #13, [rfReplaceAll]);
      for i := 0 to FilterList.Count -1 do begin
        Line := LowerCase(FilterList[i]);
        if (Copy(Line, 1, 1) <> '*') then begin
          if (Pos(Extension, Line) <> 0) then begin
            idx := (i div 2) +1;
            break;
          end;
        end;
      end;
      // Set filter index
      if (idx = -1) then
        frmMain.odOpen.FilterIndex := 12
      else
        frmMain.odOpen.FilterIndex := idx;
    end
    else
      frmMain.odOpen.FilterIndex := 1;
    { show dialog and exit if user canceled }
    if (frmMain.odOpen.Execute) then begin
      // try to open every file
      for i := 0 to frmMain.odOpen.Files.Count -1 do begin
        if (GetDocumentByFN(frmMain.odOpen.Files[i]) = nil) and (DoOpenFile(frmMain.odOpen.Files[i], False)) then
          frmMain.odOpen.Files.Objects[i] := GetDocumentByFN(frmMain.odOpen.Files[i])
        else
          frmMain.odOpen.Files.Objects[i] := nil;
      end;
      // remove successfully opened files
      Tmp := nil;
      for i := frmMain.odOpen.Files.Count -1 downto 0 do begin
        if (frmMain.odOpen.Files.Objects[i] <> nil) then begin
          Tmp := TDocument(frmMain.odOpen.Files.Objects[i]);
          frmMain.odOpen.Files.Delete(i);
        end;
      end;
      // activate last file
      ActivateDocument(Tmp);
      // return error if file is already opened
      if (frmMain.odOpen.Files.Count <> 0) then
        MessageBox(frmMain.Handle, PChar('The following files couldn''t be opened because they''re already loaded:' + #13#10 + #13#10 + Trim(frmMain.odOpen.Files.Text)), 'Warning', MB_ICONWARNING);
    end
    else
      Result := False;
  end
  // open file
  else begin
    try
      Line := GetFileContent(eFileName);
      ExtObj := GetExtension(ExtractFileExt(eFileName), Line);
      if (Assigned(ExtObj)) then begin
        with NewDocument(ExtObj.Highlighter, Line, ExtractFileName(eFileName), ExtObj.Extension, -1, ExtObj.IconIndex, False, Activate) do begin
          FileName := eFileName;
          SavedText := Line;

          TasksIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'configs\tasks.ini');
          if (TasksIni.SectionExists(eFileName)) then begin
            i := 0;
            while (TasksIni.ValueExists(eFileName, 'Task' + IntToStr(i))) do begin
              with TTask(Tasks.Add) do begin
                Completeness := TasksIni.ReadString(eFilename, 'Completeness' + IntToStr(i), '');
                Task := TasksIni.ReadString(eFilename, 'Task' + IntToStr(i), '');
                Notes := TasksIni.ReadString(eFilename, 'Notes' + IntToStr(i), '');
                TargetDate := TasksIni.ReadString(eFilename, 'TargetDate' + IntToStr(i), '');
              end;
              Inc(i, 1);
            end;
          end;
          TasksIni.Free;

          frmMain.lvTasks.Clear;
          if (Tasks.Count <> 0) then begin
            for i := 0 to Tasks.Count -1 do begin
              with TTask(Tasks.Items[i]) do begin
                with frmMain.lvTasks.Items.Add do begin
                  Caption := Completeness;
                  SubItems.Add(Task);
                  SubItems.Add(Notes);
                  SubItems.Add(TargetDate);
                end;
              end;
            end;
          end;
        end;
      end
      else begin
        with NewDocument('null', Line, ExtractFileName(eFileName), ExtractFileExt(eFileName), -1, Textfile.IconIndex, False, Activate) do begin
          FileName := eFileName;
          SavedText := Line;
          
          TasksIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'configs\tasks.ini');
          if (TasksIni.SectionExists(eFileName)) then begin
            i := 0;
            while (TasksIni.ValueExists(eFileName, 'Task' + IntToStr(i))) do begin
              with TTask(Tasks.Add) do begin
                Completeness := TasksIni.ReadString(eFilename, 'Completeness' + IntToStr(i), '');
                Task := TasksIni.ReadString(eFilename, 'Task' + IntToStr(i), '');
                Notes := TasksIni.ReadString(eFilename, 'Notes' + IntToStr(i), '');
                TargetDate := TasksIni.ReadString(eFilename, 'TargetDate' + IntToStr(i), '');
              end;
              Inc(i, 1);
            end;
          end;
          TasksIni.Free;
          
          frmMain.lvTasks.Clear;
          if (Tasks.Count <> 0) then begin
            for i := 0 to Tasks.Count -1 do begin
              with TTask(Tasks.Items[i]) do begin
                with frmMain.lvTasks.Items.Add do begin
                  Caption := Completeness;
                  SubItems.Add(Task);
                  SubItems.Add(Notes);
                  SubItems.Add(TargetDate);
                end;
              end;
            end;
          end;
        end;
      end;
    except
      on E: Exception do begin
        Application.MessageBox(PChar('Couldn''t open ' + ExtractFileName(eFileName) + '! Make sure you can access this file and try again.'), 'Warning', MB_ICONWARNING);
        AddDebugLog('DoOpenFile', 'Failed to open file!' + #13 + E.Message);
        Result := False;
      end;
    end;
  end;
  Exclude(BusyState, bsLoading);
end;

function DoSave(const Document: TDocument): Boolean;
var FileStream: TFileStream;
    Buffer: String;
    i: integer;
    TasksIni: TIniFile;
begin
  Result := True;
  if (Document.Modified) then begin
    Include(BusyState, bsSaving);
    // TODO (low priority): Implement diff check here (for file history) [dropped, *might* be added later]
    try
      // save document
      if (Document = ActiveDoc) then begin
        // get text
        Buffer := frmMain.sciEditor.Lines.Text;
        // save
        try
          FileStream := TFileStream.Create(Document.Filename, fmCreate or fmShareExclusive);
          FileStream.WriteBuffer(Pointer(Buffer)^, Length(Buffer));
        finally
          FreeAndNil(FileStream);
        end;
        // reset values
        Document.SavedText := Buffer;
        Document.Text := Buffer;
        Document.Modified := False;
        frmMain.sciEditor.SetSavePoint;
        // save tasks
        TasksIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'configs\tasks.ini');
        if (TasksIni.SectionExists(Document.Filename)) then begin
          i := frmMain.lvTasks.Items.Count;
          while (TasksIni.ValueExists(Document.Filename, 'Task' + IntToStr(i))) do begin
            TasksIni.DeleteKey(Document.Filename, 'Completeness' + IntToStr(i));
            TasksIni.DeleteKey(Document.Filename, 'Task' + IntToStr(i));
            TasksIni.DeleteKey(Document.Filename, 'Notes' + IntToStr(i));
            TasksIni.DeleteKey(Document.Filename, 'TargetDate' + IntToStr(i));
          end;
        end;
        
        for i := 0 to frmMain.lvTasks.Items.Count -1 do begin
          with frmMain.lvTasks.Items[i] do begin
            TasksIni.WriteString(Document.Filename, 'Completeness' + IntToStr(i), Caption);
            TasksIni.WriteString(Document.Filename, 'Task' + IntToStr(i), SubItems[0]);
            TasksIni.WriteString(Document.Filename, 'Notes' + IntToStr(i), SubItems[1]);
            TasksIni.WriteString(Document.Filename, 'TargetDate' + IntToStr(i), SubItems[2]);
          end;
        end;
      end
      else begin
        // save
        try
          FileStream := TFileStream.Create(Document.Filename, fmCreate or fmShareExclusive);
          FileStream.WriteBuffer(Pointer(Document.Text)^, Length(Document.Text));
        finally
          FreeAndNil(FileStream);
        end;
        // set values
        Document.SavedText := Document.Text;
        Document.Modified := False;
        // save tasks
        TasksIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'configs\tasks.ini');
        if (TasksIni.SectionExists(Document.Filename)) then begin
          i := Document.Tasks.Count;
          while (TasksIni.ValueExists(Document.Filename, 'Task' + IntToStr(i))) do begin
            TasksIni.DeleteKey(Document.Filename, 'Completeness' + IntToStr(i));
            TasksIni.DeleteKey(Document.Filename, 'Task' + IntToStr(i));
            TasksIni.DeleteKey(Document.Filename, 'Notes' + IntToStr(i));
            TasksIni.DeleteKey(Document.Filename, 'TargetDate' + IntToStr(i));
          end;
        end;
        
        for i := 0 to Document.Tasks.Count -1 do begin
          with TTask(Document.Tasks.Items[i]) do begin
            TasksIni.WriteString(Document.Filename, 'Completeness' + IntToStr(i), Completeness);
            TasksIni.WriteString(Document.Filename, 'Task' + IntToStr(i), Task);
            TasksIni.WriteString(Document.Filename, 'Notes' + IntToStr(i), Notes);
            TasksIni.WriteString(Document.Filename, 'TargetDate' + IntToStr(i), TargetDate);
          end;
        end;
      end;
      // remove modification markers
      if (Configuration.EnableModMarkers) then
        RemoveModificationMarkers;
    except
      on E: Exception do begin
        AddDebugLog('DoSave', 'Error saving file: ' + E.Message);
        Application.MessageBox('Warning: Couldn''t save file. Please make sure you have permission to your file.', 'Warning', MB_ICONWARNING);
        Result := False;
      end;
    end;
    Exclude(BusyState, bsSaving);
  end;
end;

function DoSaveAs(const Document: TDocument): Boolean;
var FilterList: TStringList;
    i, idx: integer;
    Extension, Line: String;
    FileName, Temp: String;
begin
  Result := True;
  Include(BusyState, bsSaving);
  // Find out what filter we need
  idx := -1;
  Extension := LowerCase(Document.DefaultExtension);
  FilterList := TStringList.Create;
  FilterList.Text := StringReplace(frmMain.sdSave.Filter, '|', #13, [rfReplaceAll]);
  for i := 0 to FilterList.Count -1 do begin
    Line := LowerCase(FilterList[i]);
    if (Copy(Line, 1, 1) <> '*') then begin
      if (Pos(Extension, Line) <> 0) then begin
        idx := (i div 2) +1;
        break;
      end;
    end;
  end;
  // Set filter index+filename
  if (idx = -1) then
    frmMain.sdSave.FilterIndex := 12
  else
    frmMain.sdSave.FilterIndex := idx;
  frmMain.sdSave.FileName := ExtractFilePath(frmMain.sdSave.FileName) + Document.Title;
  // Show it to user
  if (frmMain.sdSave.Execute) then begin
    FileName := frmMain.sdSave.FileName;
    // add extension
    if (ExtractFileExt(FileName) = '') and (frmMain.sdSave.FilterIndex <> 12) then begin
      if (frmMain.sdSave.FilterIndex = idx) then
        FileName := FileName + Document.DefaultExtension // don't use extension here, might contain altered extension
      else begin
        Extension := FilterList[(frmMain.sdSave.FilterIndex -1) * 2];
        if (Pos(';', Extension) = 0) then
          FileName := FileName + Between(Extension, '*', ')')
        else
          FileName := FileName + Between(Extension, '*', ';');
      end;
    end;
    // check if this file isn't already opened
    Temp := LowerCase(Trim(FileName));
    for i := 0 to DocumentCount -1 do begin
      if (AnsiSameText(GetDocument(i).Filename, Temp)) then begin
        Application.MessageBox(PChar('Sorry, this file is already opened as ' + GetDocument(i).Title + '. Please close it first or select another file.'), 'Error', MB_ICONERROR);
        DoSaveAs(Document);
        exit;
      end;
    end;
    // save file
    Document.Modified := True; // for DoSave call
    Document.Filename := FileName;
    Document.Title := ExtractFileName(FileName);
    DoSave(Document);
  end
  else
    Result := False;
  Exclude(BusyState, bsSaving);
end;

procedure SetHighlighter(const Document: TDocument; const Highlighter: String);
var i: integer;
begin
  frmMain.sciEditor.LanguageManager.SelectedLanguage := Highlighter;
  Document.Highlighter := Highlighter;
  // apply if document == activedoc
  if (ActiveDoc <> Document) then exit;
  // uncheck all entries
  for i := 0 to frmMain.mnuHighlighter.Count -1 do
    frmMain.mnuHighlighter.Items[i].Checked := False;
  for i := 0 to frmMain.mnuPawn.Count -1 do
    frmMain.mnuPawn.Items[i].Checked := False;
  // find out what highlighter item needs to be checked
  if (Highlighter = 'AMXModX') then
    frmMain.mnuAMXModX.Checked := True
  else if (Highlighter = 'SourceMod') then
    frmMain.mnuSourceMod.Checked := True
  else if (Highlighter = 'Pawn') then
    frmMain.mnuPawnDefault.Checked := True
  else if (Highlighter = 'Batch') then
    frmMain.mnuBatch.Checked := True
  else if (Highlighter = 'C/C++') then
    frmMain.mnuCPP.Checked := True
  else if (Highlighter = 'CSS') then
    frmMain.mnuCSS.Checked := True
  else if (Highlighter = 'EmailMessage') then
    frmMain.mnuEMail.Checked := True
  else if (Highlighter = 'HTML') then
    frmMain.mnuHTML.Checked := True
  else if (Highlighter = 'MSSQL') then
    frmMain.mnuMSSQL.Checked := True
  else if (Highlighter = 'Makefile') then
    frmMain.mnuMAkefile.Checked := True
  else if (Highlighter = 'PHP') then
    frmMain.mnuPHP.Checked := True
  else if (Highlighter = 'SQL') then
    frmMain.mnuSQL.Checked := True
  else if (Highlighter = 'XML') then
    frmMain.mnuXML.Checked := True
  else
    frmMain.mnuNone.Checked := True;
end;

function FindStyleIdx(const Style: String; const LangItem: TSciLangItem): Integer;
var i: integer;
begin
  Result := -1;
  for i := 0 to LangItem.Styles.Count -1 do begin
    if (AnsiSameText(LangItem.Styles[i].Name, Style)) then begin
      Result := i;
      break;
    end;
  end;
end;

function IsInString(Pos: Integer = -1): Boolean;
var Highlighter: String;
    StyleIdx: Integer;
begin
  Result := False;
  Highlighter := ActiveDoc.Highlighter;
  if (Highlighter = 'AMXModX') or (Highlighter = 'SourceMod') or (Highlighter = 'Pawn') or (Highlighter = 'C/C++') then begin
    if (Pos = -1) then
      Pos := frmMain.sciEditor.SelStart;
    StyleIdx := frmMain.sciEditor.GetStyleAt(Pos);
    Result := (StyleIdx = 6) or (StyleIdx = 7) or (StyleIdx = 12);
    // example: register_clcmd|"foo" (| = cursor), would without this return True
    if (Result) and (frmMain.sciEditor.Lines.Text[Pos+1] = '"') then begin
      StyleIdx := frmMain.sciEditor.GetStyleAt(Pos-1);
      Result := (StyleIdx = 6) or (StyleIdx = 7) or (StyleIdx = 12);
    end; 
  end;
end;

function IsInComment(const IgnoreLineComment: Boolean; Pos: Integer): Boolean;
var Highlighter: String;
    StyleIdx: Integer;
begin
  Result := False;
  Highlighter := ActiveDoc.Highlighter;
  if (Highlighter = 'AMXModX') or (Highlighter = 'SourceMod') or (Highlighter = 'Pawn') or (Highlighter = 'C/C++') then begin
    if (Pos = -1) then
      Pos := frmMain.sciEditor.SelStart;
    StyleIdx := frmMain.sciEditor.GetStyleAt(Pos);
    Result := (StyleIdx = 1) or ((not IgnoreLineComment) and (StyleIdx = 2)) or (StyleIdx = 3);
  end;
end;

function GetEscapeChr(const Highlighter: THighlighterType): Char;
begin
  if (Highlighter = htAMXX) then 
    Result := '^'
  else
    Result := '\';
end;

function ShowSearch: Boolean;
begin
  with frmSearchFor do begin
    Caption := 'Search For...';
    Height := SEARCH_HEIGHT;
    pnlSettings.Height := PNL_SEARCH_HEIGHT;
    pnlSettings.Top := PNL_SEARCH_TOP;
    gbReplaceOptions.Visible := False;
    cmdOk.Caption := 'Find it';
    cmdOk.ImageIndex := 0;

    lblReplaceWith.Visible := False;
    cboReplaceWith.Visible := False;

    Result := (ShowModal = mrOk);
    if (Result) then begin
      frmMain.mnuSearchNext.Enabled := True;
      frmMain.mnuSearchPrev.Enabled := True;
      frmMain.mnuFindNext.Enabled := True;
      DoSearchNormal(chkSearchFromCaret.Checked, chkMatchWholeWord.Checked, chkCaseSensitive.Checked, chkRegEx.Checked, optDown.Checked, cboExpression.Text);
    end;
  end;
end;

function ShowReplace: Boolean;
begin
  with frmSearchFor do begin
    Caption := 'Replace...';
    Height := REPLACE_HEIGHT;
    pnlSettings.Top := PNL_REPLACE_TOP;
    pnlSettings.Height := PNL_REPLACE_HEIGHT;
    cmdOk.Caption := 'Replace it';
    cmdOk.ImageIndex := 1;
    gbReplaceOptions.Visible := True;

    lblReplaceWith.Visible := True;
    cboReplaceWith.Visible := True;

    Result := (ShowModal = mrOk);
    if (Result) then begin
      if (optConfirm.Checked) then
        DoReplaceNormal(chkSearchFromCaret.Checked, chkMatchWholeWord.Checked, chkCaseSensitive.Checked, chkRegEx.Checked, optDown.Checked, cboExpression.Text, cboReplaceWith.Text, REPLACE_CONFIRM)
      else if (optReplace.Checked) then
        DoReplaceNormal(chkSearchFromCaret.Checked, chkMatchWholeWord.Checked, chkCaseSensitive.Checked, chkRegEx.Checked, optDown.Checked, cboExpression.Text, cboReplaceWith.Text, REPLACE_ONCE)
      else
        DoReplaceNormal(chkSearchFromCaret.Checked, chkMatchWholeWord.Checked, chkCaseSensitive.Checked, chkRegEx.Checked, optDown.Checked, cboExpression.Text, cboReplaceWith.Text, REPLACE_ALL);
    end;
  end;
end;

function GetSelStart(const Text: String; const Line: Integer): Integer;
var i, k: integer;
    Chr: Char;
begin
  Result := 0;
  if (Length(Text) = 0) or (Line < 0) then
    exit;

  k := 1;
  i := 1;
  repeat
    // one char, increase result
    Inc(Result, 1);
    Chr := Text[i];
    // if we're in line Line, check if the character is a tab or a space and break if this is not the case
    if (k = Line) then begin
      if (not (Chr = #9) or (Chr = #32)) then begin
        Result := i-1;
        break;
      end;
    end;
    // count line feeds
    if (Chr = #10) then
      Inc(k, 1);
    // increase i again
    Inc(i, 1);
  until (i > Length(Text));
end;

function FastGetLine(const Text: String; const Line: Integer): String;
var i, LFs: Integer;
    StartPos: Integer;
begin
  Result := '';
  if (Length(Text) = 0) then exit;

  StartPos := -1;
  LFs := 0;
  for i := 1 to Length(Text) do begin
    // if this is no LF, set startpos
    if (StartPos = -1) and (LFs = Line) and (Text[i] <> #10) then
      StartPos := i;
    // increase LFs by 1 if a line feed has been found
    if (Text[i] = #10) then begin
      // count LFs
      if (StartPos = -1) then begin
        if (LFs > Line) then
          break;
        Inc(LFs, 1);
      end
      // or break here and set result
      else begin
        Result := Copy(Text, StartPos, i-StartPos);
        break;
      end;
    end;
  end;
end;

function AdjustTabs(const StrIn, Pattern: String; const VScroll: Boolean): String;
var i, SpaceWidth, len: integer;
    Spaces, Tmp: String;
begin
  len := Length(Pattern);
  // get first line (CR okay here)
  if (Pos(#13, StrIn) <> 0) then
    Result := Copy(StrIn, 1, Pos(#13, StrIn)-1)
  else
    Result := StrIn;
  // check if we have a good string
  if (Pos(Pattern, Result) = 0) or (Length(Result) = 0) then begin
    Result := StrIn;
    exit;
  end;
  // count redundant tabs (for default pawn compiler)
  SpaceWidth := 0;
  i := 1;
  repeat
    if (Copy(Result, i, len) = Pattern) then begin
      Inc(SpaceWidth, 1);
      Inc(i, len);
    end
    else
      Inc(i, 1);
  until (i > Length(Result) -len);
  // and remove them
  if (SpaceWidth > 1) then begin
    i := Length(Result) -len;
    while (i > 1) do begin
      if (Copy(Result, i, len) = Pattern) then begin
        Move(Result[i+len], Result[i], (Length(Result) - i -(len -1)) * SizeOf(Char));
        SetLength(Result, Length(Result) -len);
        Dec(i, len);
        Dec(SpaceWidth, 1);
        if (SpaceWidth = 1) then
          break;
      end
      else
        Dec(i, 1);
    end;
  end;
  // replace tabs until everything fits
  if (VScroll) then
    SpaceWidth := frmMain.lstOutput.Canvas.TextWidth(#32) *4 +16
  else
    SpaceWidth := frmMain.lstOutput.Canvas.TextWidth(#32) *4;
  Spaces := '';
  repeat
    Spaces := Spaces + #32;
    Tmp := StringReplace(Result, Pattern, Spaces, []);
  until (frmMain.lstOutput.Canvas.TextWidth(Tmp) > frmMain.lstOutput.Width - SpaceWidth);
  // okay, return result
  if (Pos(#13, StrIn) <> 0) then
    Result := Tmp + Copy(StrIn, Pos(#13, StrIn)+1, Length(StrIn))
  else
    Result := Tmp;
end;

function PosBack(const eSubStr, eStr: String): Integer;
begin
  Result := 0;
  if Pos(eSubStr, eStr) <> 0 then begin
    while Pos(eSubStr, Copy(eStr, Result +1, Length(eStr))) <> 0 do
      Inc(Result, 1);
  end;
end;

function PathFromTreeNode(TreeNode: TTreeNode): String;
begin
  if (Assigned(TreeNode)) then begin
    Result := '';
    repeat
      Result := TreeNode.Text + '/' + Result;
      TreeNode := TreeNode.Parent;
    until (not Assigned(TreeNode));
    Result := '/' + Result;
  end
  else
    Result := '/';
end;

function InitTreeView(TreeView: TTreeView; Client: TIdFTP; const ImgCol, ImgExp: Integer): TTreeNode;
var i: integer;
    List: TStringList;
    TempItem: TTreeNode;
    Item: TIdFTPListItem;
    Path: String;
begin
  // init stuff
  Result := nil;
  List := TStringList.Create;
  TreeView.Items.BeginUpdate;
  TreeView.Items.Clear;
  // save current dir
  Path := Client.RetrieveCurrentDir;
  if (Copy(Path, Length(Path) -1, 1) <> '/') then
    Path := Path + '/';
  // read directories from root directory -> /
  try
    if (Path <> '/') then
      Client.ChangeDir('/');
    Client.List(List);
    Client.DirectoryListing.LoadList(List);
    for i := 0 to Client.DirectoryListing.Count -1 do begin
      Item := Client.DirectoryListing[i];
      if (Item.ItemType = ditDirectory) then begin
        TempItem := TreeView.Items.Add(nil, Item.FileName);
        if (Pos('/' + Item.FileName + '/', Path) = 1) then begin
          Result := TempItem;
          Result.ImageIndex := ImgExp;
          Result.SelectedIndex := ImgExp;
        end
        else begin
          TempItem.ImageIndex := ImgCol;
          TempItem.SelectedIndex := ImgCol;
          with TreeView.Items.AddChild(TempItem, 'Searching...') do begin
            ImageIndex := ImgCol;
            SelectedIndex := ImgCol;
          end;
        end;
      end;
    end;
  except
    on E: Exception do
      AddDebugLog('InitTreeView', 'Server "' + Client.Host + '" has an invalid or no root directory');
  end;
  // check out start directory
  if (Path <> '/') then begin
    Client.ChangeDir(Path);
    List.Text := Trim(StringReplace(Path, '/', #13, [rfReplaceAll]));
    for i := 0 to List.Count -1 do begin
      if (not ((i = 0) and (Assigned(Result)))) then begin
        Result := TreeView.Items.AddChild(Result, List[i]);
        Result.ImageIndex := ImgExp;
        Result.SelectedIndex := ImgExp;
      end;
    end;
    // nah, I'm lazy
    if (Assigned(Result)) then
      GoToFTPDir(Result, Client, Path, ImgCol, ImgExp);
  end;
  // finish
  List.Free;
  TreeView.Items.EndUpdate;
end;

function GoToFTPDir(TreeItem: TTreeNode; Client: TIdFTP; const Path: String; const ImgCol, ImgExp: Integer): Boolean;
var List: TStringList;
    i: integer;
    Item: TIdFTPListItem;
    TempItem: TTreeNode;
begin
  try
    Client.ChangeDir(Path);
    Result := True;
  except
    on E: Exception do begin
      Result := False;
      TreeItem.DeleteChildren;
      TreeItem.Data := frmSettings;
      AddDebugLog('GoToFTPDir', 'Failed to change directory to "' + Path + '"');
      exit;
    end;
  end;

  if (TreeItem.Data = nil) then begin
    Screen.Cursor := crHourGlass;
    // send query and parse
    List := TStringList.Create;
    Client.List(List);
    Client.DirectoryListing.LoadList(List);
    // remove first item and add new items
    TreeItem.Owner.BeginUpdate;
    TreeItem.DeleteChildren;
    for i := 0 to Client.DirectoryListing.Count -1 do begin
      Item := Client.DirectoryListing.Items[i];
      if (Item.ItemType = ditDirectory) then begin
        TempItem := TreeItem.Owner.AddChild(TreeItem, Item.FileName);
        TempItem.ImageIndex := ImgCol;
        TempItem.SelectedIndex := ImgCol;
        with TreeItem.Owner.AddChild(TempItem, 'Searching...') do begin
          ImageIndex := ImgCol;
          SelectedIndex := ImgCol;
        end;
      end;
    end;
    List.Free;
    // set item's Data to something, things have been updated and expand it
    TreeItem.Data := frmSettings;
    if (TreeItem.Count = 0) then begin
      TreeItem.ImageIndex := ImgCol;
      TreeItem.SelectedIndex := ImgCol;
    end
    else begin
      TreeItem.ImageIndex := ImgExp;
      TreeItem.SelectedIndex := ImgExp;
    end;
    TreeItem.Expand(False);
    TreeItem.Owner.EndUpdate;
    TreeItem.Owner.Owner.Selected := TreeItem;
    // reset cursor
    Screen.Cursor := crDefault;
  end
  else if (TreeItem.Count = 0) then begin
    TreeItem.ImageIndex := ImgCol;
    TreeItem.SelectedIndex := ImgCol;
  end
  else begin
    TreeItem.ImageIndex := ImgExp;
    TreeItem.SelectedIndex := ImgExp;
  end;
end;

procedure UpdateCaretPos;
begin
  frmMain.mnuCurPos.Caption := 'Ln ' + IntToStr(frmMain.sciEditor.GetCurrentLineNumber +1) + ' Ch ' + IntToStr(frmMain.sciEditor.GetCaretInLine +1);
  if (frmMain.IndentedOLSLine <> -1) and (frmMain.IndentedOLSLine <> frmMain.sciEditor.GetCurrentLineNumber) then
    frmMain.IndentedOLSLine := -1;
end;

function OptionalPort(const CurrPort, DefaultPort: Integer): String;
begin
  if (CurrPort = DefaultPort) then
    Result := ''
  else
    Result := ':' + IntToStr(CurrPort);
end;


function GetAssociatedIcon(const AExtension: string; ASmall: Boolean): HIcon;
var
  Info: TSHFileInfo;
  Flags: Cardinal;
begin
  if ASmall then
    Flags := SHGFI_ICON or SHGFI_SMALLICON or SHGFI_USEFILEATTRIBUTES
  else
    Flags := SHGFI_ICON or SHGFI_LARGEICON or SHGFI_USEFILEATTRIBUTES;

  SHGetFileInfo(PChar(AExtension), FILE_ATTRIBUTE_NORMAL, Info, SizeOf(TSHFileInfo), Flags);
  Result := Info.hIcon;
end;

function GetIpAddressByName(Lines: TStrings; const AHost: String): Boolean;
type
  PPInAddr = ^PInAddr;
var
  WSA: TWSAData;
  HostInfo: PHostEnt;
  Addr: PPInAddr;
begin
  Result:=False;
  if WSAStartUp($101, WSA) = 0 then
  begin
    try
      HostInfo:= getHostByName(PChar(AHost));
      Result:=HostInfo<>nil;
      if Result then
      begin
        Addr:=Pointer(HostInfo^.h_addr_list);
        if (Addr<>nil) AND (Addr^<>nil) then
        begin
          Repeat
            Lines.Add(StrPas(inet_ntoa(Addr^^)) ) ;
            inc(Addr);
          Until Addr^=nil;
        end;
      end;
    finally
     WSACleanup;
    end;
  end;
end;

procedure DoSQLQuery(const Query: String);
var Result: TMySQLResult;
    QueryOk: Boolean;
    i, k, size: Integer;
begin
  Result := MySQLClient.query(Query, False, QueryOk);
  if (QueryOk) then begin
    with frmMain.sgSQLResult do begin
      // resize
      if (not Assigned(Result)) then begin
        ColCount := 1;
        RowCount := 0;
        FixedRows := 0;
        Cells[0, 0] := 'No information available';
        ColWidths[0] := Canvas.TextWidth(Cells[0, 0]) +4;
      end
      else begin
        ColCount := Result.FieldsCount;
        RowCount := Result.RowsCount + 1;
        if (RowCount = 1) then
          RowCount := RowCount +1;
        FixedRows := 1;
        // set field names
        for i := 0 to Result.FieldsCount -1 do begin
          Cells[i, 0] := TMysql_FieldDef(Result.FieldDef(i)^).name;
          size := Canvas.TextWidth(Cells[i, 0]) + 4;
          if (size < 254) and (size > ColWidths[i]) then
            ColWidths[i] := size;
        end;
        // get every row
        i := 1;
        while (not Result.Eof) do begin
          for k := 0 to Result.FieldsCount -1 do begin
            Cells[k, i] := Result.FieldValue(k);
            size := Canvas.TextWidth(Cells[k, i]) + 4;
            if (size < 254) and (size > ColWidths[k]) then
              ColWidths[k] := size;
          end;

          Result.Next;
          if (not Result.Eof) then
            RowCount := RowCount +1;
          Inc(i, 1);
        end;
      end;
    end;
  end
  else
    Application.MessageBox(PChar('Query failed:' + #13#10 + #13#10 + MySQLClient.LastError), 'Pawn Studio', MB_ICONERROR);
  LastSQLQuery := Query;
end;

function GetCurrCompiler: TCompiler;
begin
  Result := GetCompiler(frmMain.sciEditor.LanguageManager.SelectedLanguage);
end;

function GetCompiler(const Name: String): TCompiler;
var i: integer;
begin
  Result := nil;

  for i := 0 to Configuration.Compilers.Count -1 do begin
    if (TCompiler(Configuration.Compilers.Items[i]).Language = Name) then begin
      Result := TCompiler(Configuration.Compilers.Items[i]);
      break;
    end;
  end;
end;

procedure ParseCommandLine(const Command: String; var Directory, Filename, Parameters: String);
var i: integer;
begin
  // reset vars
  Directory := '';
  Filename := Command;
  Parameters := '';
  // get filename (seek for ., then for next space)
  i := Pos('.', Command);
  if (i = 0) then exit;
  while (i < Length(Command)) and (Command[i] <> #32) do
    Inc(i, 1);
  Filename := Copy(Command, 1, i);
  // assign parameters
  Parameters := Copy(Command, i+1, Length(Command));
  // assign directory and filename
  Directory := ExtractFilePath(Filename);
  Filename := ExtractFileName(Filename);
end;

procedure RemoveModificationMarkers;
var Start: integer;
begin
  Start := 0;
  repeat
    Start := frmMain.sciEditor.MarkerNext(Start, 8);
    if (Start <> -1) then begin
      frmMain.sciEditor.MarkerDelete(Start, MODIFIED_MARKER);
      frmMain.sciEditor.MarkerAdd(Start, UNMODIFIED_MARKER);
    end;
  until (Start = -1);
end;

function TN(const Condition: Boolean; const R1, R2: Variant): Variant;
begin
  if (Condition) then
    Result := R1
  else
    Result := R2;
end;

procedure PrepareComment(const CommentIn: String; Comment: TComment);
function GetNextNonWS(const Pos, Length: integer): Integer;
var i: integer;
    Chr: Char;
begin
  Result := Length;
  for i := Pos to Length do begin
    Chr := CommentIn[i];
    if (Chr <> #9) and (Chr <> #10) and (Chr <> #13) and (Chr <> #32) then begin
      Result := i;
      break;
    end;
  end;
end;

var i, k, l, len, pval: integer;
    Chr, Chr2, ChrPrev: Char;
    StrList: TStringList;
    Buff: String;
    ReturnValid, IsDeprecated: Boolean;
begin
  len := Length(CommentIn);
  if (len = 0) then exit;
  i := 1;
  pval := 0;
  ReturnValid := False;
  IsDeprecated := False;
  ChrPrev := #0;
  Buff := '';
  Comment.Text := CommentIn;
  if (len <> 0) then begin
    // get rid of comment chars and parse doxygen stuff
    repeat
      Chr := CommentIn[i];
      Chr2 := CommentIn[i+1];
      if (Chr = '/') and (Chr2 = '*') then
        Inc(i, Integer(TN(Copy(CommentIn, i+2, 1) = '*', 2, 1)))
      else if (Chr = '*') and (Chr2 = '/') then
        Inc(i, 1)
      else if (Chr = #10) and (CommentIn[GetNextNonWS(i, len)] = '*') then begin
        repeat
          i := GetNextNonWS(GetNextNonWS(i, len)+1, len);
        until (i > len) or (CommentIn[i] <> '*');
        if (len > i) then begin
          if (TrimRight(Copy(CommentIn, i, 6)) = '@note') then
            Inc(i, 6);
          Chr := CommentIn[i];
          Buff := Buff + TN((((ChrPrev >= 'A') and (ChrPrev <= 'z')) or (ChrPrev = '.') or (ChrPrev = ',') or (ChrPrev = ';') or (ChrPrev = '?') or (ChrPrev = '!')) and (Chr <> '@'), #32, #10);
        end;
        Dec(i, 1);
      end
      else if (Chr <> #13) then begin
        if (Trim(Chr) <> '') then
          ChrPrev := Chr;
        Buff := Buff + Chr;
      end;
      Inc(i, 1);
    until (i >= len);
    // remove double spaces
    while (Pos(#9#9, Buff) <> 0) do
      Buff := StringReplace(Buff, #9#9, #9, [rfReplaceAll]);
    while (Pos(#32#32, Buff) <> 0) do
      Buff := StringReplace(Buff, #32#32, #32, [rfReplaceAll]);
    // create stringlist
    StrList := TStringList.Create;
    StrList.Text := Trim(Buff);
    // trim lines correctly
    for i := StrList.Count -1 downto 0 do begin
      StrList[i] := Trim(StrList[i]);
      if (Copy(StrList[i], 1, 1) = '!') then
        StrList[i] := Copy(StrList[i], 2, Length(StrList[i]));
      if (StrList[i] = '') then
        StrList.Delete(i);
    end;
    // parse doxygen lines
    if (Pos('@', StrList.Text) <> 0) then begin
      Comment.Info := Comment.Info + [ciIsDoxygen];
      // get doxygen values
      i := 0;
      while (i < StrList.Count) do begin
        { Parameters }
        if (TrimRight(Copy(StrList[i], 1, 7)) = '@param') then begin
          // get original parameter
          Buff := Trim(Copy(StrList[i], 7, Length(StrList[i])));
          StrList.Delete(i);
          // get additional text
          while (i < StrList.Count) and (StrList[i][1] <> '@') do begin
            Buff := Buff + #10 + Trim(StrList[i]);
            StrList.Delete(i);
          end;
          Buff := Trim(Buff);
          // well, we need to arrange the text somehow -> check pval
          k := Pos(#9, Buff);
          if (k <> 0) then begin
            if (k > pval) then
              pval := k;
          end
          else begin
            k := Pos(#32, Buff);
            if (k > pval) then
              pval := k;
          end;
          // add to list
          Comment.Params.Add(Buff);
          Comment.Info := Comment.Info + [ciParamInfo];
        end
        { Return }
        else if (TrimRight(Copy(StrList[i], 1, 8)) = '@return') then begin
          // get original value
          Comment.ReturnInfo := Comment.ReturnInfo + Trim(Copy(StrList[i], 8, Length(StrList[i])));
          StrList.Delete(i);
          // get additional text
          while (i < StrList.Count) and (StrList[i][1] <> '@') do begin
            Comment.ReturnInfo := Comment.ReturnInfo + #10 + Trim(StrList[i]);
            StrList.Delete(i);
          end;
          // set ReturnValid to true
          ReturnValid := True;
          Comment.Info := Comment.Info + [ciReturnsValue];
          Comment.ReturnInfo := Trim(Comment.ReturnInfo);
          if (Comment.ReturnInfo <> '') then
            Comment.Info := Comment.Info + [ciReturnInfo];
        end
        { No Return }
        else if (TrimRight(Copy(StrList[i], 1, 10)) = '@noreturn') then begin
          ReturnValid := False;
          StrList.Delete(i);
        end
        { Deprecated }
        else if (TrimRight(Copy(StrList[i], 1, 12)) = '@deprecated') then begin
          // get original value
          Comment.DeprecatedInfo := Comment.DeprecatedInfo + Trim(Copy(StrList[i], 8, Length(StrList[i])));
          StrList.Delete(i);
          // get additional text
          while (i < StrList.Count) and (StrList[i][1] <> '@') do begin
            Comment.DeprecatedInfo := Comment.DeprecatedInfo + #10 + Trim(StrList[i]);
            StrList.Delete(i);
          end;
          // set IsDeprecated to true
          IsDeprecated := True;
          Comment.DeprecatedInfo := Trim(Comment.DeprecatedInfo);
          // update flags
          Comment.Info := Comment.Info + [ciIsDeprecated];
          if (Comment.DeprecatedInfo <> '') then
            Comment.Info := Comment.Info + [ciDeprecatedInfo];
        end
        { Error }
        else if (TrimRight(Copy(StrList[i], 1, 7)) = '@error') then begin
          // get original parameter
          Comment.ErrorInfo := Comment.ErrorInfo + Trim(Copy(StrList[i], 7, Length(StrList[i])));
          StrList.Delete(i);
          // get additional text
          while (i < StrList.Count) and (StrList[i][1] <> '@') do begin
            Comment.ErrorInfo := Comment.ErrorInfo + #10 + StrList[i];
            StrList.Delete(i);
          end;
          // info flags
          Comment.ErrorInfo := Trim(Comment.ErrorInfo);
          if (Comment.ErrorInfo <> '') then
            Comment.Info := Comment.Info + [ciErrorInfo];
        end
        else
          Inc(i, 1);
      end;
      // turn it into text
      if (IsDeprecated) then begin
        StrList.Add('');
        if (Comment.DeprecatedInfo = '') then
          StrList.Add('Do not use this function any more, it has been marked as deprecated: ' + Comment.DeprecatedInfo)
        else
          StrList.Add('This function has been marked as deprecated. Do not use it any more.');
      end
      else begin
        { Parameters }
        if (Comment.Params.Count <> 0) then begin
          StrList.Add('');
          StrList.Add('Parameters:');
          for i := 0 to Comment.Params.Count -1 do begin
            Buff := StringReplace(Comment.Params[i], #9, #32, [rfReplaceAll]);
            k := Pos(#32, Buff)+1;
            for l := k to pval do
              Insert(#32, Buff, k);
            StrList.AddObject('* ' + Buff, TObject(pval));
          end;
        end;
        { Return Type }
        if (ReturnValid) then begin
          if (Comment.ReturnInfo <> '') then begin
            StrList.Add('');
            StrList.Add('Returns:');
            StrList.Add(Comment.ReturnInfo);
          end;
        end
        else begin
          StrList.Add('');
          StrList.Add('This function does not return a value.');
        end;
        { Possible Errors }
        if (Comment.ErrorInfo <> '') then begin
          StrList.Add('');
          StrList.Add('Reasons for Errors/Error Behavior:');
          StrList.Add(Comment.ErrorInfo);
        end;
      end;
    end;
    // done
    Comment.Caption := Trim(StringReplace(StrList.Text, #9, '', [rfReplaceAll]));
    StrList.Free;
  end;
end;

function WrapComment(const Comment: String; const MaxLen: Integer): String;
var StrList: TStringList;
    i, k, WPos, IPos: Integer;
    Wrapping: Boolean;
    Indentation: String;
begin
  StrList := TStringList.Create;
  StrList.Text := Trim(Comment);
  i := 0;
  while (i < StrList.Count) do begin
    if (Length(StrList[i]) > MaxLen) then begin
      // get best position to wrap
      Wrapping := False;
      IPos := Length(StrList[i]) - Length(TrimLeft(StrList[i])); // GetNextRealChr(StrList[i], #0, 1, True).Y;
      WPos := MaxLen;
      for k := MaxLen +1 downto IPos +1 do begin
        if (StrList[i][k] = #32) then begin
          Wrapping := True;
          WPos := k;
          break;
        end;
      end;
      // check if we can wrap here
      if (Wrapping) then begin
        // check if we need to take care of indentation (this is for comments)
        Indentation := Copy(StrList[i], 1, IPos);
        if (Pos('* ', TrimLeft(StrList[i])) = 1) then
          Indentation := Indentation + '  ';
        // insert line and cut off current one
        StrList.Insert(i+1, Indentation + Copy(StrList[i], WPos +1, Length(StrList[i]) - WPos +1));
        StrList[i] := Copy(StrList[i], 1, WPos-1);
      end
      else begin
        StrList.Insert(i+1, Copy(StrList[i], MaxLen, Length(StrList[i]) - MaxLen));
        StrList[i] := Copy(StrList[i], 1, MaxLen);
      end;
    end;

    Inc(i, 1);
  end;
  Result := Trim(StrList.Text);
  StrList.Free;
end;


initialization

ApplicationPath := ExtractFilePath(ParamStr(0));

end.
