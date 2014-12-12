unit UnitfrmBatchCompiler;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, TBXDkPanels, SpTBXControls, ComCtrls,
  JvExComCtrls, JvListView, Menus, TB2Item, TBX, SpTBXItem, Dialogs;

type
  TfrmBatchCompiler = class(TForm)
    pnlBG: TSpTBXPanel;
    cmdStart: TSpTBXButton;
    cmdCancel: TSpTBXButton;
    pnlFiles: TSpTBXPanel;
    lblInfo: TSpTBXLabel;
    lvFiles: TJvListView;
    ppmList: TSpTBXPopupMenu;
    mnuCheckAll: TSpTBXItem;
    mnuUncheckAll: TSpTBXItem;
    sepList: TSpTBXSeparatorItem;
    mnuInvertSelection: TSpTBXItem;
    procedure lvFilesChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure cmdStartClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mnuCheckAllClick(Sender: TObject);
    procedure mnuUncheckAllClick(Sender: TObject);
    procedure mnuInvertSelectionClick(Sender: TObject);
    procedure lvFilesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  public
    DocCount: Integer;
    Compiling: Boolean;
    procedure CompilationDone(Sender: TObject);
    function Execute: Boolean;
  end;

var
  frmBatchCompiler: TfrmBatchCompiler;

implementation

uses UnitDocuments, UnitCompile, UnitFunctions, UnitConfigManager;

{$R *.DFM}

{ TfrmBatchCompiler }

function TfrmBatchCompiler.Execute: Boolean;
var i: integer;
    Doc: TDocument;
begin
  lvFiles.Clear;
  for i := 0 to DocumentCount -1 do begin
    Doc := GetDocument(i);
    with lvFiles.Items.Add do begin
      Caption := '';
      if (Doc.Filename = '') then
        SubItems.Add(Doc.Tab.Caption)
      else
        SubItems.Add(ExtractFileName(Doc.Filename));
      SubItems.Add('Uncompiled');
      Data := Doc;
    end;
  end;
  Result := (ShowModal = mrOk);
end;

procedure TfrmBatchCompiler.lvFilesChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var i: integer;
begin
  for i := 0 to lvFiles.Items.Count -1 do begin
    if (lvFiles.Items[i].Checked) then begin
      cmdStart.Enabled := True;
      exit;
    end;
  end;
  cmdStart.Enabled := False;
end;

procedure TfrmBatchCompiler.cmdStartClick(Sender: TObject);
var i: integer;
    Doc: TDocument;
begin
  Compiling := True;
  Screen.Cursor := crHourGlass;
  cmdCancel.Enabled := False;
  cmdStart.Enabled := False;
  DocCount := 0;
  // start everything
  try
    for i := 0 to lvFiles.Items.Count -1 do begin
      if (lvFiles.Items[i].Checked) then begin
        Doc := TDocument(lvFiles.Items[i].Data);
        Doc.LastCompilationRes.NotifyProc := CompilationDone;
        with GetCompiler(Doc.Highlighter) do
          DoCompile(Doc, FileName, Arguments, DefOutdir, '', SaveOrigFile, False, Configuration.OutputShowLength, CopyOnly, False);
        Inc(DocCount, 1);
      end;
    end;
  except
    on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Error', MB_ICONERROR);
  end;
  // wait for results
  while (DocCount > 0) do begin
    if (Screen.Cursor = crDefault) then
      Screen.Cursor := crHourGlass;
    Application.ProcessMessages;
  end;
  // end
  Compiling := False;
  Screen.Cursor := crDefault;
  cmdCancel.Enabled := True;
  cmdStart.Enabled := True;
end;

procedure TfrmBatchCompiler.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := not Compiling;
end;

procedure TfrmBatchCompiler.CompilationDone(Sender: TObject);
var i: integer;
    Doc: TDocument;
begin
  for i := 0 to lvFiles.Items.Count -1 do begin
    Doc := TDocument(lvFiles.Items[i].Data);
    if (Doc = Sender) then begin
      if (Doc.LastCompilationRes.Success) then
        lvFiles.Items[i].SubItems[1] := 'Done'
      else
        lvFiles.Items[i].SubItems[1] := 'Error';
    end;
  end;
  Dec(DocCount, 1);
end;

procedure TfrmBatchCompiler.mnuCheckAllClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to lvFiles.Items.Count -1 do
    lvFiles.Items[i].Checked := True;
end;

procedure TfrmBatchCompiler.mnuUncheckAllClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to lvFiles.Items.Count -1 do
    lvFiles.Items[i].Checked := False;
end;

procedure TfrmBatchCompiler.mnuInvertSelectionClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to lvFiles.Items.Count -1 do
    lvFiles.Items[i].Checked := not lvFiles.Items[i].Checked;
end;

procedure TfrmBatchCompiler.lvFilesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) then
    ppmList.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

end.
