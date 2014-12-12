unit UnitfrmCreateNewFile;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, TBXDkPanels, SpTBXControls, ComCtrls,
  JvExComCtrls, JvListView, TB2Item, TBX, SpTBXItem, SpTBXTabs, ImgList,
  mbTBXButton, mbTBXPageScroller, Dialogs, PngImageList, IniFiles,
  PngImage;

type
  TfrmCreateNewFile = class(TForm)
    cmdOK: TSpTBXButton;
    cmdCancel: TSpTBXButton;
    lblDesignInfo: TSpTBXLabel;
    pnlBackground: TSpTBXPanel;
    pgsTabs: TmbTBXPageScroller;
    pnlBackground2: TSpTBXPanel;
    cmdAMXModX: TSpTBXButton;
    cmdSourceMod: TSpTBXButton;
    cmdHTML: TSpTBXButton;
    cmdPHP: TSpTBXButton;
    cmdXML: TSpTBXButton;
    cmdTextfiles: TSpTBXButton;
    pnlList: TSpTBXPanel;
    lvTemplates: TJvListView;
    ilLargeImages: TPngImageList;
    ilSmallImages: TPngImageList;
    ilButtons: TPngImageList;
    cmdPawn: TSpTBXButton;
    procedure cmdTabClick(Sender: TObject);
    procedure lvTemplatesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lvTemplatesDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pgsTabsConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure lvTemplatesChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
  public
    procedure Process;
    procedure LoadCategory(Category: String);
  end;

var
  frmCreateNewFile: TfrmCreateNewFile;

implementation

uses UnitfrmMain, UnitCodeInspector, UnitDocuments, UnitFunctions;

{$R *.DFM}

procedure TfrmCreateNewFile.cmdTabClick(Sender: TObject);
var i: Integer;
begin
  for i := 0 to Self.ComponentCount -1 do begin
    if (TWinControl(Self.Components[i]).Parent = pnlBackground2) then begin
      if (Self.Components[i] = Sender) then
        (Sender As TSpTBXButton).Checked := True
      else
        (Self.Components[i] As TSpTBXButton).Checked := False;
    end;
  end;

  if (pgsTabs.Position > (Sender As TSpTBXButton).Left) or (pgsTabs.Position + pgsTabs.Width < (Sender As TSpTBXButton).Left + (Sender As TSpTBXButton).Width + 4) then
    pgsTabs.ScrollToCenter(Rect((Sender As TSpTBXButton).Left, (Sender As TSpTBXButton).Top, (Sender As TSpTBXButton).Left + (Sender As TSpTBXButton).Width + 4, (Sender As TSpTBXButton).Height));

  LoadCategory((Sender As TSpTBXButton).Caption);

  lvTemplates.SetFocus;
end;

procedure TfrmCreateNewFile.lvTemplatesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  cmdOK.Enabled := Assigned(lvTemplates.Selected);
end;

procedure TfrmCreateNewFile.lvTemplatesDblClick(Sender: TObject);
begin
  if (Assigned(lvTemplates.Selected)) then
    cmdOK.Click;
end;

procedure TfrmCreateNewFile.Process;
begin
  NewDocument(lvTemplates.Selected.SubItems[0], GetFileContent(lvTemplates.Selected.SubItems[1]), PrepareTabTitle(lvTemplates.Selected.SubItems[2]), ExtractFileExt(lvTemplates.Selected.SubItems[2]), StrToIntDef(lvTemplates.Selected.SubItems[3], -1), lvTemplates.ItemIndex, (lvTemplates.Selected.SubItems[4] = '1'));
end;

procedure TfrmCreateNewFile.LoadCategory(Category: String);
var Categories: TStringList;
    IniFile: TIniFile;
    Icon1, Icon2: TPngImageCollectionItem;
    i: Integer;
begin
  if (Pos('(', Category) <> 0) then
    Category := Copy(Category, 1, Pos('(', Category) -1);
  Category := StringReplace(Trim(Category), ':', '', [rfReplaceAll]);
  // create objects, read sections
  IniFile := TIniFile.Create(ApplicationPath + 'Templates\' + Category + '\config.ini');
  Categories := TStringList.Create;
  IniFile.ReadSections(Categories);
  // begin update
  ilSmallImages.PngImages.BeginUpdate;
  ilLargeImages.PngImages.BeginUpdate;
  // clean up everything
  ilSmallImages.PngImages.Clear;
  ilLargeImages.PngImages.Clear;
  lvTemplates.Clear;
  // load templates
  for i := 0 to Categories.Count -1 do begin
    try
      // init images
      Icon1 := ilSmallImages.PngImages.Add;
      Icon2 := ilLargeImages.PngImages.Add;
      // load images
      Icon1.PngImage.LoadFromFile(ApplicationPath + 'Templates\Pictures\' + IniFile.ReadString(Categories[i], 'Icon', ''));
      Icon2.PngImage.LoadFromFile(ApplicationPath + 'Templates\Pictures\' + IniFile.ReadString(Categories[i], 'Icon_Big', ''));
      // add to list view
      with lvTemplates.Items.Add do begin
        Caption := IniFile.ReadString(Categories[i], 'Title', '');
        SubItems.Add(IniFile.ReadString(Categories[i], 'Highlighter', 'null'));
        SubItems.Add(ApplicationPath + 'Templates\' + Category + '\' + IniFile.ReadString(Categories[i], 'Source', ''));
        SubItems.Add(IniFile.ReadString(Categories[i], 'Tab', 'Untitled% NUM%.txt'));
        SubItems.Add(IniFile.ReadString(Categories[i], 'StartLine', '-1'));
        SubItems.Add(IniFile.ReadString(Categories[i], 'MarkStartLine', '0'));
        ImageIndex := Icon2.Index;
        StateIndex := ImageIndex;
      end;
    except
      on E: Exception do
        AddDebugLog('LoadCategory', 'ERROR: ' + E.Message + ' in frmCreateNewFile.LoadCategory(' + Category + ')!');
    end;
  end;
  // update done
  ilSmallImages.PngImages.EndUpdate;
  ilLargeImages.PngImages.EndUpdate;
  cmdOK.Enabled := (lvTemplates.Selected <> nil);
  // free objects
  Categories.Free;
  IniFile.Free;
end;

procedure TfrmCreateNewFile.FormCreate(Sender: TObject);
begin
  LoadCategory('AMX Mod X');
end;

procedure TfrmCreateNewFile.pgsTabsConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  pnlBackground2.Refresh;
end;

procedure TfrmCreateNewFile.lvTemplatesChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin
  cmdOK.Enabled := Assigned(lvTemplates.Selected);
end;

end.
