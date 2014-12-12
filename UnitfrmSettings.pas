unit UnitfrmSettings;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, ImgList, PngImageList, TBXDkPanels,
  SpTBXControls, SpTBXTabs, TB2Item, TBX, SpTBXItem, ComCtrls,
  mbTBXTreeView, JvExComCtrls, JvComCtrls, CommCtrl, JvExControls,
  JvComponent, JvPageList, TntStdCtrls, SpTBXEditors, mbColorPreview,
  JvListView, Consts, mbTBXImageCheck, mbTBXComboBox, mbTBXImageComboBox,
  pngimage, mbTBXArrowButton, mbTBXImageListCombo, Menus, Dialogs,
  ScintillaLanguageManager, SciKeyBindings, mbTBXColorBox,
  SciLexer, SciLexerMod, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, IdUDPClient, IdUDPBase, umysqlvio, uMysqlCT,
  uMysqlClient, uMysqlHelpers, FileCtrl, SciLexerMemo;

type
  TfrmSettings = class(TForm)
    pnlBackground: TSpTBXPanel;
    cmdOK: TSpTBXButton;
    cmdCancel: TSpTBXButton;
    pnlSettings: TSpTBXPanel;
    pnlTreeView: TSpTBXPanel;
    jplPages: TJvPageList;
    jspCaption: TJvStandardPage;
    pnlCaption: TSpTBXPanel;
    lblCategory: TSpTBXLabel;
    lblDescription: TSpTBXLabel;
    jspGeneral: TJvStandardPage;
    pnlGeneral: TSpTBXPanel;
    lblGeneral: TSpTBXLabel;
    jspHighlighter: TJvStandardPage;
    pnlHighlighter: TSpTBXPanel;
    lblHighlighter: TSpTBXLabel;
    lblLanguage: TSpTBXLabel;
    cboLanguage: TSpTBXComboBox;
    lstStyles: TSpTBXListBox;
    lblStyles: TSpTBXLabel;
    lblProperties: TSpTBXLabel;
    pnlProperties: TSpTBXPanel;
    lblFont: TSpTBXLabel;
    chkUseDefaultFont: TSpTBXCheckBox;
    chkBold: TSpTBXCheckBox;
    chkItalic: TSpTBXCheckBox;
    chkUnderlined: TSpTBXCheckBox;
    chkVisible: TSpTBXCheckBox;
    seFontSize: TSpTBXSpinEdit;
    lblFontSize: TSpTBXLabel;
    lblForeground: TSpTBXLabel;
    cmdSelectForeground: TSpTBXButton;
    cpForeground: TmbColorPreview;
    cmdSelectBackground: TSpTBXButton;
    cpBackground: TmbColorPreview;
    lblBackground: TSpTBXLabel;
    cboFonts: TSpTBXComboBox;
    jspShortcuts: TJvStandardPage;
    pnlShortcuts: TSpTBXPanel;
    lblShortcuts: TSpTBXLabel;
    jspIndentation: TJvStandardPage;
    pnlIndentation: TSpTBXPanel;
    lblIndentation: TSpTBXLabel;
    jspCompilers: TJvStandardPage;
    pnlCompilers: TSpTBXPanel;
    lblCompilers: TSpTBXLabel;
    jspServersFTP: TJvStandardPage;
    pnlServersFTP: TSpTBXPanel;
    lblServersFTP: TSpTBXLabel;
    ilSettingsList: TPngImageList;
    ilButtons: TPngImageList;
    pnlStartingBehavior: TSpTBXGroupBox;
    chkShowStartPage: TSpTBXCheckBox;
    lblStartPageSubstitute: TSpTBXLabel;
    cboFileTypes: TSpTBXComboBox;
    pnlProfiles: TSpTBXGroupBox;
    cboProfiles: TSpTBXComboBox;
    cmdNewProfile: TSpTBXButton;
    cmdDeleteProfile: TSpTBXButton;
    pnlShortcutsContent: TSpTBXPanel;
    lvShortcuts: TJvListView;
    cmdEditShortcut: TSpTBXButton;
    cmdResetShortcuts: TSpTBXButton;
    jspOther: TJvStandardPage;
    pnlMisc: TSpTBXPanel;
    lblOther: TSpTBXLabel;
    pnlTools: TSpTBXGroupBox;
    chkAutoCloseBraces: TSpTBXCheckBox;
    chkAutoCloseQuotes: TSpTBXCheckBox;
    chkEnableModMarkers: TSpTBXCheckBox;
    pnlCaret: TSpTBXGroupBox;
    lblCaretFG: TSpTBXLabel;
    lblCaretBG: TSpTBXLabel;
    pnlPeriod: TSpTBXPanel;
    lblPeriod: TSpTBXLabel;
    sePeriod: TSpTBXSpinEdit;
    chkShowCaret: TSpTBXCheckBox;
    pnlCodeFolding: TSpTBXGroupBox;
    cboCodeFoldingStyle: TSpTBXComboBox;
    lblCodeFoldingStyle: TSpTBXLabel;
    chkHighlightBraces: TSpTBXCheckBox;
    lblBookmarkDesign: TSpTBXLabel;
    cboBookmarkDesign: TSpTBXComboBox;
    cmdAdvancedSettings: TSpTBXButton;
    jspClamSense: TJvStandardPage;
    pnlClamSense: TSpTBXPanel;
    lblClamSense: TSpTBXLabel;
    pnlMiscGeneral: TSpTBXGroupBox;
    chkIndentTemplates: TSpTBXCheckBox;
    chkReloadSavedFiles: TSpTBXCheckBox;
    pnlIndentationSettings: TSpTBXGroupBox;
    chkAutoIndent: TSpTBXCheckBox;
    chkIndentOpeningBrace: TSpTBXCheckBox;
    chkUnindentClosingBrace: TSpTBXCheckBox;
    chkUnindentPrevLine: TSpTBXCheckBox;
    chkIndentionGuides: TSpTBXCheckBox;
    pnlIndentationStyle: TSpTBXGroupBox;
    optTabs: TSpTBXRadioButton;
    optTwoSpaces: TSpTBXRadioButton;
    optCustomString: TSpTBXRadioButton;
    txtCustomString: TSpTBXEdit;
    cboLanguages: TSpTBXComboBox;
    lblCompilerLanguage: TSpTBXLabel;
    pnlCompiler: TSpTBXGroupBox;
    lblCompilerFilename: TSpTBXLabel;
    txtCompilerFilename: TSpTBXButtonEdit;
    lblArguments: TSpTBXLabel;
    txtArguments: TSpTBXEdit;
    txtDefaultOutputDir: TSpTBXButtonEdit;
    lblDefaultOutputDir: TSpTBXLabel;
    jspServersRCON: TJvStandardPage;
    jspServersSQL: TJvStandardPage;
    lblFTPServers: TSpTBXLabel;
    lstFTPServers: TSpTBXListBox;
    pnlFTPDetails: TSpTBXGroupBox;
    cmdAddFTP: TSpTBXButton;
    cmdDeleteFTP: TSpTBXButton;
    lblFTPHost: TSpTBXLabel;
    txtFTPHost: TSpTBXEdit;
    txtFTPPort: TSpTBXEdit;
    lblFTPPort: TSpTBXLabel;
    lblFTPUsername: TSpTBXLabel;
    txtFTPUsername: TSpTBXEdit;
    txtFTPPassword: TSpTBXEdit;
    lblFTPPassword: TSpTBXLabel;
    lblFTPDestinationInfo: TSpTBXLabel;
    trvFTPDestination: TmbTBXTreeView;
    pnlServersRCON: TSpTBXPanel;
    lblServersRCON: TSpTBXLabel;
    lblRCONServers: TSpTBXLabel;
    lstRCONServers: TSpTBXListBox;
    cmdAddRCON: TSpTBXButton;
    cmdDeleteRCON: TSpTBXButton;
    pnlServersSQL: TSpTBXPanel;
    lblServersSQL: TSpTBXLabel;
    lblSQLServers: TSpTBXLabel;
    lstSQLServers: TSpTBXListBox;
    cmdAddSQL: TSpTBXButton;
    cmdDeleteSQL: TSpTBXButton;
    pnlRCONDetails: TSpTBXGroupBox;
    lblRCONHost: TSpTBXLabel;
    txtRCONHost: TSpTBXEdit;
    txtRCONPort: TSpTBXEdit;
    lblRCONPort: TSpTBXLabel;
    txtRCONUsername: TSpTBXEdit;
    lblRCONUsername: TSpTBXLabel;
    cmdRCONCheck: TSpTBXButton;
    pnlSQLDetails: TSpTBXGroupBox;
    lblSQLHost: TSpTBXLabel;
    txtSQLHost: TSpTBXEdit;
    txtSQLPort: TSpTBXEdit;
    lblSQLPort: TSpTBXLabel;
    lblSQLDatabase: TSpTBXLabel;
    txtSQLDatabase: TSpTBXEdit;
    ilBigIcons: TPngImageList;
    lblRCONServerType: TSpTBXLabel;
    cboRCONServerType: TSpTBXComboBox;
    lblConnectInfo: TSpTBXLabel;
    ppmTitle: TSpTBXPopupMenu;
    mnuCountSpecifier: TSpTBXItem;
    lblGameExecutable: TSpTBXLabel;
    txtGameExecutable: TSpTBXButtonEdit;
    chkCaptureOutput: TSpTBXCheckBox;
    chkSaveToOrigFile: TSpTBXCheckBox;
    chkSetOutputAlignment: TSpTBXCheckBox;
    odCompiler: TOpenDialog;
    txtRCONPassword: TSpTBXEdit;
    lblRCONPassword: TSpTBXLabel;
    jspMiscellaneous: TJvStandardPage;
    pnlMiscellaneous: TSpTBXPanel;
    lblMiscellaneous: TSpTBXLabel;
    pnlTemplateSettings: TSpTBXGroupBox;
    lblPluginName: TSpTBXLabel;
    txtPluginName: TSpTBXEdit;
    lblPluginVersion: TSpTBXLabel;
    txtPluginVersion: TSpTBXEdit;
    txtPluginAuthor: TSpTBXEdit;
    lblPluginAuthor: TSpTBXLabel;
    pnlSearchDialogs: TSpTBXGroupBox;
    chkUseOldSearchDialog: TSpTBXCheckBox;
    chkUseOldReplaceDialog: TSpTBXCheckBox;
    pnlSearchToolbar: TSpTBXGroupBox;
    chkSearchFromCaret: TSpTBXCheckBox;
    chkMatchWholeWord: TSpTBXCheckBox;
    chkCaseSensitive: TSpTBXCheckBox;
    chkRegEx: TSpTBXCheckBox;
    chkSearchForward: TSpTBXCheckBox;
    pnlOutputList: TSpTBXGroupBox;
    chkShowCompilationTime: TSpTBXCheckBox;
    chkAutoScroll: TSpTBXCheckBox;
    chkTrimOutput: TSpTBXCheckBox;
    hkEditShortcut: THotKey;
    cmdSelectCaretFore: TSpTBXButton;
    cpCaretFore: TmbColorPreview;
    cpCaretBack: TmbColorPreview;
    cmdSelectColorBack: TSpTBXButton;
    chkHandleOLS: TSpTBXCheckBox;
    IdFTP: TIdFTP;
    lblSQLUsername: TSpTBXLabel;
    txtSQLUsername: TSpTBXEdit;
    txtSQLPassword: TSpTBXEdit;
    lblSQLPassword: TSpTBXLabel;
    cmdSQLCheck: TSpTBXButton;
    chkCopyToOutputDir: TSpTBXCheckBox;
    trvSettings: TTreeView;
    pnlClamSenseSettings: TSpTBXGroupBox;
    pnlAutoComplete: TSpTBXGroupBox;
    chkShowFilters: TSpTBXCheckBox;
    chkShowList: TSpTBXCheckBox;
    chkEnableAC: TSpTBXCheckBox;
    chkTabCompletes: TSpTBXCheckBox;
    pnlCallTips: TSpTBXGroupBox;
    chkEnableCallTips: TSpTBXCheckBox;
    chkAutoInsert: TSpTBXCheckBox;
    chkIntelligentCommentBehavior: TSpTBXCheckBox;
    chkAutoScrollBack: TSpTBXCheckBox;
    chkHighlightParams: TSpTBXCheckBox;
    chkEditorOwnsCalltip: TSpTBXCheckBox;
    chkAutoShowCalltip: TSpTBXCheckBox;
    chkAutoHideCT: TSpTBXCheckBox;
    lblTabSize: TSpTBXLabel;
    txtTabSize: TSpTBXEdit;
    lblTabSpaces: TSpTBXLabel;
    procedure FormCreate(Sender: TObject);
    procedure trvSettingsAdvancedCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
      var PaintImages, DefaultDraw: Boolean);
    procedure trvSettingsCollapsing(Sender: TObject; Node: TTreeNode;
      var AllowCollapse: Boolean);
    procedure cboFontsDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure trvSettingsChange(Sender: TObject; Node: TTreeNode);
    procedure cmdNewProfileClick(Sender: TObject);
    procedure cmdDeleteProfileClick(Sender: TObject);
    procedure cboProfilesClick(Sender: TObject);
    procedure chkShowStartPageClick(Sender: TObject);
    procedure cboLanguageChange(Sender: TObject);
    procedure lstStylesClick(Sender: TObject);
    procedure chkUseDefaultFontClick(Sender: TObject);
    procedure chkVisibleClick(Sender: TObject);
    procedure chkBoldClick(Sender: TObject);
    procedure chkItalicClick(Sender: TObject);
    procedure chkUnderlinedClick(Sender: TObject);
    procedure seFontSizeValueChanged(Sender: TObject);
    procedure cmdSelectForegroundClick(Sender: TObject);
    procedure cmdSelectBackgroundClick(Sender: TObject);
    procedure cboFontsChange(Sender: TObject);
    procedure lstStylesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lvShortcutsDblClick(Sender: TObject);
    procedure cmdEditShortcutClick(Sender: TObject);
    procedure hkEditShortcutExit(Sender: TObject);
    procedure lvShortcutsClick(Sender: TObject);
    procedure hkEditShortcutChange(Sender: TObject);
    procedure cmdResetShortcutsClick(Sender: TObject);
    procedure cmdSelectCaretForeClick(Sender: TObject);
    procedure cmdSelectColorBackClick(Sender: TObject);
    procedure sePeriodValueChanged(Sender: TObject);
    procedure chkShowCaretClick(Sender: TObject);
    procedure chkAutoCloseBracesClick(Sender: TObject);
    procedure chkAutoCloseQuotesClick(Sender: TObject);
    procedure chkEnableModMarkersClick(Sender: TObject);
    procedure cboCodeFoldingStyleChange(Sender: TObject);
    procedure cboBookmarkDesignChange(Sender: TObject);
    procedure cmdAdvancedSettingsClick(Sender: TObject);
    procedure txtFTPPortChange(Sender: TObject);
    procedure txtFTPControlExit(Sender: TObject);
    procedure trvFTPDestinationDblClick(Sender: TObject);
    procedure IdFTPAfterClientLogin(Sender: TObject);
    procedure trvFTPDestinationExpanded(Sender: TObject; Node: TTreeNode);
    procedure trvFTPDestinationChange(Sender: TObject; Node: TTreeNode);
    procedure trvFTPDestinationMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure trvFTPDestinationCollapsed(Sender: TObject; Node: TTreeNode);
    procedure lstFTPServersClick(Sender: TObject);
    procedure cmdAddFTPClick(Sender: TObject);
    procedure cmdDeleteFTPClick(Sender: TObject);
    procedure cmdAddRCONClick(Sender: TObject);
    procedure cmdDeleteRCONClick(Sender: TObject);
    procedure lstRCONServersClick(Sender: TObject);
    procedure cboRCONServerTypeChange(Sender: TObject);
    procedure txtRCONPortChange(Sender: TObject);
    procedure txtRCONHostExit(Sender: TObject);
    procedure cmdRCONCheckClick(Sender: TObject);
    procedure cmdAddSQLClick(Sender: TObject);
    procedure cmdDeleteSQLClick(Sender: TObject);
    procedure lstSQLServersClick(Sender: TObject);
    procedure txtSQLPortChange(Sender: TObject);
    procedure txtSQLPortExit(Sender: TObject);
    procedure cmdSQLCheckClick(Sender: TObject);
    procedure txtCompilerFilenameSubEditButton0Click(Sender: TObject);
    procedure txtGameExecutableSubEditButton0Click(Sender: TObject);
    procedure txtDefaultOutputDirSubEditButton0Click(Sender: TObject);
    procedure cboLanguagesChange(Sender: TObject);
    procedure txtCompilerExit(Sender: TObject);
    procedure chkCompilerClick(Sender: TObject);
    procedure sePeriodChange(Sender: TObject);
    procedure chkHighlightBracesClick(Sender: TObject);
    procedure chkIndentTemplatesClick(Sender: TObject);
    procedure chkReloadSavedFilesClick(Sender: TObject);
    procedure txtPluginNameChange(Sender: TObject);
    procedure txtPluginVersionChange(Sender: TObject);
    procedure txtPluginAuthorChange(Sender: TObject);
    procedure chkUseOldSearchDialogClick(Sender: TObject);
    procedure chkUseOldReplaceDialogClick(Sender: TObject);
    procedure chkSearchClick(Sender: TObject);
    procedure chkIndentionGuidesClick(Sender: TObject);
    procedure optIndentationClick(Sender: TObject);
    procedure txtCustomStringChange(Sender: TObject);
    procedure chkAutoIndentClick(Sender: TObject);
    procedure chkIndentOpeningBraceClick(Sender: TObject);
    procedure chkUnindentClosingBraceClick(Sender: TObject);
    procedure chkUnindentPrevLineClick(Sender: TObject);
    procedure chkHandleOLSClick(Sender: TObject);
    procedure chkShowCompilationTimeClick(Sender: TObject);
    procedure chkAutoScrollClick(Sender: TObject);
    procedure chkTrimOutputClick(Sender: TObject);
    procedure chkEnableACClick(Sender: TObject);
    procedure chkShowListClick(Sender: TObject);
    procedure chkShowFiltersClick(Sender: TObject);
    procedure chkTabCompletesClick(Sender: TObject);
    procedure cboFileTypesChange(Sender: TObject);
    procedure chkAutoInsertClick(Sender: TObject);
    procedure chkIntelligentCommentBehaviorClick(Sender: TObject);
    procedure chkEnableCallTipsClick(Sender: TObject);
    procedure chkAutoScrollBackClick(Sender: TObject);
    procedure chkHighlightParamsClick(Sender: TObject);
    procedure chkEditorOwnsCalltipClick(Sender: TObject);
    procedure chkAutoShowCalltipClick(Sender: TObject);
    procedure chkAutoHideCTClick(Sender: TObject);
    procedure txtTabSizeChange(Sender: TObject);
    procedure txtTabSizeKeyPress(Sender: TObject; var Key: Char);
  public
    function GetLangFromIdx(Idx: Integer): String;
    procedure UpdateDialog;
    procedure DisconnectFTP;
  private
    OldProfileIdx: Integer;
    CurrLang: TSciLangItem;
    CurrStyle: TSciStyle;
  end;

