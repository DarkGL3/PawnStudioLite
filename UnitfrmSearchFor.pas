unit UnitfrmSearchFor;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, TBXDkPanels, SpTBXControls, TntStdCtrls,
  SpTBXEditors, ImgList, PngImageList, Menus, TB2Item, TBX, SpTBXItem;

type
  TfrmSearchFor = class(TForm)
    pnlBackground: TSpTBXPanel;
    lblSearchFor: TSpTBXLabel;
    cboExpression: TSpTBXComboBox;
    pnlSettings: TSpTBXGroupBox;
    cmdRegEx: TSpTBXSpeedButton;
    cmdOk: TSpTBXButton;
    cmdCancel: TSpTBXButton;
    chkMatchWholeWord: TSpTBXCheckBox;
    chkCaseSensitive: TSpTBXCheckBox;
    chkRegEx: TSpTBXCheckBox;
    gbSearchDirection: TSpTBXGroupBox;
    optDown: TSpTBXRadioButton;
    ilButtons: TPngImageList;
    ppmRegEx: TSpTBXPopupMenu;
    mnlTitle: TSpTBXLabelItem;
    mnuTabChar: TSpTBXItem;
    mnuAnyChar: TSpTBXItem;
    mnuBeginningOfLine: TSpTBXItem;
    mnuEndOfLine: TSpTBXItem;
    sepRegEx1: TSpTBXSeparatorItem;
    mnuZeroOrMoreMatches: TSpTBXItem;
    mnuOneOrMoreMatches: TSpTBXItem;
    mnuZeroOrOneMatches: TSpTBXItem;
    sepRegEx2: TSpTBXSeparatorItem;
    mnuTaggedExpression: TSpTBXItem;
    cmdReplaceRegEx: TSpTBXSpeedButton;
    cboReplaceWith: TSpTBXComboBox;
    lblReplaceWith: TSpTBXLabel;
    ppmRegExReplace: TSpTBXPopupMenu;
    mnlRegEx: TSpTBXLabelItem;
    mnuTabCharacter: TSpTBXItem;
    mnuTaggedExpression1: TSpTBXItem;
    mnuTaggedExpression2: TSpTBXItem;
    sepRegExReplace: TSpTBXSeparatorItem;
    mnuTaggedExpression3: TSpTBXItem;
    mnuTaggedExpression4: TSpTBXItem;
    mnuTaggedExpression5: TSpTBXItem;
    mnuTaggedExpression6: TSpTBXItem;
    mnuTaggedExpression7: TSpTBXItem;
    mnuTaggedExpression8: TSpTBXItem;
    mnuTaggedExpression9: TSpTBXItem;
    chkSearchFromCaret: TSpTBXCheckBox;
    gbReplaceOptions: TSpTBXGroupBox;
    optReplace: TSpTBXRadioButton;
    optReplaceAll: TSpTBXRadioButton;
    optConfirm: TSpTBXRadioButton;
    optUp: TSpTBXRadioButton;
    mnuWildchar: TSpTBXItem;
    sepRegEx3: TSpTBXSeparatorItem;
    mnuDecimalQuantification: TSpTBXItem;
    mnuAlphabeticQuantification: TSpTBXItem;
    mnuWhitespace: TSpTBXItem;
    procedure mnuTabCharClick(Sender: TObject);
    procedure mnuAnyCharClick(Sender: TObject);
    procedure mnuBeginningOfLineClick(Sender: TObject);
    procedure mnuEndOfLineClick(Sender: TObject);
    procedure mnuZeroOrMoreMatchesClick(Sender: TObject);
    procedure mnuOneOrMoreMatchesClick(Sender: TObject);
    procedure mnuZeroOrOneMatchesClick(Sender: TObject);
    procedure mnuTaggedExpressionClick(Sender: TObject);
    procedure mnuTaggedExpressionReplaceClick(Sender: TObject);
    procedure mnuTabCharacterClick(Sender: TObject);
    procedure cboExpressionChange(Sender: TObject);
    procedure cboExpressionKeyPress(Sender: TObject; var Key: Char);
    procedure cmdOkClick(Sender: TObject);
    procedure mnuWildcharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuAlphabeticQuantificationClick(Sender: TObject);
    procedure mnuDecimalQuantificationClick(Sender: TObject);
    procedure mnuWhitespaceClick(Sender: TObject);
  end;

var
  frmSearchFor: TfrmSearchFor;

