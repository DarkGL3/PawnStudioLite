unit UnitCompile;

interface

uses SysUtils, Classes, Windows, UnitDocuments, Controls, Forms, Messages;

type
  TCompilationThread = class(TThread)
    private
      // Values
      Compiler: String;
      Arguments: String;
      CompilationResult: Pointer;
      CaptureOutput: Boolean;
      DeleteSource: Boolean;
      DeleteBinary: Boolean;
      ShowLength: Boolean;
      CopyToOutDir: Boolean;
      DefaultOutDir: String;
      Done: Boolean;
      // Misc
      StartTime: Cardinal;
      // Sync Procedures
      procedure UpdateOutput;
      procedure Finish;
    protected
      OldOut, OldErr: String;
      procedure Execute; override;
  end;

function StartCompilation(const Document: TDocument; const CompilerFilename, Source, Target, eArguments, DefOutDir: String; CaptureOut, eShowLength, eDeleteSource, eDeleteOutput, CopyOnly: Boolean): TCompilationThread;
function DoCompile(const Document: TDocument; const CompilerFilename, Arguments, DefOutDir, Target: String; const SaveOrigFile, CaptureOutput, ShowLength, CopyOnly, Wait: Boolean): Boolean;
procedure CaptureConsoleOutput(CommandLine: String);
procedure AddToErrorList(var List: TErrorList; OutputIdx: Integer; FileName: String; LineFrom, LineTo, Code: Integer; Description: String);
procedure ParseErrorLine(LineIdx: Integer; Line: String; var Result: TCompilationResult);

var ThreadList: TList;

implementation

uses UnitFunctions, UnitfrmMain, UnitConfigManager;

function StartCompilation(const Document: TDocument; const CompilerFilename, Source, Target, eArguments, DefOutDir: String; CaptureOut, eShowLength, eDeleteSource, eDeleteOutput, CopyOnly: Boolean): TCompilationThread;
begin
  // clear output list if it's supposed to be used
  if (CaptureOut) then
    frmMain.lstOutput.Items.Clear;
  // start compilation process (we add a thread to our thread list and access it afterwards)
  Result := TCompilationThread.Create(True);
  ThreadList.Add(@Result);
  with Result do begin
    { clear lastcompilationres object }
    Document.LastCompilationRes.CompleteOutput := '';
    Document.LastCompilationRes.ConsoleOutput := '';
    Document.LastCompilationRes.ConsoleErrors := '';
    Document.LastCompilationRes.FatalErrors.Count := 0;
    Document.LastCompilationRes.Errors.Count := 0;
    Document.LastCompilationRes.Warnings.Count := 0;
    { set values }
    Compiler := CompilerFilename;
    Arguments := eArguments;
    CaptureOutput := CaptureOut;
    Document.LastCompilationRes.SourceFile := Source;
    Document.LastCompilationRes.TargetFile := Target;
    CompilationResult := Document.LastCompilationRes;
    DeleteSource := eDeleteSource;
    DeleteBinary := eDeleteOutput;
    ShowLength := eShowLength;
    CopyToOutDir := CopyOnly;
    DefaultOutDir := DefOutDir;
    Done := False;
    { start it! }
    Resume;
  end;
end;

function DoCompile(const Document: TDocument; const CompilerFilename, Arguments, DefOutDir, Target: String; const SaveOrigFile, CaptureOutput, ShowLength, CopyOnly, Wait: Boolean): Boolean;
var Source, TargetF: String;
    i: integer;

    DeleteSource: Boolean;
    DeleteBinary: Boolean;

    FileStream: TFileStream;
