unit UnitfrmTaskMgr;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, SpTBXControls, TBXDkPanels, SpTBXEditors,
  TntStdCtrls;

type
  TfrmTaskMgr = class(TForm)
    pnlBG: TSpTBXPanel;
    cmdAddModify: TSpTBXButton;
    cmdCancel: TSpTBXButton;
    lblTask: TSpTBXLabel;
    txtTask: TSpTBXEdit;
    txtNotes: TSpTBXEdit;
    lblNotes: TSpTBXLabel;
    lblCompleteness: TSpTBXLabel;
    cboCompleteness: TSpTBXComboBox;
    txtTargetDate: TSpTBXEdit;
    lblTargetDate: TSpTBXLabel;
    procedure txtTaskChange(Sender: TObject);
  end;

var
  frmTaskMgr: TfrmTaskMgr;

implementation

uses UnitfrmMain;

{$R *.DFM}

procedure TfrmTaskMgr.txtTaskChange(Sender: TObject);
begin
  cmdAddModify.Enabled := (txtTask.Text <> '');
end;

end.