const
  SEARCH_HEIGHT = 196;
  REPLACE_HEIGHT = 279;
  PNL_SEARCH_TOP = 44;
  PNL_SEARCH_HEIGHT = 120;
  PNL_REPLACE_TOP = 82;
  PNL_REPLACE_HEIGHT = 163;

implementation

{$R *.DFM}

procedure TfrmSearchFor.mnuTabCharClick(Sender: TObject);
begin
  chkRegEx.Checked := True;
  cboExpression.SelText := '\t';
  cboExpression.SetFocus;
end;

procedure TfrmSearchFor.mnuAnyCharClick(Sender: TObject);
begin
  chkRegEx.Checked := True;
  cboExpression.SelText := '.';
  cboExpression.SetFocus;
end;

procedure TfrmSearchFor.mnuWildcharClick(Sender: TObject);
begin
  chkRegEx.Checked := True;
  cboExpression.SelText := '.*';
  cboExpression.SetFocus;
end;

procedure TfrmSearchFor.mnuBeginningOfLineClick(Sender: TObject);
begin
  chkRegEx.Checked := True;
  cboExpression.SelText := '^';
  cboExpression.SetFocus;
end;

procedure TfrmSearchFor.mnuEndOfLineClick(Sender: TObject);
begin
  chkRegEx.Checked := True;
  cboExpression.SelText := '$';
  cboExpression.SetFocus;
end;

procedure TfrmSearchFor.mnuZeroOrMoreMatchesClick(Sender: TObject);
begin
  chkRegEx.Checked := True;
  cboExpression.SelText := '*';
  cboExpression.SetFocus;
end;

procedure TfrmSearchFor.mnuOneOrMoreMatchesClick(Sender: TObject);
begin
  chkRegEx.Checked := True;
  cboExpression.SelText := '+';
  cboExpression.SetFocus;
end;

procedure TfrmSearchFor.mnuZeroOrOneMatchesClick(Sender: TObject);
begin
  chkRegEx.Checked := True;
  cboExpression.SelText := '?';
  cboExpression.SetFocus;
end;

procedure TfrmSearchFor.mnuWhitespaceClick(Sender: TObject);
begin
  chkRegEx.Checked := True;
  cboExpression.SelText := '\s';
  cboExpression.SetFocus;
end;

procedure TfrmSearchFor.mnuDecimalQuantificationClick(Sender: TObject);
begin
  chkRegEx.Checked := True;
  cboExpression.SelText := '[0-9]';
  cboExpression.SelStart := cboExpression.SelStart -4;
  cboExpression.SelLength := 1;
  cboExpression.SetFocus;
end;

procedure TfrmSearchFor.mnuAlphabeticQuantificationClick(Sender: TObject);
begin
  chkRegEx.Checked := True;
  cboExpression.SelText := '[a-z]';
  cboExpression.SelStart := cboExpression.SelStart -4;
  cboExpression.SelLength := 1;
  cboExpression.SetFocus;
end;

procedure TfrmSearchFor.mnuTaggedExpressionClick(Sender: TObject);
begin
  chkRegEx.Checked := True;
  cboExpression.SelText := '\(\)';
  cboExpression.SelStart := cboExpression.SelStart -2;
  cboExpression.SetFocus;
end;


procedure TfrmSearchFor.mnuTabCharacterClick(Sender: TObject);
begin
  chkRegEx.Checked := True;
  cboReplaceWith.SelText := '\t';
  cboReplaceWith.SetFocus;
end;

procedure TfrmSearchFor.mnuTaggedExpressionReplaceClick(Sender: TObject);
begin
  chkRegEx.Checked := True;
  cboReplaceWith.SelText := '\' + IntToStr(TSpTBXComboBox(Sender).Tag);
  cboReplaceWith.SetFocus;
end;

procedure TfrmSearchFor.cboExpressionChange(Sender: TObject);
begin
  cmdOk.Enabled := (cboExpression.Text <> '');
end;

procedure TfrmSearchFor.cboExpressionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then begin
    cmdOk.Click;
    Key := #0;
  end;
end;

procedure TfrmSearchFor.cmdOkClick(Sender: TObject);
begin
  if (cboExpression.Items.IndexOf(cboExpression.Text) = -1) then
    cboExpression.Items.Add(cboExpression.Text);

  if (cboReplaceWith.Items.IndexOf(cboReplaceWith.Text) = -1) and (cmdOk.ImageIndex = 1) then
    cboReplaceWith.Items.Add(cboReplaceWith.Text);
end;

procedure TfrmSearchFor.FormShow(Sender: TObject);
begin
  cboExpression.SetFocus;
end;


end.
