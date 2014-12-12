unit UnitfrmAllFilesDialog;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, SpTBXControls, TBXDkPanels, CheckLst,
  TntCheckLst, SpTBXEditors, ImgList, PngImageList, TB2Item, TBX,
  SpTBXItem, Menus;

type
  TfrmAllFilesDialog = class(TForm)
    pnlBackground: TSpTBXPanel;
    lstFiles: TSpTBXCheckListBox;
    cmdOK: TSpTBXButton;
    lblInfo: TLabel;
    cmdCancel: TSpTBXButton;
    ilButtons: TPngImageList;
    ppmFiles: TSpTBXPopupMenu;
    mnuSelectAll: TSpTBXItem;
    mnuSelectNone: TSpTBXItem;
    mnuInvertSelection: TSpTBXItem;
    sepPopup: TSpTBXSeparatorItem;
    procedure FormShow(Sender: TObject);
    procedure lstFilesClickCheck(Sender: TObject);
    procedure mnuSelectAllClick(Sender: TObject);
    procedure mnuSelectNoneClick(Sender: TObject);
    procedure mnuInvertSelectionClick(Sender: TObject);
  public
    procedure ResetFiles(Save: Boolean);
  end;

var
  frmAllFilesDialog: TfrmAllFilesDialog;

implementation

uses UnitfrmMain, UnitFunctions, UnitDocuments;

{$R *.DFM}

procedure TfrmAllFilesDialog.FormShow(Sender: TObject);
begin
  cmdOK.Enabled := False;
end;

procedure TfrmAllFilesDialog.lstFilesClickCheck(Sender: TObject);
var i: integer;
begin
  cmdOK.Enabled := False;
  for i := 0 to lstFiles.Items.Count -1 do begin
    if (lstFiles.Checked[i]) then begin
      cmdOK.Enabled := True;
      break;
    end;
  end;
end;

procedure TfrmAllFilesDialog.ResetFiles(Save: Boolean);
var i: integer;
    Doc: TDocument;
begin
  lstFiles.Clear;
  for i := 0 to DocumentCount -1 do begin
    Doc := GetDocument(i);
    if (Assigned(Doc)) then begin
      if ((not Save) or ((Save) and ((Doc.Modified) or (Doc.Filename = '')))) then
        lstFiles.Items.AddObject(Doc.Tab.Caption, TObject(Doc));
    end
    else
      AddDebugLog('ResetFiles', 'Warning: Document ' + IntToStr(i) + ' not assigned! Something must have gone wrong here (ResetFiles-function)...');
  end;
end;

procedure TfrmAllFilesDialog.mnuSelectAllClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to lstFiles.Items.Count -1 do
    lstFiles.Checked[i] := True;
  cmdOk.Enabled := True;
end;

procedure TfrmAllFilesDialog.mnuSelectNoneClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to lstFiles.Items.Count -1 do
    lstFiles.Checked[i] := False;
  cmdOk.Enabled := False;
end;

procedure TfrmAllFilesDialog.mnuInvertSelectionClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to lstFiles.Items.Count -1 do
    lstFiles.Checked[i] := (not lstFiles.Checked[i]);
  lstFilesClickCheck(Sender);
end;

end.
