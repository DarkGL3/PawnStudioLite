unit UnitfrmPrint;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, SpTBXControls, TBXDkPanels, TntStdCtrls,
  SpTBXEditors, ImgList, PngImageList;

type
  TfrmPrint = class(TForm)
    pnlBackground: TSpTBXPanel;
    lblColorMode: TSpTBXLabel;
    cboColorMode: TSpTBXComboBox;
    lblFromPage: TSpTBXLabel;
    seFromPage: TSpTBXSpinEdit;
    lblToPage: TSpTBXLabel;
    seToPage: TSpTBXSpinEdit;
    lblMagnification: TSpTBXLabel;
    seMagnification: TSpTBXSpinEdit;
    lblTitle: TSpTBXLabel;
    txtTitle: TSpTBXEdit;
    chkPrintPageNumbers: TSpTBXCheckBox;
    cmdPrint: TSpTBXButton;
    cmdCancel: TSpTBXButton;
    ilButtons: TPngImageList;
    cboPrintRange: TSpTBXComboBox;
    lblPrintRange: TSpTBXLabel;
    lblWordWrap: TSpTBXLabel;
    cboWordWrap: TSpTBXComboBox;
    procedure cboPrintRangeChange(Sender: TObject);
  end;

var
  frmPrint: TfrmPrint;

implementation

{$R *.DFM}

procedure TfrmPrint.cboPrintRangeChange(Sender: TObject);
begin
  seFromPage.Enabled := (cboPrintRange.ItemIndex = 1);
  seToPage.Enabled := (cboPrintRange.ItemIndex = 1);
end;

end.
