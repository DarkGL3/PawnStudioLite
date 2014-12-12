unit UnitfrmInputBox;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, SpTBXControls, SpTBXEditors, TBXDkPanels;

type
  TfrmInputBox = class(TForm)
    pnlBackground: TSpTBXPanel;
    lblInfo: TSpTBXLabel;
    txtValue: TSpTBXEdit;
    cmdOK: TSpTBXButton;
    cmdCancel: TSpTBXButton;
    procedure txtValueKeyPress(Sender: TObject; var Key: Char);
    procedure txtValueChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    AllowEmpty: Boolean;
    AllowedChars: String;
  public
    function ShowQuery(eAllowEmpty: Boolean; eAllowedChars, eInfoText, eValueText, eTitle: String; var Value: String): Boolean;
  end;

var
  frmInputBox: TfrmInputBox;

implementation

uses UnitfrmSettings;

{$R *.DFM}

{ TfrmInputBox }

function TfrmInputBox.ShowQuery(eAllowEmpty: Boolean; eAllowedChars, eInfoText,
  eValueText, eTitle: String; var Value: String): Boolean;
begin
  lblInfo.Caption := eInfoText;
  txtValue.Text := eValueText;
  Caption := eTitle;

  AllowEmpty := eAllowEmpty;
  cmdOk.Enabled := (AllowEmpty) or (eValueText <> '');
  AllowedChars := eAllowedChars;

  Result := (ShowModal = mrOk);
  Value := txtValue.Text;
end;

procedure TfrmInputBox.txtValueKeyPress(Sender: TObject; var Key: Char);
begin
  if (AllowedChars <> '*') and (Trim(Key) <> '') and (Pos(Key, AllowedChars) = 0) then begin
    Key := #0;
    SysUtils.Beep;
  end;
end;

procedure TfrmInputBox.txtValueChange(Sender: TObject);
begin
  cmdOk.Enabled := (AllowEmpty) or (txtValue.Text <> '');
end;

procedure TfrmInputBox.FormShow(Sender: TObject);
begin
  Height := 99 + lblInfo.Height;
end;

end.
