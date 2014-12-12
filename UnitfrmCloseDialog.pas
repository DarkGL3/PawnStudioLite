unit UnitfrmCloseDialog;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, SpTBXControls, TBXDkPanels, ComCtrls, Menus,
  TB2Item, TBX, SpTBXItem;

type
  TfrmCloseDialog = class(TForm)
    pnlBG: TSpTBXPanel;
    lblQuestion: TSpTBXLabel;
    pnlFiles: TSpTBXPanel;
    cmdYes: TSpTBXButton;
    cmdCancel: TSpTBXButton;
    cmdNo: TSpTBXButton;
    lvFiles: TListView;
    ppmFiles: TSpTBXPopupMenu;
    mnuSelectAll: TSpTBXItem;
    mnuSelectNone: TSpTBXItem;
    procedure mnuSelectAllClick(Sender: TObject);
    procedure mnuSelectNoneClick(Sender: TObject);
    procedure lvFilesChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
  end;

var
  frmCloseDialog: TfrmCloseDialog;

implementation

uses UnitfrmMain;

{$R *.DFM}

procedure TfrmCloseDialog.mnuSelectAllClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to lvFiles.Items.Count -1 do
    lvFiles.Items[i].Checked := True;
end;

procedure TfrmCloseDialog.mnuSelectNoneClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to lvFiles.Items.Count -1 do
    lvFiles.Items[i].Checked := False;
end;

procedure TfrmCloseDialog.lvFilesChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var i: integer;
begin
  for i := 0 to lvFiles.Items.Count -1 do begin
    if (lvFiles.Items[i].Checked) then begin
      cmdYes.Enabled := True;
      exit;
    end;
  end;
  cmdYes.Enabled := False;
end;

end.