var
  frmSettings: TfrmSettings;

const
  SAMP_LENGTH = 22;
  SAMP_COMMAND = 'echo Pawn Studio: Test';

implementation

uses UnitFunctions, UnitConfigManager, UnitfrmMain, UnitfrmInputBox,
  UnitExtensionManager, UnitDocuments, UnitfrmSelectColor, UnitXPMs;

{$R *.DFM}

procedure TfrmSettings.FormCreate(Sender: TObject);
var i: integer;
    Buff: String;
    Exts: TStringList;
    Ext: TExtension;
begin
  // okay, expand it
  trvSettings.Items[0].Expand(True);
  // change the item height a little bit
  TreeView_SetItemHeight(trvSettings.Handle, 18);
  trvSettings.Perform(WM_VSCROLL, SB_TOP, 0);
  // create configuration and load it
  OldProfileIdx := -1;
  Configuration := TConfiguration.Create;
  cboProfiles.Items.Text := GetProfiles;
  if (FileExists(ApplicationPath + 'configs\Configuration.prof')) then
    LoadConfig(ApplicationPath + 'configs\Configuration.prof')
  else
    SetDefaults;
  cboProfiles.ItemIndex := cboProfiles.Items.Add(Configuration.ProfileName);
  cmdDeleteProfile.Enabled := (cboProfiles.Items.Count > 1) or (cboProfiles.Items[0] <> '(Default)');
  OldProfileIdx := cboProfiles.ItemIndex;
  // set profile box on start page
  frmMain.cboProfiles.Items.Assign(cboProfiles.Items);
  frmMain.cboProfiles.ItemIndex := cboProfiles.ItemIndex;
  frmMain.cmdDeleteProfile.Enabled := cmdDeleteProfile.Enabled;
  // set some values on this dialog
  cboFileTypes.Items.Assign(BigFileList);
  cboFileTypes.ItemIndex := Configuration.StartPageSubstitute;
  chkShowStartPage.Enabled := (BigFileList.Count > 0);
  // show recent files
  Exts := TStringList.Create;
  for i := Configuration.RecentFiles.Count -1 downto 0 do begin
    if (FileExists(Configuration.RecentFiles[i])) then begin
      with frmMain.lvRecentFiles.Items.Insert(0) do begin
        // icon first
        Buff := LowerCase(ExtractFileExt(Configuration.RecentFiles[i]));
        if (Exts.IndexOf(Buff) = -1) then begin
          Ext := GetExtension(Buff, GetFileContent(Configuration.RecentFiles[i]));
          if (Ext = nil) then begin
            if (Textfile = nil) then
              ImageIndex := -1
            else
              ImageIndex := -(Textfile.IconIndex +1);
          end
          else begin
            ImageIndex := -(Ext.IconIndex +1);
            Exts.AddObject(Buff, Ext);
          end;
        end
        else begin
          Ext := TExtension(Exts.Objects[Exts.IndexOf(Buff)]);
          ImageIndex := -(Ext.IconIndex +1);
        end;
        // then everything else
        Caption := ExtractFileName(Configuration.RecentFiles[i]);
        if (Ext = nil) then
          SubItems.Add(Textfile.FileType)
        else
          SubItems.Add(Ext.FileType);
        SubItems.Add(DateTimeToStr(GetFileLastModified(Configuration.RecentFiles[i])));
        // don't forget to save filename
        Data := PChar(Configuration.RecentFiles[i]);
      end;
    end
    else
      Configuration.RecentFiles.Delete(i);
  end;
  Exts.Free;