begin
  Result := False;
  // init variables
  if (Wait) then begin
    Include(BusyState, bsCompiling);
    Screen.Cursor := crHourGlass;
  end;
  DeleteSource := (Document.Filename = '');
  DeleteBinary := DeleteSource;
  { first of all, we need to get a filename to save it to }
  if (Document.Filename = '') or (Document.Modified) then begin
    if (SaveOrigFile) then begin
      if (DoSaveAs(Document)) then begin
        Source := Document.Filename;
        // already saved, don't delete source now
        DeleteSource := False;
        DeleteBinary := False;
      end
      else
        exit;
    end
    else begin
      // find temporary src file
      Randomize;
      repeat
        Source := ExtractFilePath(Application.ExeName) + 'temp' + IntToStr(Random(1000)) + Document.DefaultExtension;
      until (not FileExists(Source));
      // save it
      if (Document = ActiveDoc) then
        frmMain.sciEditor.SaveToFile(Source)
      else begin
        try
          FileStream := TFileStream.Create(Source, fmCreate or fmShareExclusive);
          FileStream.WriteBuffer(Pointer(Document.Text)^, Length(Document.Text));
        finally
          FreeAndNil(FileStream);
        end;
      end;
    end;
  end
  else
   Source := Document.FileName;
  { then find a good file for the target }
  if (Target = '') then begin
    if (DefOutDir = '') or (CopyOnly) then begin
      if (Document.Filename = '') then
        TargetF := ExtractFilePath(Source)
      else
        TargetF := ExtractFilePath(Document.Filename);
    end
    else
      TargetF := IncludeTrailingPathDelimiter(DefOutDir);

    if (Document.Filename = '') then
      TargetF := TargetF + ChangeFileExt(ExtractFileName(Source), GetBinaryExtension(Document.DefaultExtension))
    else begin
      TargetF := TargetF + ChangeFileExt(ExtractFileName(Document.Filename), GetBinaryExtension(Document.DefaultExtension));
      if (TargetF = Document.Filename) then begin
        Application.MessageBox('Unknown binary extension. Please check your template configuration and try again.', 'Error', MB_ICONERROR);
        Exclude(BusyState, bsCompiling);
        Screen.Cursor := crDefault;
        exit;
      end;
    end;
  end;
  { remove output file if it already exists }
  if (FileExists(TargetF)) then
    SysUtils.DeleteFile(TargetF);
  { eventually start the compilation process }
  with StartCompilation(Document, CompilerFilename, Source, TargetF, Arguments, DefOutDir, CaptureOutput, ShowLength, DeleteSource, DeleteBinary, CopyOnly) do begin
    // this function waits until our compilation is done
    repeat
      Application.ProcessMessages;
    until (Done);
    // well, well. let's see if our result is somewhat usable
    Result := TCompilationResult(CompilationResult).Success;
    // if it wasn't, check for (fatal) errors and warnings
    if (not Result) and (CaptureOutput) then begin
      frmMain.sciEditor.MarkerDeleteAll(ERROR_MARKER);
      if (TCompilationResult(CompilationResult).FatalErrors.Count <> 0) then begin
        frmMain.CanReset := False;
        frmMain.ShowCaret := frmMain.ShowCaret or frmMain.sciEditor.Caret.LineVisible;
        frmMain.sciEditor.Caret.LineVisible := False;
        for i := TCompilationResult(CompilationResult).FatalErrors.LineNumber[0].Start to TCompilationResult(CompilationResult).FatalErrors.LineNumber[0].Stop do
          frmMain.sciEditor.MarkerAdd(i-1, ERROR_MARKER);
        frmMain.lstOutput.ItemIndex := TCompilationResult(CompilationResult).FatalErrors.OutputIdx[0];
        frmMain.sciEditor.GotoLineEnsureVisible(TCompilationResult(CompilationResult).FatalErrors.LineNumber[0].Start-1);
        frmMain.sciEditor.SelStart := frmMain.sciEditor.SelStart + Length(frmMain.sciEditor.Lines[frmMain.sciEditor.GetCurrentLineNumber]) - Length(TrimLeft(frmMain.sciEditor.Lines[frmMain.sciEditor.GetCurrentLineNumber]));
        frmMain.sciEditor.SetFocus;
      end
      else if (TCompilationResult(CompilationResult).Errors.Count <> 0) then begin
        frmMain.CanReset := False;
        frmMain.ShowCaret := frmMain.ShowCaret or frmMain.sciEditor.Caret.LineVisible;
        frmMain.sciEditor.Caret.LineVisible := False;
        for i := TCompilationResult(CompilationResult).Errors.LineNumber[0].Start to TCompilationResult(CompilationResult).Errors.LineNumber[0].Stop do
          frmMain.sciEditor.MarkerAdd(i-1, ERROR_MARKER);
        frmMain.lstOutput.ItemIndex := TCompilationResult(CompilationResult).Errors.OutputIdx[0];
        frmMain.sciEditor.GotoLineEnsureVisible(TCompilationResult(CompilationResult).Errors.LineNumber[0].Start-1);
        frmMain.sciEditor.SelStart := frmMain.sciEditor.SelStart + Length(frmMain.sciEditor.Lines[frmMain.sciEditor.GetCurrentLineNumber]) - Length(TrimLeft(frmMain.sciEditor.Lines[frmMain.sciEditor.GetCurrentLineNumber]));
        frmMain.sciEditor.SetFocus;
      end;
      {else if (TCompilationResult(CompilationResult).Warnings.Count <> 0) then begin
        frmMain.CanReset := False;
        frmMain.ShowCaret := frmMain.ShowCaret or frmMain.sciEditor.Caret.LineVisible;
        frmMain.sciEditor.Caret.LineVisible := False;
        for i := TCompilationResult(CompilationResult).Warnings.LineNumber[0].Start to TCompilationResult(CompilationResult).Warnings.LineNumber[0].Stop do
          frmMain.sciEditor.MarkerAdd(i-1, ERROR_MARKER);
        frmMain.lstOutput.ItemIndex := TCompilationResult(CompilationResult).Warnings.OutputIdx[0];
        frmMain.sciEditor.GotoLineEnsureVisible(TCompilationResult(CompilationResult).Warnings.LineNumber[0].Start-1);
        frmMain.sciEditor.SelStart := frmMain.sciEditor.SelStart + Length(frmMain.sciEditor.Lines[frmMain.sciEditor.GetCurrentLineNumber]) - Length(TrimLeft(frmMain.sciEditor.Lines[frmMain.sciEditor.GetCurrentLineNumber]));
        frmMain.sciEditor.SetFocus;
      end;}
    end;
  end;
  { end this; reset busystate }
  Exclude(BusyState, bsCompiling);
  Screen.Cursor := crDefault;
