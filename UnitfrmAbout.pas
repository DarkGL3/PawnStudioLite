unit UnitfrmAbout;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ShellAPI;

type
  TfrmAbout = class(TForm)
    InfoPanel: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    URLInfo: TLabel;
    procedure URLInfoClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.dfm}

procedure TfrmAbout.URLInfoClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'http://pawnstudio.sourceforge.net/', nil, nil, SW_SHOW);
end;

end.
 