end;

procedure TfrmSettings.trvSettingsAdvancedCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  Stage: TCustomDrawStage; var PaintImages, DefaultDraw: Boolean);
begin
  if (Node.Index = 0) and (not Assigned(Node.Parent)) then begin
    DefaultDraw := False;

    trvSettings.Canvas.Font.Style := [fsBold];
    if (cdsFocused in State) then begin
      trvSettings.Canvas.Rectangle(0, 0, trvSettings.Canvas.TextWidth(Node.Text)+5, TreeView_GetItemHeight(trvSettings.Handle));
      trvSettings.Canvas.DrawFocusRect(Rect(1, 0, trvSettings.Canvas.TextWidth(Node.Text)+5, TreeView_GetItemHeight(trvSettings.Handle)));
    end
    else begin
      trvSettings.Canvas.Pen.Color := trvSettings.Canvas.Brush.Color;
      trvSettings.Canvas.Rectangle(0, 0, trvSettings.Canvas.TextWidth(Node.Text)+5, TreeView_GetItemHeight(trvSettings.Handle));
    end;
    trvSettings.Canvas.TextOut(3, 2, Node.Text);
  end;
end;

procedure TfrmSettings.trvSettingsCollapsing(Sender: TObject;
  Node: TTreeNode; var AllowCollapse: Boolean);
begin
  AllowCollapse := (Node.Index <> 0) and (Assigned(Node.Parent));
end;

procedure TfrmSettings.cboFontsDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  if (Index = -1) then exit;
  
  with cboFonts.Canvas do begin
    Pen.Color := Brush.Color;
    Rectangle(Rect);
    Font.Name := cboFonts.Items[Index];
    TextOut(Rect.Left, Rect.Top + ((Rect.Bottom - Rect.Top) div 2) - (TextHeight(cboFonts.Items[Index]) div 2), cboFonts.Items[Index]);
  end;
end;

procedure TfrmSettings.trvSettingsChange(Sender: TObject; Node: TTreeNode);
begin
  // if it's our settings node
  if (not Assigned(Node.Parent)) then begin
    lblCategory.Caption := 'Settings';
    lblDescription.Caption := 'This dialog allows you to configure Pawn Studio.';
    jspCaption.Show;
  end
  // if it's a head category
  else if (not Assigned(Node.Parent.Parent)) then begin
    case Node.Index of
      0: jspGeneral.Show;       // General
      1: begin                  // Editor
        lblCategory.Caption := 'Editor';
        lblDescription.Caption := 'You can customize Pawn Studio''s editor control here.';
        jspCaption.Show;
      end;
      2: jspCompilers.Show;     // Compilers
      3: begin                  // Servers
        lblCategory.Caption := 'Servers';
        lblDescription.Caption := 'In this category you can modify Pawn Studio''s server list.';
        jspCaption.Show;
      end;
      4: jspClamSense.Show;     // ClamSense
      5: jspMiscellaneous.Show; // Misc
    end;
  end
  // if it's a sub category
  else begin
    { Editor }
    if (Node.Parent.Index = 1) then begin
      case Node.Index of
        0: jspHighlighter.Show; // Editor -> Highlighter
        1: jspShortcuts.Show;   // Editor -> Shortcuts
        2: jspIndentation.Show; // Editor -> Indentation
        3: jspOther.Show;       // Editor -> Other
      end;
    end
    else begin
      case Node.Index of
        0: jspServersFTP.Show;  // Servers - FTP
        1: jspServersRCON.Show; // Servers - RCON
        2: jspServersSQL.Show;  // Servers - MySQL
      end;
    end;
  end;
end;

procedure TfrmSettings.cmdNewProfileClick(Sender: TObject);
function EntryExists(Str: String; Items: TStrings): Boolean;
var i: integer;
begin
  Result := False;
  
  Str := LowerCase(Str);
  for i := 0 to Items.Count -1 do begin
    if (LowerCase(Items[i]) = Str) then begin
      Result := True;
      break;
    end;
  end;
end;

