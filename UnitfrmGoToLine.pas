unit UnitfrmGoToLine;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, SpTBXControls, TBXDkPanels, SpTBXEditors,
  ImgList, PngImageList;

type
  TfrmGoToLine = class(TForm)
    pnlBackground: TSpTBXPanel;
    lblGoToLine: TSpTBXLabel;
    seLine: TSpTBXSpinEdit;
    cmdCancel: TSpTBXButton;
    cmdGo: TSpTBXButton;
    ilButtons: TPngImageList;
    procedure FormShow(Sender: TObject);
    procedure seLineKeyPress(Sender: TObject; var Key: Char);
  end;

var
  frmGoToLine: TfrmGoToLine;

implementation

uses UnitfrmMain;

{$R *.DFM}

procedure TfrmGoToLine.FormShow(Sender: TObject);
begin
  seLine.MaxValue := frmMain.sciEditor.GetLineCount;
  seLine.SelectAll;
  seLine.SetFocus;
end;

procedure TfrmGoToLine.seLineKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then begin
    cmdGo.Click;
    Key := #0;
  end;
end;

end.
