unit UnitfrmExportAsHTML;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, TBXDkPanels, SpTBXControls, SpTBXEditors,
  ImgList, PngImageList, Dialogs;

type
  TfrmExportAsHTML = class(TForm)
    pnlBackground: TSpTBXPanel;
    cmdExport: TSpTBXButton;
    cmdCancel: TSpTBXButton;
    txtFilename: TSpTBXButtonEdit;
    txtTitle: TSpTBXEdit;
    lblTitle: TLabel;
    lblFilename: TLabel;
    ilButtons: TPngImageList;
    sdSave: TSaveDialog;
    procedure txtFieldChange(Sender: TObject);
    procedure txtFilenameSubEditButton0Click(Sender: TObject);
    procedure txtFieldKeyPress(Sender: TObject; var Key: Char);
  end;

var
  frmExportAsHTML: TfrmExportAsHTML;

implementation

{$R *.DFM}

procedure TfrmExportAsHTML.txtFieldChange(Sender: TObject);
begin
  cmdExport.Enabled := ((txtTitle.Text <> '') and (txtFilename.Text <> '') and (DirectoryExists(ExtractFilePath(txtFilename.Text))));
end;

procedure TfrmExportAsHTML.txtFilenameSubEditButton0Click(Sender: TObject);
begin
  if (sdSave.Execute) then begin
    if (sdSave.FilterIndex = 1) and (ExtractFileExt(sdSave.FileName) = '') then
      sdSave.FileName := sdSave.FileName + '.htm';
    txtFilename.Text := sdSave.FileName;
    txtFilename.SetFocus;
    txtFilename.SelectAll;
  end;
end;

procedure TfrmExportAsHTML.txtFieldKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (cmdExport.Enabled) and (Key = #13) then begin
    Key := #0;
    cmdExport.Click;
  end;
end;

end.