var Res: String;
begin
  if (frmInputBox.ShowQuery(False, 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890()', 'Please enter the name for your new profile:', '', 'New Profile...', Res)) then begin
    Res := Trim(Res);
    if (Pos(Res, cboProfiles.Items.Text) <> 0) then // Pos is case-insensitive, see delphi help
      MessageBox(Handle, 'This profile already exists, please choose another one.', 'Error', MB_ICONWARNING)
    else begin
      // activate new profile
      cboProfiles.ItemIndex := cboProfiles.Items.Add(Res);
      frmMain.cboProfiles.ItemIndex := frmMain.cboProfiles.Items.Add(Res);
      cboProfiles.OnClick(Sender);
      // hah, now we can delete profiles (we have more than two profiles)
      cmdDeleteProfile.Enabled := True;
      frmMain.cmdDeleteProfile.Enabled := True;
    end;
  end;
end;

procedure TfrmSettings.cmdDeleteProfileClick(Sender: TObject);
var Idx: Integer;
begin
  if (MessageBox(Handle, 'Are you sure you want to delete the selected profile?', 'Question', MB_ICONQUESTION or MB_YESNO) = mrYes) then begin
    // well, we need to know an alternative profile
    Idx := cboProfiles.ItemIndex;
    if (Idx > 0) then
      Dec(Idx, 1);
    // delete old profile file
    if (FileExists(ApplicationPath + 'configs\' + cboProfiles.Items[cboProfiles.ItemIndex] + '.prof')) then
      SysUtils.DeleteFile(ApplicationPath + 'configs\' + cboProfiles.Items[cboProfiles.ItemIndex] + '.prof');
    // delete profile and select new one
    cboProfiles.Items.Delete(cboProfiles.ItemIndex);
    cboProfiles.ItemIndex := Idx;
    // add item to profile list if it's empty
    if (cboProfiles.Items.Count = 0) then begin
      cboProfiles.ItemIndex := cboProfiles.Items.Add('(Default)');
      Configuration.ProfileName := '(Default)';
      OldProfileIdx := 0; // save this
    end
    else
      OldProfileIdx := -1;
    // activate alternative profile
    cboProfiles.OnClick(Sender);
    // set values on start page
    frmMain.cboProfiles.Items.Assign(cboProfiles.Items);
    frmMain.cboProfiles.ItemIndex := Idx;
    // check if delete button can be enabled
    cmdDeleteProfile.Enabled := (cboProfiles.Items.Count > 1) or (cboProfiles.Items[0] <> '(Default)');
    frmMain.cmdDeleteProfile.Enabled := cmdDeleteProfile.Enabled;
  end;
end;

procedure TfrmSettings.cboProfilesClick(Sender: TObject);
procedure ReplaceFile(eFile, eWith: String);
begin
  if (FileExists(eWith)) then begin
    if (FileExists(eFile)) then
      SysUtils.DeleteFile(eFile);
    CopyFile(PChar(eWith), PChar(eFile), False);
    SysUtils.DeleteFile(eWith);
  end;
end;

var StrStream: TStringStream;
begin
  if (cboProfiles.ItemIndex <> -1) and (cboProfiles.Items.Count > 1) and (cboProfiles.ItemIndex <> OldProfileIdx) then begin
    StrStream := TStringStream.Create('');
    // save current editor settings
    frmMain.sciPropLoader.SaveToStream(StrStream);
    Configuration.EditorSettings := StrStream.DataString;
    StrStream.Free;
    // save active configuration to profile's own file
    if (OldProfileIdx <> -1) then begin
      Configuration.ProfileName := cboProfiles.Items[OldProfileIdx];
      SaveConfig(ApplicationPath + 'configs\' + Configuration.ProfileName + '.prof');
      Configuration.ProfileName := cboProfiles.Items[cboProfiles.ItemIndex];
    end;
    // replace configuration file with new config
    ReplaceFile(ApplicationPath + 'configs\Configuration.prof', ApplicationPath + 'configs\' + cboProfiles.Items[cboProfiles.ItemIndex] + '.prof');
    // load new config or create if it doesn't exist
    if (FileExists(ApplicationPath + 'configs\Configuration.prof')) then
      LoadConfig(ApplicationPath + 'configs\Configuration.prof')
    else
      SaveConfig(ApplicationPath + 'configs\Configuration.prof');
    // set profile idx on start page
    frmMain.cboProfiles.ItemIndex := cboProfiles.ItemIndex;
    // ooh, and set OldProfileIdx
    OldProfileIdx := cboProfiles.ItemIndex;
  end;
end;

function TfrmSettings.GetLangFromIdx(Idx: Integer): String;
begin
  case Idx of
    0: Result := 'AMXModX';
    1: Result := 'SourceMod';
    2: Result := 'Pawn';
    6: Result := 'EMailMessage';
    9: Result := 'MSSQL';
    else Result := cboLanguages.Items[Idx];
  end;
end;

procedure TfrmSettings.cboLanguageChange(Sender: TObject);
var i: integer;
begin
  if (cboLanguage.ItemIndex = -1) then
    lstStyles.Clear
  else begin
    CurrLang := frmMain.sciEditor.LanguageManager.LanguageList.Find(GetLangFromIdx(cboLanguage.ItemIndex));
    if (Assigned(CurrLang)) then begin
      lstStyles.Clear;
      for i := 0 to CurrLang.Styles.Count -1 do
        lstStyles.Items.Add(TSciStyle(CurrLang.Styles.Items[i]).DisplayName);
    end;
  end;
end;

procedure TfrmSettings.lstStylesClick(Sender: TObject);
begin
  if (lstStyles.ItemIndex <> -1) and (Assigned(CurrLang)) then begin
    CurrStyle := CurrLang.Styles[lstStyles.ItemIndex];
    if (Assigned(CurrStyle)) then begin
      // Font Name
      if (CurrStyle.FontName = '') or (CurrStyle.FontName = frmMain.sciEditor.Font.Name) then begin
        cboFonts.ItemIndex := cboFonts.Items.IndexOf(frmMain.sciEditor.Font.Name);
        chkUseDefaultFont.Checked := True;
      end
      else begin
        cboFonts.ItemIndex := cboFonts.Items.IndexOf(CurrStyle.FontName);
        chkUseDefaultFont.Checked := False;
      end;
      // Visible
      chkVisible.Checked := CurrStyle.Visible;
      // Bold, Italic, Underlined
      chkBold.Checked := fsBold in CurrStyle.FontStyles;
      chkItalic.Checked := fsItalic in CurrStyle.FontStyles;
      chkUnderlined.Checked := fsUnderline in CurrStyle.FontStyles;
      // Font Size
      seFontSize.ValueAsInteger := CurrStyle.FontSize;
      // Colors
      cpForeground.Color := CurrStyle.ForeColor;
      cpBackground.Color := CurrStyle.BackColor;
    end;
  end;
end;

procedure TfrmSettings.cboFontsChange(Sender: TObject);
begin
  if (Assigned(CurrStyle)) then
    CurrStyle.FontName := cboFonts.Items[cboFonts.ItemIndex];
end;

procedure TfrmSettings.chkUseDefaultFontClick(Sender: TObject);
begin
  lblFont.Enabled := not chkUseDefaultFont.Checked;
  cboFonts.Enabled := lblFont.Enabled;
  if (Assigned(CurrStyle)) then begin
    if (chkUseDefaultFont.Checked) then
      CurrStyle.FontName := frmMain.sciEditor.Font.Name
    else
      CurrStyle.FontName := cboFonts.Items[cboFonts.ItemIndex];
  end;
end;

procedure TfrmSettings.chkVisibleClick(Sender: TObject);
begin
  if (Assigned(CurrStyle)) then
    CurrStyle.Visible := chkVisible.Checked;
end;

procedure TfrmSettings.chkBoldClick(Sender: TObject);
begin
  if (Assigned(CurrStyle)) then begin
    if (chkBold.Checked) then
      CurrStyle.FontStyles := CurrStyle.FontStyles + [fsBold]
    else
      CurrStyle.FontStyles := CurrStyle.FontStyles - [fsBold];
  end;
end;

procedure TfrmSettings.chkItalicClick(Sender: TObject);
begin
  if (Assigned(CurrStyle)) then begin
    if (chkItalic.Checked) then
      CurrStyle.FontStyles := CurrStyle.FontStyles + [fsItalic]
    else
      CurrStyle.FontStyles := CurrStyle.FontStyles - [fsItalic];
  end;
end;

procedure TfrmSettings.chkUnderlinedClick(Sender: TObject);
begin
  if (Assigned(CurrStyle)) then begin
    if (chkUnderlined.Checked) then
      CurrStyle.FontStyles := CurrStyle.FontStyles + [fsUnderline]
    else
      CurrStyle.FontStyles := CurrStyle.FontStyles - [fsUnderline];
  end;
end;

procedure TfrmSettings.seFontSizeValueChanged(Sender: TObject);
begin
  if (Assigned(CurrStyle)) then
    CurrStyle.FontSize := seFontSize.ValueAsInteger;
end;

procedure TfrmSettings.cmdSelectForegroundClick(Sender: TObject);
var ResColor: TColor;
begin
  if (Assigned(CurrStyle)) then begin
    ResColor := frmSelectColor.ShowModalC(cpForeground.Color);
    cpForeground.Color := ResColor;
    CurrStyle.ForeColor := ResColor;
  end;
end;

procedure TfrmSettings.cmdSelectBackgroundClick(Sender: TObject);
var ResColor: TColor;
begin
  if (Assigned(CurrStyle)) then begin
    ResColor := frmSelectColor.ShowModalC(cpBackground.Color);
    cpBackground.Color := ResColor;
    CurrStyle.BackColor := ResColor;
  end;
end;

procedure TfrmSettings.lstStylesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var Idx: Integer;
begin
  Idx := lstStyles.ItemAtPos(Point(X, Y), False);
  if (Idx <> -1) and (Idx < lstStyles.Count) then
    lstStyles.Hint := lstStyles.Items[Idx];
end;

procedure TfrmSettings.lvShortcutsDblClick(Sender: TObject);
begin
  cmdEditShortcut.Click;
end;

procedure TfrmSettings.cmdEditShortcutClick(Sender: TObject);
begin
  if (not Assigned(lvShortcuts.Selected)) then exit;

  // edit shortcut ctrl
  hkEditShortcut.Enabled := True;
  hkEditShortcut.HotKey := TSciKeyCommand(lvShortcuts.Selected.Data).ShortCut;
  hkEditShortcut.SetFocus;
  // edit button
  cmdEditShortcut.Enabled := False;
  cmdEditShortcut.ImageIndex := -1;
  cmdEditShortcut.Caption := '(Press a key)';
end;

procedure TfrmSettings.hkEditShortcutExit(Sender: TObject);
begin
  // disable control
  hkEditShortcut.Enabled := False;
  // edit button
  cmdEditShortcut.Enabled := True;
  cmdEditShortcut.ImageIndex := 4;
  cmdEditShortcut.Caption := 'Edit';
end;

procedure TfrmSettings.lvShortcutsClick(Sender: TObject);
begin
  cmdEditShortcut.Enabled := Assigned(lvShortcuts.Selected);
end;

procedure TfrmSettings.hkEditShortcutChange(Sender: TObject);
begin
  if (not Assigned(lvShortcuts.Selected)) then
    lvShortcuts.SetFocus
  else begin
    lvShortcuts.Selected.Caption := ShortCutToText(hkEditShortcut.HotKey);
    TSciKeyCommand(lvShortcuts.Selected.Data).ShortCut := hkEditShortcut.HotKey;
  end;
end;

procedure TfrmSettings.cmdResetShortcutsClick(Sender: TObject);
var i: integer;
    KeyCommand: TSciKeyCommand;
    Ident: String;
begin
  // effects
  Screen.Cursor := crHourGlass;
  lvShortcuts.Items.BeginUpdate;
  // reset
  frmMain.sciEditor.KeyCommands.ResetDefaultCommands;
  // copied from frmMain
  lvShortcuts.Clear;
  for i := 0 to frmMain.sciEditor.KeyCommands.Count -1 do begin
    with lvShortcuts.Items.Add do begin
      KeyCommand := frmMain.sciEditor.KeyCommands.Items[i];
      Ident := 'Unknown';
			IntToIdent(KeyCommand.Command, Ident, Sci_KeyboardCommandMap);
      if (Ident <> 'No Command') then begin // Important for Control Chars, the user mustn't change the values for it...
 	      Caption:= ShortCutToText(KeyCommand.ShortCut);
        SubItems.Add(Ident);
 	    	Data := KeyCommand;
      end
      else
        Free;
    end;
  end;
  // end effects
  Screen.Cursor := crDefault;
  lvShortcuts.Items.EndUpdate;
end;

procedure TfrmSettings.cmdSelectCaretForeClick(Sender: TObject);
var ResColor: TColor;
begin
  ResColor := frmSelectColor.ShowModalC(cpCaretFore.Color);
  cpCaretFore.Color := ResColor;
  frmMain.sciEditor.Caret.ForeColor := ResColor;
end;

procedure TfrmSettings.cmdSelectColorBackClick(Sender: TObject);
var ResColor: TColor;
begin
  ResColor := frmSelectColor.ShowModalC(cpCaretBack.Color);
  cpCaretBack.Color := ResColor;
  frmMain.sciEditor.Caret.LineBackColor := ResColor;
end;

procedure TfrmSettings.sePeriodValueChanged(Sender: TObject);
begin
  frmMain.sciEditor.Caret.Period := sePeriod.ValueAsInteger;
end;

procedure TfrmSettings.chkShowCaretClick(Sender: TObject);
begin
  frmMain.sciEditor.Caret.LineVisible := chkShowCaret.Checked;
  frmMain.ShowCaret := chkShowCaret.Checked;
end;

procedure TfrmSettings.chkAutoCloseBracesClick(Sender: TObject);
begin
  frmMain.sciEditor.AutoCloseBraces := chkAutoCloseBraces.Checked;
end;

procedure TfrmSettings.chkAutoCloseQuotesClick(Sender: TObject);
begin
  frmMain.sciEditor.AutoCloseQuotes := chkAutoCloseQuotes.Checked;
end;

procedure TfrmSettings.chkEnableModMarkersClick(Sender: TObject);
begin
  Configuration.EnableModMarkers := chkEnableModMarkers.Checked;
end;

procedure TfrmSettings.cboCodeFoldingStyleChange(Sender: TObject);
begin
  if (frmSettings.cboCodeFoldingStyle.ItemIndex = 4) then
    frmMain.sciEditor.Folding := frmMain.sciEditor.Folding - [foldFold]
  else begin
    frmMain.sciEditor.Folding := frmMain.sciEditor.Folding + [foldFold];
    frmMain.sciEditor.FoldMarkers.MarkerType := sciMarkerType(cboCodeFoldingStyle.ItemIndex);
  end;
end;

procedure TfrmSettings.cboBookmarkDesignChange(Sender: TObject);
begin
  case cboBookmarkDesign.ItemIndex of
    0: frmMain.sciEditor.Bookmark.Pixmap := BOOKMARK_RRECT;
    1: frmMain.sciEditor.Bookmark.Pixmap := BOOKMARK_CIRCLE;
    2: frmMain.sciEditor.Bookmark.Pixmap := BOOKMARK_ARROW;
  end;
end;

procedure TfrmSettings.UpdateDialog;
var i: Integer;
    KeyCommand: TSciKeyCommand;
    Ident: String;
    StrStream: TStringStream;
begin
  with frmMain do begin
    { general }
    chkShowStartPage.Checked := Configuration.ShowStartPageOnStart;
    cboFileTypes.ItemIndex := Configuration.StartPageSubstitute;
    if (cboFileTypes.ItemIndex = -1) then
      cboFileTypes.ItemIndex := 0;
    chkIndentTemplates.Checked := Configuration.AutoIndentTemplates;
    chkReloadSavedFiles.Checked := Configuration.ReloadSavedFiles;
    { highlighter }
    cboFonts.Items.Assign(Screen.Fonts);
    cboLanguage.OnChange(frmMain);
    lstStyles.ItemIndex := 0;
    lstStyles.OnClick(frmMain);
    { shortcuts }
    lvShortcuts.Clear;
    for i := 0 to sciEditor.KeyCommands.Count -1 do begin
      with lvShortcuts.Items.Add do begin
        KeyCommand := sciEditor.KeyCommands.Items[i];
        Ident := 'Unknown';
	  		IntToIdent(KeyCommand.Command, Ident, Sci_KeyboardCommandMap);
        if (Ident <> 'No Command') then begin // Important for Control Chars, the user mustn't change the values for it...
 	        Caption:= ShortCutToText(KeyCommand.ShortCut);
          SubItems.Add(Ident);
   	    	Data := KeyCommand;
        end
        else
          Free;
      end;
    end;
    { indentation }
    chkAutoIndent.Checked := Configuration.Indent_AutoIndent;
    chkHandleOLS.Checked := Configuration.Indent_HandleOLS;
    chkIndentionGuides.Checked := (IndentationGuides in frmMain.sciEditor.Indentation);
    chkIndentOpeningBrace.Checked := Configuration.Indent_IndentOpenBrace;
    chkUnindentClosingBrace.Checked := Configuration.Indent_UnindentClosingBrace;
    chkUnindentPrevLine.Checked := Configuration.Indent_UnindentPrevLine;
    if (Configuration.Indent_IndentString = #9) then
      optTabs.Checked := True
    else if (Configuration.Indent_IndentString = '  ') then
      optTwoSpaces.Checked := True
    else begin
      optCustomString.Checked := True;
      txtCustomString.Text := Configuration.Indent_IndentString;
    end;
    txtTabSize.Text := IntToStr(Configuration.Indent_TabSize);
    { misc }
    cpCaretFore.Color := sciEditor.Caret.ForeColor;
    cpCaretBack.Color := sciEditor.Caret.LineBackColor;
    sePeriod.ValueAsInteger := sciEditor.Caret.Period;
    chkShowCaret.Checked := ShowCaret; //sciEditor.Caret.LineVisible;
    if (foldFold in sciEditor.Folding) then
      cboCodeFoldingStyle.ItemIndex := Integer(sciEditor.FoldMarkers.MarkerType)
    else
      cboCodeFoldingStyle.ItemIndex := 4;
    if (sciEditor.Bookmark.Pixmap = BOOKMARK_RRECT) then
      cboBookmarkDesign.ItemIndex := 0
    else if (sciEditor.Bookmark.Pixmap = BOOKMARK_CIRCLE) then
      cboBookmarkDesign.ItemIndex := 1
    else
      cboBookmarkDesign.ItemIndex := 2;
    chkHighlightBraces.Checked := sciEditor.BraceHilite;
    chkAutoCloseBraces.Checked := sciEditor.AutoCloseBraces;
    chkAutoCloseQuotes.Checked := sciEditor.AutoCloseQuotes;
    chkEnableModMarkers.Checked := Configuration.EnableModMarkers;
    { Servers - FTP }
    // disable controls first
    txtFTPHost.Enabled := False;
    txtFTPPort.Enabled := False;
    txtFTPUsername.Enabled := False;
    txtFTPPassword.Enabled := False;
    trvFTPDestination.Enabled := False;
    // reset server list
    { ftp }
    lstFTPServers.Clear;
    for i := 0 to Configuration.FTPServers.Count -1 do
      lstFTPServers.AddItem(TFTPServer(Configuration.FTPServers.Items[i]).Name, Configuration.FTPServers.Items[i]);
    if (lstFTPServers.Items.Count > 0) then begin
      if (Visible) and (jplPages.ActivePage = jspServersFTP) then
        lstFTPServers.SetFocus;
      lstFTPServers.ItemIndex := 0;
      lstFTPServers.OnClick(Self);
    end;
    cmdDeleteFTP.Enabled := (lstFTPServers.Items.Count > 0);
    { rcon }
    lstRCONServers.Clear;
    for i := 0 to Configuration.RCONServers.Count -1 do
      lstRCONServers.AddItem(TRCONServer(Configuration.RCONServers.Items[i]).Name, Configuration.RCONServers.Items[i]);
    if (lstRCONServers.Items.Count > 0) then begin
      if (Visible) and (jplPages.ActivePage = jspServersRCON) then
        lstRCONServers.SetFocus;
      lstRCONServers.ItemIndex := 0;
      lstRCONServers.OnClick(Self);
    end;
    cmdDeleteRCON.Enabled := (lstRCONServers.Items.Count > 0);
    { mysql }
    lstSQLServers.Clear;
    for i := 0 to Configuration.MySQLServers.Count -1 do
      lstSQLServers.AddItem(TMySQLServer(Configuration.MySQLServers.Items[i]).Name, Configuration.MySQLServers.Items[i]);
    if (lstSQLServers.Items.Count > 0) then begin
      if (Visible) and (jplPages.ActivePage = jspServersSQL) then
        lstSQLServers.SetFocus;
      lstSQLServers.ItemIndex := 0;
      lstSQLServers.OnClick(Self);
    end;
    cmdDeleteSQL.Enabled := (lstSQLServers.Items.Count > 0);
    { ClamSense }
    chkIntelligentCommentBehavior.Checked := Configuration.CS_IntelligentCommentBehavior;
    chkAutoScrollBack.Checked := Configuration.CS_AutoScrollBack;
    chkEnableAC.Checked := Configuration.AC_Enable;
    chkShowFilters.Checked := Configuration.AC_ShowFilter;
    chkShowList.Checked := Configuration.AC_AutoShow;
    chkTabCompletes.Checked := Configuration.AC_TabCompletes;
    chkAutoInsert.Checked := Configuration.AC_AutoInsert;
    chkEnableCallTips.Checked := Configuration.CT_Enable;
    chkHighlightParams.Checked := Configuration.CT_HighlightParams;
    chkAutoHideCT.Checked := Configuration.CT_AutoHide;
    chkEditorOwnsCalltip.Checked := Configuration.CT_EditorOwnsCalltip;
    chkAutoShowCalltip.Checked := Configuration.CT_AutoShowCalltip;
    { misc }
    chkAutoScroll.Checked := Configuration.OutputAutoScroll;
    chkShowCompilationTime.Checked := Configuration.OutputShowLength;
    chkTrimOutput.Checked := Configuration.OutputTrimRight;
    chkUseOldReplaceDialog.Checked := Configuration.UseOldReplaceDialog;
    chkUseOldSearchDialog.Checked := Configuration.UseOldSearchDialog;
    chkCaseSensitive.Checked := Configuration.Search_CaseSensitive;
    chkMatchWholeWord.Checked := Configuration.Search_MatchWholeWord;
    chkRegEx.Checked := Configuration.Search_RegEx;
    chkSearchForward.Checked := Configuration.Search_SearchForward;
    chkSearchFromCaret.Checked := Configuration.Search_FromCaret;
    txtPluginAuthor.Text := Configuration.DefaultAuthor;
    txtPluginName.Text := Configuration.DefaultPluginName;
    txtPluginVersion.Text := Configuration.DefaultVersion;
    { "auto"-pages }
    // compiler
    cboLanguages.OnChange(Self);
    // save old settings
    StrStream := TStringStream.Create('');
    sciPropLoader.SaveToStream(StrStream);
    Configuration.EditorSettings := StrStream.DataString;
    StrStream.Free;
  end;
end;

procedure TfrmSettings.cmdAdvancedSettingsClick(Sender: TObject);
begin
  case (MessageBox(Handle, 'This dialog must be closed in order to use the advanced settings dialog. Do you wish to save your changes?', 'Confirmation', MB_ICONQUESTION or MB_YESNOCANCEL)) of
    mrYes: ModalResult := mrYes;
    mrNo: ModalResult := mrNo;
    mrCancel: exit;
  end;
  frmMain.sciOptionsDialog.Execute;
end;

procedure TfrmSettings.txtFTPPortChange(Sender: TObject);
begin
  if (StrToIntDef(txtFTPPort.Text, 0) < 1) then
    txtFTPPort.Text := '21';
end;

procedure TfrmSettings.trvFTPDestinationDblClick(Sender: TObject);
begin
  if (lblConnectInfo.Caption = 'Connecting...') then
    DisconnectFTP
  else if (lblConnectInfo.Caption = 'Double-Click here to connect...') then begin
    // disable textfields
    txtFTPHost.Enabled := False;
    txtFTPPort.Enabled := False;
    txtFTPUsername.Enabled := False;
    txtFTPPassword.Enabled := False;
    // set ftp settings
    IdFTP.Host := txtFTPHost.Text;
    IdFTP.Port := StrToInt(txtFTPPort.Text);
    IdFTP.Username := txtFTPUsername.Text;
    IdFTP.Password := txtFTPPassword.Text;
    // connect
    Screen.Cursor := crHourGlass;
    try
      lblConnectInfo.Caption := 'Connecting...';
      IdFTP.Connect;
      lblConnectInfo.Hide;
      lblConnectInfo.Caption := 'Connected!';
    except
      on E: Exception do begin
        MessageBox(Handle, PChar('Failed to connect to server:' + #13#10 + #13#10 + E.Message), 'Error', MB_ICONERROR);
        AddDebugLog('Settings', 'Couldn''t connect to FTP server: ' + E.Message);
        DisconnectFTP;
      end;
    end;
    Screen.Cursor := crDefault;
  end
  else if (lblConnectInfo.Caption = 'Connected!') and (not Assigned(trvFTPDestination.Selected)) then
    DisconnectFTP;
end;

procedure TfrmSettings.IdFTPAfterClientLogin(Sender: TObject);
begin
  InitTreeView(trvFTPDestination, IdFTP, 13, 14);
end;

procedure TfrmSettings.DisconnectFTP;
begin
  // socket
  if (IdFTP.Connected) then begin
    try
      IdFTP.DisconnectSocket;
    except
      on E: Exception do
        AddDebugLog('Settings', 'FTP error on disconnect: ' + E.Message);
    end;
  end;
  // treeview + label
  trvFTPDestination.Items.BeginUpdate;
  trvFTPDestination.Items.Clear;
  trvFTPDestination.Items.EndUpdate;
  lblConnectInfo.Caption := 'Double-Click here to connect...';
  lblConnectInfo.Show;
  // edits
  txtFTPHost.Enabled := (lstFTPServers.Items.Count > 0);
  txtFTPPort.Enabled := txtFTPHost.Enabled;
  txtFTPUsername.Enabled := txtFTPHost.Enabled;
  txtFTPPassword.Enabled := txtFTPHost.Enabled;
end;

procedure TfrmSettings.trvFTPDestinationExpanded(Sender: TObject;
  Node: TTreeNode);
begin
  GoToFTPDir(Node, IdFTP, PathFromTreeNode(Node), 13, 14);
end;

procedure TfrmSettings.trvFTPDestinationChange(Sender: TObject;
  Node: TTreeNode);
begin
  if (Assigned(Node)) and (IdFTP.Connected) then
    GoToFTPDir(Node, IdFTP, PathFromTreeNode(Node), 13, 14);
end;

procedure TfrmSettings.trvFTPDestinationMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var Node: TTreeNode;
begin
  Node := trvFTPDestination.GetNodeAt(X, Y);
  if (Assigned(Node)) then begin
    if (Node.DisplayRect(True).Right < X) then
      trvFTPDestination.Selected := nil;
  end;
end;

procedure TfrmSettings.trvFTPDestinationCollapsed(Sender: TObject;
  Node: TTreeNode);
begin
  Node.ImageIndex := 13;
  Node.SelectedIndex := 13;
end;

procedure TfrmSettings.txtFTPControlExit(Sender: TObject);
begin
  if (lstFTPServers.ItemIndex <> -1) then begin
    with TFTPServer(Configuration.FTPServers.Items[lstFTPServers.ItemIndex]) do begin
      Host := Trim(txtFTPHost.Text);
      Port := StrToIntDef(txtFTPPort.Text, 21);
      Username := Trim(txtFTPUsername.Text);
      Password := txtFTPPassword.Text;
      UploadDestination := PathFromTreeNode(trvFTPDestination.Selected);
    end;
  end;
end;

procedure TfrmSettings.lstFTPServersClick(Sender: TObject);
var Server: TFTPServer;
begin
  if (lstFTPServers.ItemIndex <> -1) then begin
    // disconnect
    DisconnectFTP;
    // get object
    Server := TFTPServer(Configuration.FTPServers.Items[lstFTPServers.ItemIndex]);
    // set values
    txtFTPHost.Text := Server.Host;
    txtFTPPort.Text := IntToStr(Server.Port);
    txtFTPUsername.Text := Server.Username;
    txtFTPPassword.Text := Server.Password;
    // enable controls
    txtFTPHost.Enabled := True;
    txtFTPPort.Enabled := True;
    txtFTPUsername.Enabled := True;
    txtFTPPassword.Enabled := True;
    trvFTPDestination.Enabled := True;
  end;
end;

procedure TfrmSettings.cmdAddFTPClick(Sender: TObject);
var SrvName: String;
begin
  if (frmInputBox.ShowQuery(False, '*', 'Please enter the name of the FTP server you want to add:', '', 'Add FTP Server', SrvName)) then begin
    TFTPServer(Configuration.FTPServers.Add).Name := SrvName;
    lstFTPServers.SetFocus;
    lstFTPServers.ItemIndex := lstFTPServers.Items.Add(SrvName);
    lstFTPServers.OnClick(Sender);
    cmdDeleteFTP.Enabled := True;
    txtFTPHost.SetFocus;
  end;
end;

procedure TfrmSettings.cmdDeleteFTPClick(Sender: TObject);
begin
  if (lstFTPServers.ItemIndex <> -1) then begin
    lstFTPServers.SetFocus;
    if (Configuration.ActiveFTPSrv <> nil) and (Configuration.ActiveFTPSrv.Index = lstFTPServers.ItemIndex) then
      Configuration.ActiveFTPSrv := nil;
    Configuration.FTPServers.Delete(lstFTPServers.ItemIndex);
    lstFTPServers.DeleteSelected;
    lstFTPServers.OnClick(Sender);
    DisconnectFTP;
  end;
end;

procedure TfrmSettings.cmdAddRCONClick(Sender: TObject);
var SrvName: String;
begin
  if (frmInputBox.ShowQuery(False, '*', 'Please enter the name of the RCON server you want to add:', '', 'Add RCON Server', SrvName)) then begin
    TRCONServer(Configuration.RCONServers.Add).Name := SrvName;
    lstRCONServers.SetFocus;
    lstRCONServers.ItemIndex := lstRCONServers.Items.Add(SrvName);
    lstRCONServers.OnClick(Sender);
    cmdDeleteRCON.Enabled := True;
    txtRCONHost.SetFocus;
  end;
end;

procedure TfrmSettings.cmdDeleteRCONClick(Sender: TObject);
begin
  if (lstRCONServers.ItemIndex <> -1) then begin
    lstRCONServers.SetFocus;
    if (Configuration.ActiveRCONSrv <> nil) and (Configuration.ActiveRCONSrv.Index = lstRCONServers.ItemIndex) then
      Configuration.ActiveRCONSrv := nil;
    Configuration.RCONServers.Delete(lstRCONServers.ItemIndex);
    lstRCONServers.DeleteSelected;
    lstRCONServers.OnClick(Sender);
  end;
end;

procedure TfrmSettings.lstRCONServersClick(Sender: TObject);
var Server: TRCONServer;
begin
  if (lstRCONServers.ItemIndex <> -1) then begin
    // disconnect
    //DisconnectFTP;
    // get object
    Server := TRCONServer(Configuration.RCONServers.Items[lstRCONServers.ItemIndex]);
    // set values
    txtRCONHost.Text := Server.Host;
    txtRCONPort.Text := IntToStr(Server.Port);
    txtRCONUsername.Text := Server.Username;
    txtRCONPassword.Text := Server.Password;
    cboRCONServerType.ItemIndex := Integer(Server.ServerType);
    // enable controls
    txtRCONHost.Enabled := True;
    txtRCONPort.Enabled := True;
    txtRCONUsername.Enabled := (cboRCONServerType.ItemIndex = 3);
    lblRCONUsername.Enabled := txtRCONUsername.Enabled;
    txtRCONPassword.Enabled := True;
    cboRCONServerType.Enabled := True;
    cmdRCONCheck.Enabled := True;
  end;
end;

procedure TfrmSettings.cboRCONServerTypeChange(Sender: TObject);
begin
  lblRCONUsername.Enabled := (cboRCONServerType.ItemIndex = 3);
  txtRCONUsername.Enabled := lblRCONUsername.Enabled;
end;

procedure TfrmSettings.txtRCONPortChange(Sender: TObject);
begin
  if (StrToIntDef(txtRCONPort.Text, 0) < 1) then begin
    case (cboRCONServerType.ItemIndex) of
      0, 1: txtRCONPort.Text := '27015';
      2: txtRCONPort.Text := '7777';
      3: txtRCONPort.Text := '23';
    end;
  end;
end;

procedure TfrmSettings.txtRCONHostExit(Sender: TObject);
begin
  if (lstRCONServers.ItemIndex <> -1) then begin
    with TRCONServer(Configuration.RCONServers.Items[lstRCONServers.ItemIndex]) do begin
      Host := Trim(txtRCONHost.Text);
      Port := StrToIntDef(txtRCONPort.Text, 27015);
      Username := Trim(txtRCONUsername.Text);
      Password := txtRCONPassword.Text;
      ServerType := TServerType(cboRCONServerType.ItemIndex);
    end;
  end;
end;

procedure TfrmSettings.cmdRCONCheckClick(Sender: TObject);
var UDPClient: TIdUDPClient;
    TCPClient: TIdTCPClient;

    Buffer: String;
    ChrBuff: Char;
    Int, Cmd: Integer;
    StrList: TStringList;
begin
  // set values
  cmdRCONCheck.Caption := 'Checking Connection...';
  cmdRCONCheck.Enabled := False;
  Screen.Cursor := crHourGlass;
  // check connection
  try
    case cboRCONServerType.ItemIndex of
      0: begin // HL1
        UDPClient := TIdUDPClient.Create(Self);
        UDPClient.Host := txtRCONHost.Text;
        UDPClient.Port := StrToIntDef(txtRCONPort.Text, 27015);
        UDPClient.ReceiveTimeout := 2000;

        UDPClient.Active := True;
        UDPClient.Send('ÿÿÿÿchallenge rcon');
        Buffer := UDPClient.ReceiveString;
        UDPClient.Send('ÿÿÿÿrcon ' + Trim(Copy(Buffer, 19, Length(Buffer))) + ' "' + txtRCONPassword.Text + '" echo Pawn Studio: Test');
        Buffer := UDPClient.ReceiveString;
        if (Pos('Pawn Studio : Test', Buffer) <> 0) then
          MessageBox(Handle, 'Check successfully performed!', 'RCON Check', MB_ICONINFORMATION)
        else if (Pos('Bad rcon_password.', Buffer) <> 0) then
          MessageBox(Handle, 'Your RCON password appears to be invalid. Please update your password and try again.', 'RCON Check', MB_ICONWARNING)
        else
          MessageBox(Handle, 'RCON Check failed. Please check your data and try again.', 'RCON Check', MB_ICONWARNING);
        UDPClient.Free;
      end;
      1: begin // HL2
        TCPClient := TIdTCPClient.Create(Self);
        TCPClient.Host := txtRCONHost.Text;
        TCPClient.Port := StrToIntDef(txtRCONPort.Text, 27015);
        TCPClient.ReadTimeout := 2000;

        TCPClient.Connect(2000);
        { clear cache }
        while (TCPClient.Socket.Readable(100)) do
          TCPClient.ReadChar;
        // packet size
        TCPClient.WriteInteger(10 + Length(txtRCONPassword.Text), False);
        // request number
        TCPClient.WriteInteger(20, False);
        // command
        TCPClient.WriteInteger(3 { SERVERDATA_AUTH }, False);
        // string (password)
        TCPClient.Write(txtRCONPassword.Text + #0#0);
        { get response }
        repeat
          Int := TCPClient.ReadInteger(False);
          if (Int < 10) or (Int > 8192) then begin
            MessageBox(Handle, 'Error: Received invalid size.', 'RCON Check', MB_ICONWARNING);
            break;
          end
          else begin
            Int := TCPClient.ReadInteger(False);            // request id
            Cmd := TCPClient.ReadInteger(False);            // command
            if (Cmd <> 0) then begin { this would be the junk packet }
              if (Int = -1) then begin
                MessageBox(Handle, 'Error: Password refused.', 'RCON Check', MB_ICONWARNING);
                break;
              end
              else if (Cmd = 2) then begin
                MessageBox(Handle, 'RCON Check successfully performed!', 'RCON Check', MB_ICONINFORMATION);
                break;
              end;
            end;
            // these two are not required but need to be removed from the stack
            TCPClient.ReadLn(#0); // string1
            TCPClient.ReadLn(#0); // string2
          end;
        until (not TCPClient.Connected);
        TCPClient.Free;
      end;
      2: begin // GTA SA:MP
        UDPClient := TIdUDPClient.Create(Self);
        UDPClient.Host := txtRCONHost.Text;
        UDPClient.Port := StrToIntDef(txtRCONPort.Text, 7777);
        UDPClient.ReceiveTimeout := 2000;
        UDPClient.Active := True;
        // send package -> SAMP+chr(ipp[1])+chr(ipp[2])+chr(ipp[3])+chr(ipp[4])+chr(port1)+chr(port2)+x+chr(pw-len1)+chr(pw-len2)+pw+chr(cmd-len1)+chr(cmd-len2)+cmd
        // thanks Mike!
        StrList := TStringList.Create;
        if (not GetIpAddressByName(StrList, UDPClient.Host)) then
          StrList.Text := UDPClient.Host;
        StrList.Text := StringReplace(StrList.Text, '.', #13, [rfReplaceAll]);
        if (StrList.Count = 4) then begin
          { SAMP+IP }
          Buffer := 'SAMP' + Chr(StrToIntDef(StrList[0], 100)) + Chr(StrToIntDef(StrList[1], 100)) + Chr(StrToIntDef(StrList[2], 100)) + Chr(StrToIntDef(StrList[3], 100));
          { Port+x }
          Buffer := Buffer + Chr(UDPClient.Port and 255) + Chr((UDPClient.Port shr 8) and 255) + 'x';
          { Password Length+Password }
          Int := Length(txtRCONPassword.Text);
          Buffer := Buffer + Chr(Int and 255) + Chr((Int shr 8) and 255) + txtRCONPassword.Text;
          { Command Length+Command }
          Buffer := Buffer + Chr(SAMP_LENGTH and 255) + Chr((SAMP_LENGTH shr 8) and 255) + SAMP_COMMAND;
          { Send Call }
          UDPClient.Send(Buffer);
          { Receive... Something? }
          Buffer := UDPClient.ReceiveString(2000);
          repeat
            Delete(Buffer, 1, 1);
          until (Length(Buffer) = 0) or (Pos(#0, Buffer) = 0);
          if (Pos('Pawn Studio: Test', Buffer) = 1) then
            MessageBox(Handle, 'RCON Check successfully performed!', 'RCON Check', MB_ICONINFORMATION)
          else if (Length(Buffer) = 0) then
            MessageBox(Handle, 'RCON Check failed: Server does not reply.', 'RCON Check', MB_ICONWARNING)
          else
            MessageBox(Handle, PChar('Check failed: ' + Buffer + #13#10 + #13#10 + 'Please check your data and try again.'), 'RCON Check', MB_ICONWARNING);
        end
        else begin
          UDPClient.Active := False;
          MessageBox(Handle, 'Error: You have to enter a valid IP address to use this function!', 'RCON Check', MB_ICONWARNING);
        end;
        UDPClient.Free;
        StrList.Free;
      end;
      3: begin // Telnet
        TCPClient := TIdTCPClient.Create(Self);
        TCPClient.Host := txtRCONHost.Text;
        TCPClient.Port := StrToIntDef(txtRCONPort.Text, 27015);
        TCPClient.ReadTimeout := 5000;

        Int := 0;
        Buffer := '';
        ChrBuff := #0;
        TCPClient.Connect(2000);
        repeat
          // read data
          try
            ChrBuff := TCPClient.ReadChar;
            Buffer := Buffer + LowerCase(ChrBuff);
          except
            MessageBox(Handle, 'RCON Check failed. Please check your login data and try again.', 'RCON Check', MB_ICONWARNING);
            break; // see, warning doesn't make sense
          end;
          // check what we need to do next
          case Int of
            0: begin // wait for username
              if (ChrBuff = ':') and (not TCPClient.Socket.Readable(100)) then begin
                TCPClient.WriteLn(txtRCONUsername.Text);
                Int := 1;
              end;
            end;
            1: begin // wait for password
              if (ChrBuff = ':') and (not TCPClient.Socket.Readable(100)) then begin
                TCPClient.WriteLn(txtRCONPassword.Text);
                Int := 2;
                Buffer := '';
              end;
            end;
            2: begin // wait for command line
              if (Pos('>', Buffer) <> 0) or (Pos('#', Buffer) <> 0) then begin
                TCPClient.WriteLn('echo Pawn Studio: Test');
                Int := 3;
              end;
            end;
            3: begin // wait for echo
              if (Pos('pawn studio: test', Buffer) <> 0) then begin
                MessageBox(Handle, 'RCON Check successfully performed!', 'RCON Check', MB_ICONINFORMATION);
                break;
              end;
            end;
          end;
        until (not TCPClient.Connected);
        TCPClient.Free;
      end;
      4: begin // SSH
        // will be added later (maybe)
      end;
    end;
  except
    on E: Exception do
      MessageBox(Handle, PChar('Check failed:' + #13#10 + E.Message), 'RCON Check', MB_ICONERROR);
  end;
  // restore values
  Screen.Cursor := crDefault;
  cmdRCONCheck.Caption := 'Check Connection';
  cmdRCONCheck.Enabled := True;
end;

procedure TfrmSettings.cmdAddSQLClick(Sender: TObject);
var SrvName: String;
begin
  if (frmInputBox.ShowQuery(False, '*', 'Please enter the name of the mySQL server you want to add:', '', 'Add mySQL Server', SrvName)) then begin
    TMySQLServer(Configuration.MySQLServers.Add).Name := SrvName;
    lstSQLServers.SetFocus;
    lstSQLServers.ItemIndex := lstSQLServers.Items.Add(SrvName);
    lstSQLServers.OnClick(Sender);
    cmdDeleteSQL.Enabled := True;
    txtSQLHost.SetFocus;
  end;
end;

procedure TfrmSettings.cmdDeleteSQLClick(Sender: TObject);
begin
  if (lstSQLServers.ItemIndex <> -1) then begin
    lstSQLServers.SetFocus;
    if (Configuration.ActiveMySQLSrv <> nil) and (Configuration.ActiveMySQLSrv.Index = lstSQLServers.ItemIndex) then
      Configuration.ActiveMySQLSrv := nil;
    Configuration.MySQLServers.Delete(lstSQLServers.ItemIndex);
    lstSQLServers.DeleteSelected;
    lstSQLServers.OnClick(Sender);
  end;
end;

procedure TfrmSettings.lstSQLServersClick(Sender: TObject);
var Server: TMySQLServer;
begin
  if (lstRCONServers.ItemIndex <> -1) then begin
    // get object
    Server := TMySQLServer(Configuration.MySQLServers.Items[lstSQLServers.ItemIndex]);
    // set values
    txtSQLHost.Text := Server.Host;
    txtSQLPort.Text := IntToStr(Server.Port);
    txtSQLUsername.Text := Server.Username;
    txtSQLPassword.Text := Server.Password;
    txtSQLDatabase.Text := Server.Database;
    // enable controls
    txtSQLHost.Enabled := True;
    txtSQLPort.Enabled := True;
    txtSQLUsername.Enabled := True;
    txtSQLPassword.Enabled := True;
    cmdSQLCheck.Enabled := True;
  end;
end;

procedure TfrmSettings.txtSQLPortChange(Sender: TObject);
begin
  if (StrToIntDef(txtSQLPort.Text, 0) < 1) then
    txtSQLPort.Text := '3306';
end;

procedure TfrmSettings.txtSQLPortExit(Sender: TObject);
begin
  if (lstSQLServers.ItemIndex <> -1) then begin
    with TMySQLServer(Configuration.MySQLServers.Items[lstSQLServers.ItemIndex]) do begin
      Host := Trim(txtSQLHost.Text);
      Port := StrToIntDef(txtSQLPort.Text, 3306);
      Username := Trim(txtSQLUsername.Text);
      Password := txtSQLPassword.Text;
      Database := txtSQLDatabase.Text;
    end;
  end;
end;

procedure TfrmSettings.cmdSQLCheckClick(Sender: TObject);
var Client: TMySQLClient;
begin
  Client := TMySQLClient.Create;
  Client.Host := txtSQLHost.Text;
  Client.Port := StrToIntDef(txtSQLPort.Text, 3306);
  Client.User := txtSQLUsername.Text;
  Client.Password := txtSQLPassword.Text;
  Client.Db := txtSQLDatabase.Text;
  if (not Client.connect) then
    MessageBox(Handle, PChar('Connect failed:' + #13#10 + #13#10 + Client.LastError), 'MySQL Check', MB_ICONWARNING)
  else
    MessageBox(Handle, 'MySQL Check successfully performed!', 'MySQL Check', MB_ICONINFORMATION);
  Client.Free;
end;

procedure TfrmSettings.txtCompilerFilenameSubEditButton0Click(
  Sender: TObject);
begin
  odCompiler.FileName := txtCompilerFilename.Text;
  if (odCompiler.Execute) then
    txtCompilerFilename.Text := odCompiler.FileName;
end;

procedure TfrmSettings.txtGameExecutableSubEditButton0Click(
  Sender: TObject);
begin
  odCompiler.FileName := txtGameExecutable.Text;
  if (odCompiler.Execute) then
    txtGameExecutable.Text := odCompiler.FileName;
end;

procedure TfrmSettings.txtDefaultOutputDirSubEditButton0Click(
  Sender: TObject);
var Dir: String;
begin
  Dir := txtDefaultOutputDir.Text;
  if (SelectDirectory('Please select a new output directory for the chosen compiler:', '', Dir)) then
    txtDefaultOutputDir.Text := Dir;
end;

procedure TfrmSettings.cboLanguagesChange(Sender: TObject);
begin
  with TCompiler(Configuration.Compilers.Items[cboLanguages.ItemIndex]) do begin
    txtCompilerFilename.Text := Filename;
    txtArguments.Text := Arguments;
    txtDefaultOutputDir.Text := DefOutDir;
    txtGameExecutable.Text := GameExec;
    chkSaveToOrigFile.Checked := SaveOrigFile;
    chkCaptureOutput.Checked := CaptureOut;
    chkSetOutputAlignment.Checked := AlignFirstLine;
    chkCopyToOutputDir.Checked := CopyOnly;
  end;
end;

procedure TfrmSettings.txtCompilerExit(Sender: TObject);
begin
  with TCompiler(Configuration.Compilers.Items[cboLanguages.ItemIndex]) do begin
    Filename := txtCompilerFilename.Text;
    Arguments := txtArguments.Text;
    DefOutDir := txtDefaultOutputDir.Text;
    GameExec := txtGameExecutable.Text;
  end;
end;

procedure TfrmSettings.chkCompilerClick(Sender: TObject);
begin
  with TCompiler(Configuration.Compilers.Items[cboLanguages.ItemIndex]) do begin
    SaveOrigFile := chkSaveToOrigFile.Checked;
    CaptureOut := chkCaptureOutput.Checked;
    AlignFirstLine := chkSetOutputAlignment.Checked;
    CopyOnly := chkCopyToOutputDir.Checked;
  end;
end;

procedure TfrmSettings.sePeriodChange(Sender: TObject);
begin
  frmMain.sciEditor.Caret.Period := sePeriod.ValueAsInteger;
end;

procedure TfrmSettings.chkHighlightBracesClick(Sender: TObject);
begin
  frmMain.sciEditor.BraceHilite := chkHighlightBraces.Checked;
end;

procedure TfrmSettings.chkIndentTemplatesClick(Sender: TObject);
begin
  Configuration.AutoIndentTemplates := chkIndentTemplates.Checked;
end;

procedure TfrmSettings.chkReloadSavedFilesClick(Sender: TObject);
begin
  Configuration.ReloadSavedFiles := chkReloadSavedFiles.Checked;
end;

procedure TfrmSettings.chkShowStartPageClick(Sender: TObject);
begin
  lblStartPageSubstitute.Enabled := (not chkShowStartPage.Checked);
  cboFileTypes.Enabled := (not chkShowStartPage.Checked);
  Configuration.ShowStartPageOnStart := chkShowStartPage.Checked;
end;

procedure TfrmSettings.cboFileTypesChange(Sender: TObject);
begin
  Configuration.StartPageSubstitute := cboFileTypes.ItemIndex;
end;

procedure TfrmSettings.txtPluginNameChange(Sender: TObject);
begin
  Configuration.DefaultPluginName := txtPluginName.Text;
end;

procedure TfrmSettings.txtPluginVersionChange(Sender: TObject);
begin
  Configuration.DefaultVersion := txtPluginVersion.Text;
end;

procedure TfrmSettings.txtPluginAuthorChange(Sender: TObject);
begin
  Configuration.DefaultAuthor := txtPluginAuthor.Text;
end;

procedure TfrmSettings.chkUseOldSearchDialogClick(Sender: TObject);
begin
  Configuration.UseOldSearchDialog := chkUseOldSearchDialog.Checked;
end;

procedure TfrmSettings.chkUseOldReplaceDialogClick(Sender: TObject);
begin
  Configuration.UseOldReplaceDialog := chkUseOldReplaceDialog.Checked;
end;

procedure TfrmSettings.chkSearchClick(Sender: TObject);
begin
  if (not Focused) then exit;
  
  Configuration.Search_FromCaret := chkSearchFromCaret.Checked;
  Configuration.Search_MatchWholeWord := chkMatchWholeWord.Checked;
  Configuration.Search_CaseSensitive := chkCaseSensitive.Checked;
  Configuration.Search_RegEx := chkRegEx.Checked;
  Configuration.Search_SearchForward := chkSearchForward.Checked;
end;

procedure TfrmSettings.chkIndentionGuidesClick(Sender: TObject);
begin
  Configuration.Indent_ActivateIndentationGuides := chkIndentionGuides.Checked;
  if (chkIndentionGuides.Checked) then
    frmMain.sciEditor.Indentation := frmMain.sciEditor.Indentation + [IndentationGuides]
  else
    frmMain.sciEditor.Indentation := frmMain.sciEditor.Indentation - [IndentationGuides];
end;

procedure TfrmSettings.optIndentationClick(Sender: TObject);
begin
  if (optTabs.Checked) then
    Configuration.Indent_IndentString := #9
  else if (optTwoSpaces.Checked) then
    Configuration.Indent_IndentString := '  '
  else
    Configuration.Indent_IndentString := txtCustomString.Text;
end;

procedure TfrmSettings.txtCustomStringChange(Sender: TObject);
begin
  if (optCustomString.Checked) then
    Configuration.Indent_IndentString := txtCustomString.Text;
end;

procedure TfrmSettings.chkAutoIndentClick(Sender: TObject);
begin
  Configuration.Indent_AutoIndent := chkAutoIndent.Checked;
end;

procedure TfrmSettings.chkIndentOpeningBraceClick(Sender: TObject);
begin
  Configuration.Indent_IndentOpenBrace := chkIndentOpeningBrace.Checked;
end;

procedure TfrmSettings.chkUnindentClosingBraceClick(Sender: TObject);
begin
  Configuration.Indent_UnindentClosingBrace := chkUnindentClosingBrace.Checked;
end;

procedure TfrmSettings.chkUnindentPrevLineClick(Sender: TObject);
begin
  Configuration.Indent_UnindentPrevLine := chkUnindentPrevLine.Checked;
end;

procedure TfrmSettings.chkHandleOLSClick(Sender: TObject);
begin
  Configuration.Indent_HandleOLS := chkHandleOLS.Checked;
end;

procedure TfrmSettings.chkShowCompilationTimeClick(Sender: TObject);
begin
  Configuration.OutputShowLength := chkShowCompilationTime.Checked;
end;

procedure TfrmSettings.chkAutoScrollClick(Sender: TObject);
begin
  Configuration.OutputAutoScroll := chkAutoScroll.Checked;
end;

procedure TfrmSettings.chkTrimOutputClick(Sender: TObject);
begin
  Configuration.OutputTrimRight := chkTrimOutput.Checked;
end;

procedure TfrmSettings.chkIntelligentCommentBehaviorClick(Sender: TObject);
begin
  Configuration.CS_IntelligentCommentBehavior := chkIntelligentCommentBehavior.Checked;
end;

procedure TfrmSettings.chkAutoScrollBackClick(Sender: TObject);
begin
  Configuration.CS_AutoScrollBack := chkAutoScrollBack.Checked;
end;

procedure TfrmSettings.chkEnableACClick(Sender: TObject);
begin
  Configuration.AC_Enable := chkEnableAC.Checked;
end;

procedure TfrmSettings.chkShowListClick(Sender: TObject);
begin
  Configuration.AC_AutoShow := chkShowList.Checked;
end;

procedure TfrmSettings.chkShowFiltersClick(Sender: TObject);
begin
  Configuration.AC_ShowFilter := chkShowFilters.Checked;
end;

procedure TfrmSettings.chkTabCompletesClick(Sender: TObject);
begin
  Configuration.AC_TabCompletes := chkTabCompletes.Checked;
end;

procedure TfrmSettings.chkAutoInsertClick(Sender: TObject);
begin
  Configuration.AC_AutoInsert := chkAutoInsert.Checked;
end;

procedure TfrmSettings.chkEnableCallTipsClick(Sender: TObject);
begin
  Configuration.CT_Enable := chkEnableCallTips.Checked;
end;

procedure TfrmSettings.chkHighlightParamsClick(Sender: TObject);
begin
  Configuration.CT_HighlightParams := chkHighlightParams.Checked;
end;

procedure TfrmSettings.chkEditorOwnsCalltipClick(Sender: TObject);
begin
  Configuration.CT_EditorOwnsCalltip := chkEditorOwnsCalltip.Checked;
  if (chkEditorOwnsCalltip.Checked) then
    frmMain.pnlCallTip.Parent := frmMain.jspCode
  else
    frmMain.pnlCallTip.Parent := frmMain;
end;

procedure TfrmSettings.chkAutoShowCalltipClick(Sender: TObject);
begin
  Configuration.CT_AutoShowCalltip := chkAutoShowCalltip.Checked;
end;

procedure TfrmSettings.chkAutoHideCTClick(Sender: TObject);
begin
  Configuration.CT_AutoHide := chkAutoHideCT.Checked;
end;

procedure TfrmSettings.txtTabSizeChange(Sender: TObject);
var i: Integer;
begin
  if (Trim(txtTabSize.Text) = '') then begin
    txtTabSize.Text := '4';
    txtTabSize.SelectAll;
  end
  else begin
    i := StrToIntDef(txtTabSize.Text, 4);
    if (i = 0) then begin
      txtTabSize.Text := '4';
      SysUtils.Beep;
    end
    else begin
      txtTabSize.Text := IntToStr(i);
      Configuration.Indent_TabSize := i;
      frmMain.sciEditor.TabWidth := i;
    end;
  end;
end;

procedure TfrmSettings.txtTabSizeKeyPress(Sender: TObject; var Key: Char);
begin
  if (StrToIntDef(Key, 0) = -1) then
    Key := #0;
end;

end.