end;

procedure CaptureConsoleOutput(CommandLine: String);
var Thread: TCompilationThread;
begin
  Thread := TCompilationThread.Create(True);
  ThreadList.Add(Thread);
  with (Thread) do begin
    Arguments := '';
    Compiler := CommandLine;
    DeleteSource := False;
    DeleteBinary := False;
    CaptureOutput := True;
    Resume;
  end;
end;

procedure AddToErrorList(var List: TErrorList; OutputIdx: Integer; FileName: String; LineFrom, LineTo, Code: Integer; Description: String);
var NewCount: Integer;
begin
  // prepare values
  NewCount := List.Count +1;
  SetLength(List.OutputIdx, NewCount);
  SetLength(List.FileName, NewCount);
  SetLength(List.ErrorCode, NewCount);
  SetLength(List.LineNumber, NewCount);
  SetLength(List.Description, NewCount);
  // add everything
  List.OutputIdx[List.Count] := OutputIdx;
  List.FileName[List.Count] := FileName;
  List.LineNumber[List.Count].Start := LineFrom;
  List.LineNumber[List.Count].Stop := LineTo;
  List.ErrorCode[List.Count] := Code;
  List.Description[List.Count] := Description;
  // set count
  List.Count := NewCount;
end;

procedure ParseErrorLine(LineIdx: Integer; Line: String; var Result: TCompilationResult);
var i, ColonPos: integer;
    Temp: String;

    FileName: String;
    LineStart, LineStop, ErrCode: Integer;
    ErrorType: Byte;
    Description: String;
begin
  ColonPos := Pos(':', Copy(Line, 4, Length(Line))) +3;
  if (ColonPos = 3) then exit;

  // get filename
  FileName := '';
  for i := ColonPos downto 1 do begin
    if (Line[i] = '(') then begin
      // get filename
      FileName := Copy(Line, 1, i-1);
      Delete(Line, 1, i-1);
      // stop here
      break;
    end;
  end;
  // check if it's valid
  if (FileName = '') then
    exit;
  // get line number(s)
  Temp := Between(Line, '(', ')');
  if (Pos('--', Temp) = 0) then begin
    LineStart := StrToIntDef(Temp, -1);
    LineStop := LineStart;
  end
  else begin
    Temp := StringReplace(Temp, ' ', '', [rfReplaceAll]);
    LineStart := StrToIntDef(Copy(Temp, 1, Pos('-', Temp)-1), -1);
    LineStop := StrToIntDef(Copy(Temp, PosBack('-', Temp)+1, Length(Temp)), LineStart);
  end;
  // error code
  Delete(Line, 1, Pos(':', Line)+1);
  Temp := Trim(Copy(Line, 1, Pos(':', Line)-1));
  ErrCode := StrToIntDef(Copy(Temp, PosBack(#32, Temp), Length(Temp)), -1);
  // type (let's set a byte instead!)
  ErrorType := 0;
  Temp := Copy(Temp, 1, PosBack(#32, Temp)-1);
  if (Temp = 'fatal error') then
    ErrorType := 1
  else if (Temp = 'error') then
    ErrorType := 2
  else if (Temp = 'warning') then
    ErrorType := 3;
  // description
  Description := Trim(Copy(Line, Pos(':', Line)+1, Length(Line)));
  // add it to list (depending on error type)
  case ErrorType of
    0: AddDebugLog('ParseErrorLine', 'Failed to get error type for line "' + Line + '"');
    1: AddToErrorList(Result.FatalErrors, LineIdx, FileName, LineStart, LineStop, ErrCode, Description);
    2: AddToErrorList(Result.Errors, LineIdx, FileName, LineStart, LineStop, ErrCode, Description);
    3: AddToErrorList(Result.Warnings, LineIdx, FileName, LineStart, LineStop, ErrCode, Description);
  end;
end;

{ TCompilationThread }

procedure TCompilationThread.Execute;
function PrepareBuff(InStr: String): String;
var Posi: Integer;
    TmpStr: String;
begin
  Result := '';
  Posi := Pos(#13#10, InStr);
  if (Posi <> 0) then begin
    repeat
      TmpStr := Copy(InStr, 1, Posi-1);
      if (Pos(#13, TmpStr) = 0) then
        Result := Result + TmpStr + #13#10
      else
        Result := Result + TmpStr;
      Delete(InStr, 1, Posi+1);
      Posi := Pos(#13#10, InStr);
    until (Posi = 0);
  end;

  if (Length(InStr) > 0) then
    Result := Result + InStr;
end;

var StartupInfo: TStartupInfo;
    ProcessInfo: TProcessInformation;
    SecurityAttr: TSecurityAttributes;
    PipeOutputRead, PipeOutputWrite: THandle;
    PipeErrorsRead, PipeErrorsWrite: THandle;
    Buffer: array[0..255] of Char;
    ExitCode: Cardinal;
    BytesToReadOut, BytesToReadErr: Cardinal;

    OutputList: TStringList;
    i: integer;
    FileDest: String;
begin
  // init variables
  TCompilationResult(CompilationResult).Success := False;
  // format arguments
  Arguments := StringReplace(Arguments, '%in%', TCompilationResult(CompilationResult).SourceFile, [rfReplaceAll, rfIgnoreCase]);
  Arguments := StringReplace(Arguments, '%out%', TCompilationResult(CompilationResult).TargetFile, [rfReplaceAll, rfIgnoreCase]);
  if (Arguments <> '') and (Copy(Arguments, 1, 1) <> #32) then
    Arguments := #32 + Arguments;
  // init variables (process part)
  ExitCode := STILL_ACTIVE;
  FillChar(ProcessInfo, SizeOf(TProcessInformation), 0);
  FillChar(SecurityAttr, SizeOf(TSecurityAttributes), 0);
  SecurityAttr.nLength := SizeOf(SecurityAttr);
  SecurityAttr.bInheritHandle := True;
  SecurityAttr.lpSecurityDescriptor := nil;
  CreatePipe(PipeOutputRead, PipeOutputWrite, @SecurityAttr, 0);
  CreatePipe(PipeErrorsRead, PipeErrorsWrite, @SecurityAttr, 0);
  FillChar(StartupInfo, SizeOf(TStartupInfo), 0);
  StartupInfo.cb := SizeOf(StartupInfo);
  StartupInfo.hStdInput := 0;
  StartupInfo.hStdOutput := PipeOutputWrite;
  StartupInfo.hStdError := PipeErrorsWrite;
  StartupInfo.wShowWindow := SW_HIDE;
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
  StartTime := GetTickCount;
  // let's see... we need to use pipes, right? start process and everything
  if CreateProcess(nil, PChar(Compiler + Arguments), nil, nil, True, CREATE_DEFAULT_ERROR_MODE or CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo) then begin
    { we don't use these two pipes }
    CloseHandle(PipeOutputWrite);
    CloseHandle(PipeErrorsWrite);
    { start capturing }
    repeat
      { check if process is still running }
      if (ExitCode = STILL_ACTIVE) then
        GetExitCodeProcess(ProcessInfo.hProcess, ExitCode);
      { check if we can read from the stdout pipe }
      repeat
        if (not ReadFile(PipeOutputRead, Buffer, 255, BytesToReadOut, nil)) then
          break;
        TCompilationResult(CompilationResult).ConsoleOutput := TrimLeft(TCompilationResult(CompilationResult).ConsoleOutput) + PrepareBuff(Copy(Buffer, 1, BytesToReadOut));
        Synchronize(UpdateOutput);
      until (BytesToReadOut = 0);
      { check if we can read from the stderr pipe }
      repeat
        if (not ReadFile(PipeErrorsRead, Buffer, 255, BytesToReadErr, nil)) then
          break;
        TCompilationResult(CompilationResult).ConsoleErrors := TrimLeft(TCompilationResult(CompilationResult).ConsoleErrors) + PrepareBuff(Copy(Buffer, 1, BytesToReadErr));
        Synchronize(UpdateOutput);
      until (BytesToReadErr = 0);
    until (BytesToReadErr + BytesToReadOut = 0) and (ExitCode <> STILL_ACTIVE);

    // parse output and set result
    if (Trim(TCompilationResult(CompilationResult).CompleteOutput) <> '') then begin
      // initialize object
      OutputList := TStringList.Create;
      OutputList.Text := TCompilationResult(CompilationResult).CompleteOutput;
      // get errors/warnings
      for i := 0 to OutputList.Count -1 do
        ParseErrorLine(i, Trim(OutputList[i]), TCompilationResult(CompilationResult));
      // add length (if enabled)
      TCompilationResult(CompilationResult).Length := GetTickCount - StartTime;
      // set output
      TCompilationResult(CompilationResult).CompleteOutput := OutputList.Text;
      TCompilationResult(CompilationResult).Success := FileExists(TCompilationResult(CompilationResult).TargetFile);
      // copy file if neccessary
      if (not DeleteBinary) and (CopyToOutDir) and (DefaultOutDir <> '') and (DirectoryExists(DefaultOutDir)) then begin
        FileDest := IncludeTrailingPathDelimiter(DefaultOutDir) + ExtractFileName(TCompilationResult(CompilationResult).TargetFile);
        if (FileExists(FileDest)) then
          SysUtils.DeleteFile(FileDest);
        if (TCompilationResult(CompilationResult).Success) then begin
          CopyFile(PChar(TCompilationResult(CompilationResult).TargetFile), PChar(FileDest), False);
          if (CaptureOutput) then
            TCompilationResult(CompilationResult).CompleteOutput := TCompilationResult(CompilationResult).CompleteOutput + #13#10 + 'Copied Output File to: ' + FileDest;
        end;
      end;
      if (ShowLength) then
        TCompilationResult(CompilationResult).CompleteOutput := TCompilationResult(CompilationResult).CompleteOutput + #13#10 + 'Compilation Time: ' + FloatToStrF(TCompilationResult(CompilationResult).Length / 1000, ffFixed, -2, 2) + ' sec';
      // free object
      OutputList.Free;
    end;
  end
  else begin
    { we don't use these two pipes }
    CloseHandle(PipeOutputWrite);
    CloseHandle(PipeErrorsWrite);
    { set error }
    TCompilationResult(CompilationResult).CompleteOutput := 'Error creating the process:' + #13#10 + SysErrorMessage(GetLastError) + #13#10 + #13#10 + 'Used Command-Line: ' + #13#10 + Compiler + Arguments;
  end;
  { close every handle here }
  CloseHandle(PipeOutputRead);
  CloseHandle(PipeErrorsRead);
  // yep, we're done
  Synchronize(Finish);
  ThreadList.Remove(@Self);
end;

procedure TCompilationThread.UpdateOutput;
var OldItemIdx, OldX, OldY: Integer;
    OutputList: TStringList;
begin
  // check if output has been modified and set old* vars
  if (OldOut = TCompilationResult(CompilationResult).ConsoleOutput) and (OldErr = TCompilationResult(CompilationResult).ConsoleErrors) then
    exit;
  OldOut := TCompilationResult(CompilationResult).ConsoleOutput;
  OldErr := TCompilationResult(CompilationResult).ConsoleErrors;
  // prepare output
  if (TCompilationResult(CompilationResult).ConsoleErrors <> '') then begin
    OutputList := TStringList.Create;
    OutputList.Text := TCompilationResult(CompilationResult).ConsoleOutput;
    // insert errors
    if (OutputList.Count > 1) then begin
      if (Trim(OutputList[OutputList.Count -2]) = '') then
        OutputList.Strings[OutputList.Count -2] := TrimRight(TCompilationResult(CompilationResult).ConsoleErrors)
      else
        OutputList.Insert(OutputList.Count -1, TrimRight(TCompilationResult(CompilationResult).ConsoleErrors));
    end;
    TCompilationResult(CompilationResult).CompleteOutput := OutputList.Text;
    OutputList.Free;
  end
  else
    TCompilationResult(CompilationResult).CompleteOutput := TCompilationResult(CompilationResult).ConsoleOutput;
  // don't change output if we don't need to
  if (not CaptureOutput) then exit;
  // set it (if supposed to)
  if (frmMain.lstOutput.ItemIndex = frmMain.lstOutput.Items.Count -1) and (Configuration.OutputAutoScroll) then begin
    // auto-scroll enabled, no need to take care of scroll position
    // set new content
    if (GetCurrCompiler.AlignFirstLine) then
      frmMain.lstOutput.Items.Text := AdjustTabs(TCompilationResult(CompilationResult).CompleteOutput, #9, ((GetWindowLong(frmMain.lstOutput.Handle, GWL_STYLE) and WS_VSCROLL) <> 0))
    else
      frmMain.lstOutput.Items.Text := TCompilationResult(CompilationResult).CompleteOutput;
    // scroll to bottom and set itemindex to max
    frmMain.lstOutput.ItemIndex := frmMain.lstOutput.Items.Count -1;
  end
  else begin
    // save old scroll pos
    OldX := GetScrollPos(frmMain.lstOutput.Handle, SB_HORZ);
    OldY := GetScrollPos(frmMain.lstOutput.Handle, SB_VERT);
    OldItemIdx := frmMain.lstOutput.ItemIndex;
    // set new content
    if (GetCurrCompiler.AlignFirstLine) then
      frmMain.lstOutput.Items.Text := AdjustTabs(TCompilationResult(CompilationResult).CompleteOutput, #9, ((GetWindowLong(frmMain.lstOutput.Handle, GWL_STYLE) and WS_VSCROLL) <> 0))
    else
      frmMain.lstOutput.Items.Text := TCompilationResult(CompilationResult).CompleteOutput;
    // scroll back
    SetScrollPos(frmMain.lstOutput.Handle, SB_HORZ, OldX, False);
    SetScrollPos(frmMain.lstOutput.Handle, SB_VERT, OldY, False);
    frmMain.lstOutput.ItemIndex := OldItemIdx;
  end;
end;

procedure TCompilationThread.Finish;
var ScrollToBottom: Boolean;
    OldItemIdx, OldX, OldY: Integer;
begin
  if (CaptureOutput) then begin
    // check if we need to save our scroll posi
    ScrollToBottom := (frmMain.lstOutput.ItemIndex = frmMain.lstOutput.Items.Count -1) and (Configuration.OutputAutoScroll);
    OldItemIdx := 0;
    OldX := 0;
    OldY := 0;
    // if so, get scroll posi
    if (not ScrollToBottom) then begin
      OldX := GetScrollPos(frmMain.lstOutput.Handle, SB_HORZ);
      OldY := GetScrollPos(frmMain.lstOutput.Handle, SB_VERT);
      OldItemIdx := frmMain.lstOutput.ItemIndex;
    end;
    // update values
    if (GetCurrCompiler.AlignFirstLine) then
      frmMain.lstOutput.Items.Text := AdjustTabs(TCompilationResult(CompilationResult).CompleteOutput, #9, ((GetWindowLong(frmMain.lstOutput.Handle, GWL_STYLE) and WS_VSCROLL) <> 0))
    else
      frmMain.lstOutput.Items.Text := TCompilationResult(CompilationResult).CompleteOutput;
    if (Configuration.OutputTrimRight) then
      frmMain.lstOutput.Items.Text := TrimRight(frmMain.lstOutput.Items.Text);
    if (Configuration.OutputAutoScroll) then
      frmMain.lstOutput.ItemIndex := frmMain.lstOutput.Items.Count -1;
    // scroll to bottom
    if (ScrollToBottom) then
      frmMain.lstOutput.ItemIndex := frmMain.lstOutput.Items.Count -1
    // or reset scroll posi
    else begin
      SetScrollPos(frmMain.lstOutput.Handle, SB_HORZ, OldX, False);
      SetScrollPos(frmMain.lstOutput.Handle, SB_VERT, OldY, False);
      frmMain.lstOutput.ItemIndex := OldItemIdx;
    end;
  end;
  // delete temporary files
  if (DeleteSource) then
    SysUtils.DeleteFile(TCompilationResult(CompilationResult).SourceFile);
  if (DeleteBinary) then
    SysUtils.DeleteFile(TCompilationResult(CompilationResult).TargetFile);
  // set done variable and call proc (if exists)
  Done := True;
  if (@TCompilationResult(CompilationResult).NotifyProc <> nil) then
    TCompilationResult(CompilationResult).NotifyProc(TCompilationResult(CompilationResult).Parent);
end;

initialization

ThreadList := TList.Create;

finalization

ThreadList.Free;

end.
