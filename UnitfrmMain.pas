unit UnitfrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TBXSwitcher, TB2Dock, TB2Toolbar, TBX, SpTBXItem, JvExControls,
  JvPageList, JvComponent, TB2Item, JvTabBar, JvDockControlForm,
  JvDockVIDStyle, JvDockVSNetStyle, SciLexer, SciLexerMemo, SciLexerMod,
  TB2ExtItems, SpTBXEditors, TBXLists, SpTBXLists, SpTBXControls, TBXThemes,
  StdCtrls, ExtCtrls, JvExExtCtrls, JvItemsPanel, TBXDkPanels, SpTBXDkPanels,
  JvExStdCtrls, JvRichEdit, ComCtrls, JvExComCtrls, JvListView,
  ImgList, JvComCtrls, TntStdCtrls, JvInspector,
  JvListBox, JvDriveCtrls, FileCtrl, ShellCtrls, JvXPCore, JvXPButtons,
  SpTBXTabs, JvGIF, JvImage, { Themes -> } TBXAluminumTheme, TBXDreamTheme,
  TBXEosTheme, TBXMonaiTheme, TBXNexos2Theme, TBXNexos3Theme, TBXNexos4Theme,
  TBXNexos5Theme, TBXOffice11AdaptiveTheme, TBXOfficeCTheme, TBXOfficeKTheme,
  TBXOfficeXPTheme, TBXReliferTheme, TBXSentimoXTheme, TBXTristanTheme,
  TBXTristan2Theme, TBXXitoTheme, TBXMonaiXPTheme, TBXZezioTheme,
  TBXWhidbeyTheme, TBXRomaTheme, TBXMirandaTheme  { <- Themes },  mbTBXGroupBox,
  mbTBXRichEdit, mbTBXTreeView, JvTextListBox, TntComCtrls, mbTBXScrollBox,
  OleCtrls, MSScriptControl_TLB, TBXExtItems, PngImageList, IniFiles, TypInfo,
  sciPrint, sciAbbrevationManager, SciPropertyMgr, 
  SciStreamDefault, SciSearchReplaceBase, SciSearchReplace, Clipbrd,
  uMysqlVio, uMysqlCT, uMysqlClient, SciSupport, Menus, SciKeyBindings,
  SciLexerOptionsDlg, JvComponentBase, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP, IdAntiFreezeBase, IdAntiFreeze,
  JvCombobox, JvListComb, IdFTPList, Math, ShellApi, CommCtrl, Consts,
  XPMan, IdUDPBase, IdUDPClient, Grids, JvExtComponent, ToolWin,
  TFlatButtonUnit, JvPanel, SciCallTips, UnitCodeProcessor;

type
  THackedSearchReplace = class(TSciSearchReplace)
    public
      FSearchFromCaretInt: Boolean;
  end;

  TfrmMain = class(TForm)
    dckMenu: TSpTBXDock;
    tbxMenu: TSpTBXToolbar;
    tbxSwitcher: TTBXSwitcher;
    mnuCompile: TSpTBXSubmenuItem;
    mnuView: TSpTBXSubmenuItem;
    mnuEdit: TSpTBXSubmenuItem;
    mnuFile: TSpTBXSubmenuItem;
    mnuGenerators: TSpTBXSubmenuItem;
    mnuExtras: TSpTBXSubmenuItem;
    mnuHelp: TSpTBXSubmenuItem;
    tbxFile: TSpTBXToolbar;
    sbStatus: TSpTBXStatusBar;
    mnuStatus: TSpTBXLabelItem;
    mnuTBSpacer: TSpTBXRightAlignSpacerItem;
    sepSB1: TSpTBXSeparatorItem;
    mnuModified: TSpTBXLabelItem;
    sepSB2: TSpTBXSeparatorItem;
    mnuCurPos: TSpTBXLabelItem;
    dckTools: TSpTBXDock;
    JvInspectorDotNETPainter: TJvInspectorDotNETPainter;
    tbiNew: TSpTBXItem;
    tbiOpen: TSpTBXItem;
    tbiSave: TSpTBXItem;
    tbsFile1: TSpTBXSeparatorItem;
    tbiNewSearch: TSpTBXItem;
    tbxEdit: TSpTBXToolbar;
    tbiUndo: TSpTBXItem;
    tbiRedo: TSpTBXItem;
    tbsEdit1: TSpTBXSeparatorItem;
    tbiCopy: TSpTBXItem;
    tbiCut: TSpTBXItem;
    tbiPaste: TSpTBXItem;
    tbsFile2: TSpTBXSeparatorItem;
    tbiCompile: TSpTBXItem;
    tbxSearch: TSpTBXToolbar;
    tbiSearchLabel: TSpTBXLabelItem;
    tbiSearchEdit: TSpTBXEditItem;
    mnuNew: TSpTBXSubmenuItem;
    mnuSaveFile: TSpTBXItem;
    mnuSaveAllFiles: TSpTBXItem;
    mnuSaveFileAs: TSpTBXItem;
    sepFile2: TSpTBXSeparatorItem;
    sepFile3: TSpTBXSeparatorItem;
    mnuCloseFile: TSpTBXItem;
    mnuCloseAllFiles: TSpTBXItem;
    sepFile4: TSpTBXSeparatorItem;
    mnuExportAsHTML: TSpTBXItem;
    sepFile5: TSpTBXSeparatorItem;
    mnuPrint: TSpTBXItem;
    mnuCloseApp: TSpTBXItem;
    sepFile6: TSpTBXSeparatorItem;
    mnuUndo: TSpTBXItem;
    mnuRedo: TSpTBXItem;
    sepEdit4: TSpTBXSeparatorItem;
    mnuPaste: TSpTBXItem;
    mnuCopy: TSpTBXItem;
    mnuCut: TSpTBXItem;
    mnuSelectAll: TSpTBXItem;
    mnsHelp: TSpTBXSeparatorItem;
    mnuAbout: TSpTBXItem;
    mnuSearch: TSpTBXSubmenuItem;
    mnuSearchFor: TSpTBXItem;
    mnuSearchNext: TSpTBXItem;
    mnuReplace: TSpTBXItem;
    tbxTabs: TSpTBXTabSet;
    tbxStartPage: TSpTBXTabItem;
    mnuTBSeperator: TSpTBXRightAlignSpacerItem;
    mnuTabs: TSpTBXSubmenuItem;
    mnuScrollRight: TSpTBXItem;
    mnuScrollLeft: TSpTBXItem;
    mnuCloseTab: TSpTBXItem;
    jplPages: TJvPageList;
    jspCode: TJvStandardPage;
    dckCodeTools: TSpTBXMultiDock;
    pnlCodeExplorer: TSpTBXDockablePanel;
    pnlCodeInspector: TSpTBXDockablePanel;
    jviInspector: TJvInspector;
    pnlToolbar: TSpTBXDockablePanel;
    tbxToolbar: TSpTBXTabControl;
    tbxOutput: TSpTBXTabItem;
    tsOutput: TSpTBXTabSheet;
    tbxTasks: TSpTBXTabItem;
    tsTasks: TSpTBXTabSheet;
    tbxFTPExplorer: TSpTBXTabItem;
    tsFTP: TSpTBXTabSheet;
    tbxRCON: TSpTBXTabItem;
    tsRCON: TSpTBXTabSheet;
    tbxFileHistory: TSpTBXTabItem;
    tsMySQL: TSpTBXTabSheet;
    tbxExplorer: TSpTBXTabControl;
    tbxCode: TSpTBXTabItem;
    tsCodeExplorer: TSpTBXTabSheet;
    tbxProjectFiles: TSpTBXTabItem;
    tsProjectFiles: TSpTBXTabSheet;
    cboInspector: TSpTBXComboBox;
    mnuThemes: TSpTBXSubmenuItem;
    mnuThemeList: TSpTBXThemeGroupItem;
    mnuHighlighter: TSpTBXSubmenuItem;
    tbxCalculator: TSpTBXToolbar;
    tbiCalculatorLabel: TSpTBXLabelItem;
    tbiCalculatorEdit: TSpTBXEditItem;
    mnuShowToolbar: TSpTBXItem;
    mnuMore: TSpTBXItem;
    mnuSortEntries: TSpTBXItem;
    sepView2: TSpTBXSeparatorItem;
    sepView3: TSpTBXSeparatorItem;
    mnuCodeExplorer: TSpTBXSubmenuItem;
    mnuCodeInspector: TSpTBXSubmenuItem;
    jspStartPage: TJvStandardPage;
    pnlRealBG: TSpTBXPanel;
    imgBanner: TJvImage;
    pnlRecentFiles: TSpTBXGroupBox;
    shpRecentFiles: TShape;
    cmdLoadFile: TSpTBXButton;
    cmdCreateNewFile: TSpTBXButton;
    pnlProfile: TSpTBXGroupBox;
    lblProfile: TSpTBXLabel;
    cboProfiles: TSpTBXComboBox;
    cmdAddProfile: TSpTBXButton;
    cmdDeleteProfile: TSpTBXButton;
    mnuShowCodeExplorer: TSpTBXItem;
    mnuShowCodeInspector: TSpTBXItem;
    sciEditor: TScintilla;
    ilCodeExplorer: TPngImageList;
    ilTBX: TPngImageList;
    ilMain: TPngImageList;
    mnuDoCompile: TSpTBXItem;
    mnuCompileAndUpload: TSpTBXItem;
    mnuCompileUploadAndConnect: TSpTBXItem;
    mnuCompileAndStartGame: TSpTBXItem;
    mnsCompile1: TSpTBXSeparatorItem;
    sepSearch1: TSpTBXSeparatorItem;
    mnuHalfLife1: TSpTBXSubmenuItem;
    mnuHalfLife2: TSpTBXSubmenuItem;
    mnuEventList: TSpTBXItem;
    mnuMessages: TSpTBXItem;
    mnuIndentCode: TSpTBXItem;
    mnuUnindentCode: TSpTBXItem;
    sepExtras2: TSpTBXSeparatorItem;
    mnuSocketTerminal: TSpTBXItem;
    sepEdit1: TSpTBXSeparatorItem;
    mnuChangeServer: TSpTBXSubmenuItem;
    mnuFindNext: TSpTBXItem;
    sepExtras3: TSpTBXSeparatorItem;
    mnuPreferences: TSpTBXItem;
    mnuHeaderTools: TSpTBXSubmenuItem;
    sepExtras1: TSpTBXSeparatorItem;
    mnuNewInclude: TSpTBXItem;
    mnuNewDefinition: TSpTBXItem;
    ilTabs: TPngImageList;
    mnsCompile2: TSpTBXSeparatorItem;
    mnuBatchCompile: TSpTBXItem;
    sepSB3: TSpTBXSeparatorItem;
    mnuCurrProject: TSpTBXLabelItem;
    lstProjectFiles: TSpTBXListBox;
    sepView1: TSpTBXSeparatorItem;
    mnuCodepage: TSpTBXSubmenuItem;
    mnuCPDefault: TSpTBXItem;
    mnuCPAnsi: TSpTBXItem;
    mnuCPUTF8: TSpTBXItem;
    mnuCPBaltic: TSpTBXItem;
    mnuCPChineseBig5: TSpTBXItem;
    mnuCPEastEurope: TSpTBXItem;
    mnuCPGB2312: TSpTBXItem;
    mnuCPGreek: TSpTBXItem;
    mnuCPHangul: TSpTBXItem;
    mnuCPMac: TSpTBXItem;
    mnuCPOEM: TSpTBXItem;
    mnuCPRussian: TSpTBXItem;
    mnuCPCyrillic: TSpTBXItem;
    mnuCPShiftJIS: TSpTBXItem;
    mnuCPSymbol: TSpTBXItem;
    mnuCPTurkish: TSpTBXItem;
    mnuCPJohab: TSpTBXItem;
    mnuCPArabic: TSpTBXItem;
    mnuCPVietnamese: TSpTBXItem;
    mnuCPThai: TSpTBXItem;
    mnuCP8859_15: TSpTBXItem;
    sepCodepage: TSpTBXSeparatorItem;
    sepEdit2: TSpTBXSeparatorItem;
    mnuBatch: TSpTBXItem;
    mnuCPP: TSpTBXItem;
    mnuCSS: TSpTBXItem;
    mnuEMail: TSpTBXItem;
    mnuHTML: TSpTBXItem;
    mnuMakefile: TSpTBXItem;
    mnuMSSQL: TSpTBXItem;
    mnuXML: TSpTBXItem;
    mnuSQL: TSpTBXItem;
    mnuPHP: TSpTBXItem;
    mnuNone: TSpTBXItem;
    mnuStartPage: TSpTBXItem;
    mnuPawn: TSpTBXSubmenuItem;
    sepHighlighter: TSpTBXSeparatorItem;
    mnuAMXModX: TSpTBXItem;
    mnuSourceMod: TSpTBXItem;
    mnuPawnDefault: TSpTBXItem;
    odOpen: TOpenDialog;
    sdSave: TSaveDialog;
    sepFile1: TSpTBXSeparatorItem;
    mnuOpenFile: TSpTBXItem;
    mnuProject: TSpTBXSubmenuItem;
    mnuNewProject: TSpTBXItem;
    mnuOpenProject: TSpTBXItem;
    sepProject1: TSpTBXSeparatorItem;
    sepProject2: TSpTBXSeparatorItem;
    mnuSaveProject: TSpTBXItem;
    mnuSaveProjectAs: TSpTBXItem;
    sepProject3: TSpTBXSeparatorItem;
    mnuRemoveFromProject: TSpTBXItem;
    mnuAddToProject: TSpTBXItem;
    sepProject4: TSpTBXSeparatorItem;
    mnuCompileProjectFiles: TSpTBXItem;
    mnuShowStartPage: TSpTBXItem;
    sciPrinter: TSciPrinter;
    sciPropLoader: TSciPropertyLoader;
    sepSearch2: TSpTBXSeparatorItem;
    mnuGoToLine: TSpTBXItem;
    mnuSearchPrev: TSpTBXItem;
    sepSearch3: TSpTBXSeparatorItem;
    mnuToggleBookmark: TSpTBXItem;
    mnuNextBookmark: TSpTBXItem;
    mnuPrevBookmark: TSpTBXItem;
    tbxMySQL: TSpTBXTabItem;
    tsSQLDatabase: TSpTBXTabSheet;
    sciSearchReplace: TSciSearchReplace;
    mnuSimpleMenuOld: TSpTBXItem;
    mnuPlayerMenuOld: TSpTBXItem;
    mnuSimpleMenu: TSpTBXItem;
    mnuPlayerMenu: TSpTBXItem;
    sepGenerators2: TSpTBXSeparatorItem;
    mnuHudmessageGenerator: TSpTBXItem;
    mnuMOTDGenerator: TSpTBXItem;
    sepGenerators3: TSpTBXSeparatorItem;
    mnuConnectionGenerator: TSpTBXItem;
    mnuSQLConnectionGenerator: TSpTBXItem;
    sepGenerators1: TSpTBXSeparatorItem;
    lstOutput: TSpTBXListBox;
    sepExtras4: TSpTBXSeparatorItem;
    mnuRegisterIn: TSpTBXSubmenuItem;
    mnuRegisterLocal: TSpTBXItem;
    mnuRegisterRemote: TSpTBXItem;
    mnuFTPS: TSpTBXSubmenuItem;
    mnuRCONS: TSpTBXSubmenuItem;
    SpTBXItem3: TSpTBXItem;
    SpTBXItem4: TSpTBXItem;
    mnuSQLS: TSpTBXSubmenuItem;
    mnuNoServer: TSpTBXItem;
    sepEdit3: TSpTBXSeparatorItem;
    mnuDeleteSelection: TSpTBXItem;
    mnuAppendPaste: TSpTBXItem;
    sciOptionsDialog: TScintillaOptionsDlg;
    pnlLocalFiles: TSpTBXPanel;
    splFTP1: TSpTBXSplitter;
    pnlQuickCommands: TSpTBXPanel;
    splFTP2: TSpTBXSplitter;
    pnlRemoteFiles: TSpTBXPanel;
    cmdUpload: TSpTBXButton;
    cmdDownload: TSpTBXButton;
    lblFTPStatus: TSpTBXLabel;
    pnlFTP: TSpTBXPanel;
    lvFTP: TJvListView;
    pnlLocal: TSpTBXPanel;
    shlLocal: TShellListView;
    cboRoot: TShellComboBox;
    cmdCancelFTP: TSpTBXButton;
    pbFTP: TSpTBXProgressBar;
    cmdCompileAndUpload: TSpTBXButton;
    cmdUploadSource: TSpTBXButton;
    IdFTP: TIdFTP;
    IdAntiFreeze: TIdAntiFreeze;
    cboRemote: TComboBoxEx;
    ilFileExtensions: TImageList;
    txtRCONCommand: TRichEdit;
    lvRecentFiles: TListView;
    IdUDPRCON: TIdUDPClient;
    IdTCPRCON: TIdTCPClient;
    txtRCONLog: TMemo;
    sgSQLResult: TStringGrid;
    rtfSQLQuery: TRichEdit;
    itpSQLCommands: TJvItemsPanel;
    sepView4: TSpTBXSeparatorItem;
    mnuClearMarkers: TSpTBXItem;
    pnlCodeExplorerBorder: TPanel;
    trvCodeExplorer: TTreeView;
    mnuHideEmptyGroups: TSpTBXItem;
    sepCodeExplorer: TSpTBXSeparatorItem;
    mnuRecreateItems: TSpTBXItem;
    xpmFTPBrowser: TXPManifest;
    pnlAutoComplete: TJvPanel;
    lvAutoComplete: TJvListView;
    pnlACTB: TJvPanel;
    cmdShowConstVal: TFlatButton;
    cmdShowVariables: TFlatButton;
    cmdShowFuncs: TFlatButton;
    cmdShowIncItems: TFlatButton;
    bvlSpace: TBevel;
    pnlCallTip: TJvPanel;
    mnuBaconize: TSpTBXItem;
    lvTasks: TJvListView;
    ppmTasks: TSpTBXPopupMenu;
    mnuAddTask: TSpTBXItem;
    mnuDeleteTask: TSpTBXItem;
    sepTasks: TSpTBXSeparatorItem;
    mnuModifyTask: TSpTBXItem;
    ppmOutput: TSpTBXPopupMenu;
    mnuCopyItem: TSpTBXItem;
    mnuCopyEverything: TSpTBXItem;
    procedure FormShow(Sender: TObject);
    procedure mnuScrollLeftClick(Sender: TObject);
    procedure mnuScrollRightClick(Sender: TObject);
    procedure lvRecentFilesCustomDraw(Sender: TCustomListView;
      const ARect: TRect; var DefaultDraw: Boolean);
    procedure tbiCalculatorEditAcceptText(Sender: TObject;
      var NewText: WideString; var Accept: Boolean);
    procedure tbiCalculatorEditBeginEdit(Sender: TTBEditItem;
      Viewer: TTBEditItemViewer; EditControl: TEdit);
    procedure trvCodeExplorerCollapsing(Sender: TObject; Node: TTreeNode;
      var AllowCollapse: Boolean);
    procedure trvCodeExplorerExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure trvCodeExplorerEditing(Sender: TObject; Node: TTreeNode;
      var AllowEdit: Boolean);
    procedure tbxTabsActiveTabChanging(Sender: TObject; TabIndex,
      NewTabIndex: Integer; var Allow: Boolean);
    procedure sciEditorModified(Sender: TObject; const position,
      modificationType: Integer; text: PAnsiChar; const len, linesAdded,
      line, foldLevelNow, foldLevelPrev: Integer);
    procedure mnuCloseAppClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure tbxTabsActiveTabChange(Sender: TObject; TabIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure mnuQuickCreate(Sender: TObject);
    procedure mnuSaveFileClick(Sender: TObject);
    procedure mnuSetCodepage(Sender: TObject);
    procedure mnuTabsClick(Sender: TObject);
    procedure tbxTabsActiveTabReorder(Sender: TObject; TabIndex: Integer);
    procedure mnuMoreClick(Sender: TObject);
    procedure mnuSaveFileAsClick(Sender: TObject);
    procedure tbiNewClick(Sender: TObject);
    procedure tbiOpenClick(Sender: TObject);
    procedure mnuOpenFileClick(Sender: TObject);
    procedure tbiSaveClick(Sender: TObject);
    procedure mnuSaveAllFilesClick(Sender: TObject);
    procedure mnuCloseFileClick(Sender: TObject);
    procedure mnuCloseAllFilesClick(Sender: TObject);
    procedure mnuShowStartPageClick(Sender: TObject);
    procedure mnuExportAsHTMLClick(Sender: TObject);
    procedure mnuPrintClick(Sender: TObject);
    procedure mnuCloseTabClick(Sender: TObject);
    procedure mnuUndoClick(Sender: TObject);
    procedure mnuCutClick(Sender: TObject);
    procedure mnuCopyClick(Sender: TObject);
    procedure mnuPasteClick(Sender: TObject);
    procedure tbiUndoClick(Sender: TObject);
    procedure tbiRedoClick(Sender: TObject);
    procedure tbiCopyClick(Sender: TObject);
    procedure tbiCutClick(Sender: TObject);
    procedure tbiPasteClick(Sender: TObject);
    procedure mnuSelectAllClick(Sender: TObject);
    procedure mnuAMXModXClick(Sender: TObject);
    procedure mnuShowToolbarClick(Sender: TObject);
    procedure mnuShowCodeExplorerClick(Sender: TObject);
    procedure mnuShowCodeInspectorClick(Sender: TObject);
    procedure mnuSearchForClick(Sender: TObject);
    procedure mnuSearchNextClick(Sender: TObject);
    procedure mnuReplaceClick(Sender: TObject);
    procedure mnuSetHighlighterClick(Sender: TObject);
    procedure mnuEMailClick(Sender: TObject);
    procedure mnuPawnDefaultClick(Sender: TObject);
    procedure mnuNoneClick(Sender: TObject);
    procedure mnuMSSQLClick(Sender: TObject);
    procedure mnuSearchPrevClick(Sender: TObject);
    procedure mnuGoToLineClick(Sender: TObject);
    procedure sciSearchReplaceTextNotFound(Sender: TObject);
    procedure mnuToggleBookmarkClick(Sender: TObject);
    procedure mnuNextBookmarkClick(Sender: TObject);
    procedure mnuPrevBookmarkClick(Sender: TObject);
    procedure mnuDoCompileClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbiSearchEditAcceptText(Sender: TObject;
      var NewText: WideString; var Accept: Boolean);
    procedure sciEditorUpdateUI(Sender: TObject);
    procedure tbiNewSearchClick(Sender: TObject);
    procedure mnuFindNextClick(Sender: TObject);
    procedure tbiCompileClick(Sender: TObject);
    procedure cmdCreateNewFileClick(Sender: TObject);
    procedure cmdLoadFileClick(Sender: TObject);
    procedure pnlToolbarRecreated(Sender: TObject);
    procedure pnlToolbarClose(Sender: TObject);
    procedure pnlCodeExplorerClose(Sender: TObject);
    procedure pnlCodeExplorerRecreated(Sender: TObject);
    procedure mnuAboutClick(Sender: TObject);
    procedure pnlToolbarResize(Sender: TObject);
    procedure mnuBatchCompileClick(Sender: TObject);
    procedure mnuPreferencesClick(Sender: TObject);
    procedure sciEditorKeyPress(Sender: TObject; var Key: Char);
    procedure mnuDeleteSelectionClick(Sender: TObject);
    procedure mnuAppendPasteClick(Sender: TObject);
    procedure sciEditorZoom(Sender: TObject);
    procedure lstOutputDblClick(Sender: TObject);
    procedure cmdAddProfileClick(Sender: TObject);
    procedure cmdDeleteProfileClick(Sender: TObject);
    procedure cboProfilesClick(Sender: TObject);
    procedure splFTP2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure splFTP1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure IdFTPWorkBegin(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCountMax: Integer);
    procedure IdFTPWorkEnd(Sender: TObject; AWorkMode: TWorkMode);
    procedure IdFTPWork(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCount: Integer);
    procedure IdFTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
    procedure IdFTPDisconnected(Sender: TObject);
    procedure IdFTPAfterClientLogin(Sender: TObject);
    procedure cmdCancelFTPClick(Sender: TObject);
    procedure pnlQuickCommandsConstrainedResize(Sender: TObject;
      var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
    procedure tbxToolbarActiveTabChange(Sender: TObject;
      TabIndex: Integer);
    procedure cboRemoteExit(Sender: TObject);
    procedure cboRemoteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lvFTPDblClick(Sender: TObject);
    procedure lvFTPEdited(Sender: TObject; Item: TListItem; var S: String);
    procedure lvFTPEditing(Sender: TObject; Item: TListItem;
      var AllowEdit: Boolean);
    procedure shlLocalDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure shlLocalDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lvFTPDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lvFTPDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cmdDownloadClick(Sender: TObject);
    procedure cmdUploadClick(Sender: TObject);
    procedure lvFTPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure shlLocalDblClick(Sender: TObject);
    procedure cmdUploadSourceClick(Sender: TObject);
    procedure cmdCompileAndUploadClick(Sender: TObject);
    procedure txtRCONCommandKeyPress(Sender: TObject; var Key: Char);
    procedure txtRCONLogKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rtfSQLQueryKeyPress(Sender: TObject; var Key: Char);
    procedure itpSQLCommandsItemClick(Sender: TObject; ItemIndex: Integer);
    procedure mnuCompileAndStartGameClick(Sender: TObject);
    procedure mnuCompileAndUploadClick(Sender: TObject);
    procedure mnuCompileUploadAndConnectClick(Sender: TObject);
    procedure mnuClearMarkersClick(Sender: TObject);
    procedure trvCodeExplorerDblClick(Sender: TObject);
    procedure trvCodeExplorerAdvancedCustomDraw(Sender: TCustomTreeView;
      const ARect: TRect; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure mnuHideEmptyGroupsClick(Sender: TObject);
    procedure mnuSortEntriesClick(Sender: TObject);
    procedure mnuRecreateItemsClick(Sender: TObject);
    procedure pnlRealBGDrawBackground(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; const PaintStage: TSpTBXPaintStage;
      var PaintDefault: Boolean);
    procedure pnlRecentFilesDrawBackground(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; const PaintStage: TSpTBXPaintStage;
      var PaintDefault: Boolean);
    procedure sciEditorMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lvAutoCompleteMouseEnter(Sender: TObject);
    procedure pnlACTBMouseLeave(Sender: TObject);
    procedure sciEditorMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ACPanelClick(Sender: TObject);
    procedure pnlAutoCompleteResize(Sender: TObject);
    procedure lvAutoCompleteDrawItem(Sender: TCustomListView;
      Item: TListItem; Rect: TRect; State: TOwnerDrawState);
    procedure cmdShowIncItemsClick(Sender: TObject);
    procedure cmdShowFuncsClick(Sender: TObject);
    procedure cmdShowVariablesClick(Sender: TObject);
    procedure cmdShowConstValClick(Sender: TObject);
    procedure sciEditorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sciEditorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lvAutoCompleteDblClick(Sender: TObject);
    procedure lvAutoCompleteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sciEditorDblClick(Sender: TObject);
    procedure pnlCallTipPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pnlCallTipMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlCallTipMouseLeave(Sender: TObject);
    procedure mnuBaconizeClick(Sender: TObject);
    procedure pnlCallTipClick(Sender: TObject);
    procedure mnuIndentCodeClick(Sender: TObject);
    procedure mnuUnindentCodeClick(Sender: TObject);
    procedure cboInspectorChange(Sender: TObject);
    procedure trvCodeExplorerClick(Sender: TObject);
    procedure ppmTasksInitPopup(Sender: TObject; PopupView: TTBView);
    procedure lvRecentFilesDblClick(Sender: TObject);
    procedure mnuAddTaskClick(Sender: TObject);
    procedure mnuDeleteTaskClick(Sender: TObject);
    procedure mnuModifyTaskClick(Sender: TObject);
    procedure lvTasksDblClick(Sender: TObject);
    procedure lvRecentFilesInsert(Sender: TObject; Item: TListItem);
    procedure ppmOutputInitPopup(Sender: TObject; PopupView: TTBView);
    procedure mnuCopyItemClick(Sender: TObject);
    procedure mnuCopyEverythingClick(Sender: TObject);
    procedure mnuRedoClick(Sender: TObject);
  private
    procedure WMCopyData(var Msg: TWMCopyData); message WM_COPYDATA;
  public
    IndentedOLSLine: Integer;
    CanReset: Boolean;
    ShowCaret: Boolean;
    OldCaretPos: TPoint;

    AllowFTPSwitch: Boolean;
    LastFTPPath: String;
    procedure UpdateScrollTabs;
    function CheckFTPConn: Boolean;
    function FTPChangeDir(NewDir: String): Boolean;
    procedure ReloadFTP(const IgnoreConnState: Boolean = False);
    procedure DownloadFileFTP(const FileName, DestFile: String);
    function UploadFileFTP(const FileName, DestFile: String): Boolean;
    function GetFullFTPPath: String;
  public
    ToolbarPopup, ShowAC, ShowCT, ShowPossible: Boolean;
    AC_ShowIncItems, AC_CompletitionDone, AC_IgnoreChar, AC_BlockTB: Boolean;
    AC_LastElem: Integer;
    EnumItems: TStringList;
    CT_Function, CT_FileName: String;
    CT_ParamList: TStringList;
    CT_ActiveParam, CT_SelectedParam, CT_FPPos, CT_StartPos, CT_StartLine,
    CT_XOff, CT_FuncLine: Integer;
    CT_UpdateReq: Boolean;
    CT_Comment: TComment;

    CI_RecreationNeeded: Boolean;

    OldProc: TWndMethod;
    ACStartPos, ACStartLine: Integer;
    MinXPos: Integer;
    OldKW: String;
    SearchRestarted: Boolean;

    VBSObj: TScriptControl;

    sciEditorPos: TPoint;
    procedure AdjustAC;
    procedure AdjustCT;
    function DetectCallTip(const FuncClosed: Boolean): Boolean;
    procedure RebuildList(const NewExp: String; const UpdateStat: Boolean = True);
    procedure UpdateList(const NewExp: String; const UpdateStat: Boolean = True); 
    procedure sciEditorProc(var Message: TMessage);
  end;

var
  frmMain: TfrmMain;

const
  UNMODIFIED_MARKER = 2;
  MODIFIED_MARKER   = 3;
  ERROR_MARKER      = 4;

  CM_SCROLLBOXEXVERTSCROLL  = WM_USER+512;
  CM_SCROLLBOXEXHORIZSCROLL = WM_USER+513;



implementation

uses UnitfrmCreateNewFile, UnitCodeInspector, UnitDocuments, UnitFunctions,
  UnitConfigManager, UnitExtensionManager,
  UnitfrmAllFilesDialog, UnitfrmExportAsHTML, UnitfrmPrint,
  UnitfrmSearchFor, UnitSearchUtils, UnitfrmGoToLine, UnitCompile,
  UnitfrmSettings, UnitXPMs, UnitfrmInputBox, UnitfrmBatchCompiler,
  UnitCSResultSaver, UnitfrmCloseDialog, UnitfrmAbout, UnitfrmTaskMgr;

var
  FilterEnabled: Boolean;
  FilterType: TClamType;

{$R *.DFM}

// Init Stuff

procedure TfrmMain.FormCreate(Sender: TObject);
procedure ConvertTo32BitImageList(const ImageList: TImageList);
const
  Mask: array[Boolean] of Longint = (0, ILC_MASK);
var
  TempList: TImageList;
begin
  if Assigned(ImageList) then
  begin
    TempList := TImageList.Create(nil);
    try
      TempList.Assign(ImageList);
      with ImageList do
      begin
        Handle := ImageList_Create(
          Width, Height, ILC_COLOR32 or Mask[Masked], 0, AllocBy);

        if not HandleAllocated then
          raise EInvalidOperation.Create(SInvalidImageList);
      end;

      Imagelist.AddImages(TempList);
    finally
      FreeAndNil(TempList);
    end;
  end;
end;

begin
  { we do not want any black borders in our FTP explorer }
  ConvertTo32BitImageList(ilFileExtensions);
  { scintilla control, first part }
  sciEditor.StreamClass := TSciStreamDefault;
  sciEditor.Bookmark.Pixmap := BOOKMARK_ARROW;
  { we need to know every extension for our open function }
  { warning: if we call this somewhere else, clear BigFileList etc. first! }
  LoadExtensions('AMX Mod X');
  LoadExtensions('SourceMod');
  LoadExtensions('Pawn');
  LoadExtensions('HTML');
  LoadExtensions('PHP');
  LoadExtensions('Textfiles');
  LoadExtensions('XML');
  { and create the menu items for the "New..." menu }
  LoadMenuItems('AMX Mod X', ApplicationPath + 'Templates\AMX Mod X\config.ini');
  LoadMenuItems('SorceMod', ApplicationPath + 'Templates\SourceMod\config.ini');
  LoadMenuItems('Pawn', ApplicationPath + 'Templates\Pawn\config.ini');
  LoadMenuItems('HTML', ApplicationPath + 'Templates\HTML\config.ini');
  LoadMenuItems('PHP', ApplicationPath + 'Templates\PHP\config.ini');
  LoadMenuItems('Textfiles', ApplicationPath + 'Templates\Textfiles\config.ini');
  LoadMenuItems('XML', ApplicationPath + 'Templates\XML\config.ini');
  if (mnuNew.Count > 1) then
    mnuNew.Insert(mnuNew.Count -1, TSpTBXSeparatorItem.Create(mnuNew));
  { register markers for modification bar }
  sciEditor.MarkerDefine(UNMODIFIED_MARKER, SC_MARK_PIXMAP);
  sciEditor.MarkerDefinePixmap(UNMODIFIED_MARKER, GREEN_XPM);
  sciEditor.MarkerDefine(MODIFIED_MARKER, SC_MARK_PIXMAP);
  sciEditor.MarkerDefinePixmap(MODIFIED_MARKER, YELLOW_XPM);
  { register error line marker }
  sciEditor.MarkerDefine(ERROR_MARKER, SC_MARK_BACKGROUND);
  sciEditor.MarkerSetFore(ERROR_MARKER, clWhite);
  sciEditor.MarkerSetBack(ERROR_MARKER, clRed);
  sciEditor.MarkerSetAlpha(ERROR_MARKER, 50);
  { Auto-Complete }
  ToolbarPopup := True;
  //ShowAC := False;
  //ShowCT := False;
  AC_ShowIncItems := True;
  CT_ParamList := TStringList.Create;
  CT_SelectedParam := -1;
  CT_ActiveParam := -1;
  SearchRestarted := False;
  { Calculator }
  try
    VBSObj := TScriptControl.Create(Self);
  except
    tbxCalculator.Free;
  end;
  { misc }
  DoubleBuffered := True;
  IndentedOLSLine := -1;
  AllowFTPSwitch := True;
  EnumItems := TStringList.Create;
  TJvCustomInspectorData.ItemRegister.Add(TJvInspectorTypeInfoRegItem.Create(TJvInspectorSelectionTextListItem, TypeInfo(TSelectionTextList)));
  NoInfoAvail;
end;

procedure TfrmMain.mnuAboutClick(Sender: TObject);
begin
  frmAbout.ShowModal;
end;

procedure TfrmMain.FormShow(Sender: TObject);
var Ext: TExtension;
    i: integer;
    FilesNotFound, Buff: String;
begin
  // set a few values
  DoubleBuffered := True;
  TBXSetTheme(Configuration.LastTheme);
  if (ActiveDoc <> nil) then
    sciEditor.SetFocus;
  OldProc := sciEditor.WindowProc;
  sciEditor.WindowProc := sciEditorProc;
  // frmMain is already created, let's check the start behavior thingy (reload files, show start page etc.)
  if (Configuration.ReloadSavedFiles) then begin
    if (Configuration.LastUsedFiles.Count <> 0) then begin
      FilesNotFound := '';
      for i := 0 to Configuration.LastUsedFiles.Count -1 do begin
        if (FileExists(Configuration.LastUsedFiles[i])) and (GetDocumentByFN(Configuration.LastUsedFiles[i]) = nil) then
          DoOpenFile(Configuration.LastUsedFiles[i], False)
        else
          FilesNotFound := FilesNotFound + #13#10 + Configuration.LastUsedFiles[i];
      end;
      if (FilesNotFound <> '') then
        Application.MessageBox(PChar('The following files couldn''t be found to be opened:' + #13#10 + FilesNotFound), 'Warning', MB_ICONWARNING);
    end
    else if (not Configuration.ShowStartPageOnStart) then begin
      if (Configuration.StartPageSubstitute >= 0) and (Configuration.StartPageSubstitute < BigFileList.Count) then begin
        Ext := TExtension(BigFileList.Objects[Configuration.StartPageSubstitute]);
        NewDocument(Ext.Highlighter, GetFileContent(Ext.FileName), PrepareTabTitle(Ext.Tab), Ext.Extension, Ext.StartLine, Ext.IconIndex, Ext.MarkStartLine);
        CloseDocument(nil);
      end;
    end;
  end;
  // load files in param list
  if (ParamCount > 0) then begin
    for i := 1 to ParamCount do begin
      Buff := ParamStr(i);
      if (FileExists(Buff)) and (GetDocumentByFN(Buff) = nil) then
        DoOpenFile(Buff, False);
    end;
  end;
  // activate last file
  if (DocumentCount <> 0) then
    ActivateDocument(GetDocument(DocumentCount -1));
  // refresh view
  lvRecentFiles.OnInsert(Self, nil);
end;

// Resize+Design Functions

procedure TfrmMain.lvRecentFilesCustomDraw(Sender: TCustomListView;
  const ARect: TRect; var DefaultDraw: Boolean);
begin
  if (lvRecentFiles.Items.Count = 0) then begin
    lvRecentFiles.Canvas.Font.Color := clBtnShadow;
    lvRecentFiles.Canvas.TextOut(4, 20, 'No recent files to show...');
  end;
end;

procedure TfrmMain.trvCodeExplorerCollapsing(Sender: TObject;
  Node: TTreeNode; var AllowCollapse: Boolean);
begin
  Node.ImageIndex := 0;
  Node.SelectedIndex := 0;
end;

procedure TfrmMain.trvCodeExplorerExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
begin
  Node.ImageIndex := 1;
  Node.SelectedIndex := 1;
end;

procedure TfrmMain.trvCodeExplorerEditing(Sender: TObject; Node: TTreeNode;
  var AllowEdit: Boolean);
begin
  AllowEdit := (Node.ImageIndex > 1) and (Node.Data <> nil);
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  UpdateScrollTabs;
  AdjustAC;
end;

// "File" Menu

// "New" Submenu

procedure TfrmMain.mnuQuickCreate(Sender: TObject);
var Info: TQuickCreateInfo;
begin
  Info := Pointer((Sender As TSpTBXItem).Tag);
  NewDocument(Info.Highlighter, GetFileContent(Info.FileName), PrepareTabTitle(Info.TabName), ExtractFileExt(Info.TabName), Info.StartLine, -(Info.ImageIndex+1), Info.MarkStartLine);
end;

procedure TfrmMain.mnuMoreClick(Sender: TObject);
begin
  if (BusyState = []) then begin
    if (frmCreateNewFile.ShowModal = mrOk) then
      frmCreateNewFile.Process;
  end;
end;

// - End -

procedure TfrmMain.mnuOpenFileClick(Sender: TObject);
begin
  if (BusyState = []) then
    DoOpenFile('', True);
end;

procedure TfrmMain.mnuSaveFileClick(Sender: TObject);
begin
  if (ActiveDoc = nil) or (BusyState <> []) then exit;

  if (ActiveDoc.Filename = '') then
    DoSaveAs(ActiveDoc)
  else
    DoSave(ActiveDoc);
end;

procedure TfrmMain.mnuSaveFileAsClick(Sender: TObject);
begin
  if (ActiveDoc = nil) or (BusyState <> []) then exit;

  DoSaveAs(ActiveDoc);
end;

procedure TfrmMain.mnuSaveAllFilesClick(Sender: TObject);
var i: integer;
    Doc: TDocument;
begin
  if (BusyState <> []) then exit;

  frmAllFilesDialog.Caption := 'Save All Files...';
  frmAllFilesDialog.lblInfo.Caption := 'Please select the files you want to save:';
  frmAllFilesDialog.ResetFiles(True);
  if (frmAllFilesDialog.lstFiles.Count = 0) then
    MessageBox(Handle, 'Sorry, there are no files to save.', 'Error', MB_ICONWARNING)
  else if (frmAllFilesDialog.ShowModal = mrOk) then begin
    for i := 0 to frmAllFilesDialog.lstFiles.Count -1 do begin
      if (frmAllFilesDialog.lstFiles.Checked[i]) then begin
        Doc := TDocument(frmAllFilesDialog.lstFiles.Items.Objects[i]);
        if (Doc.Filename = '') then begin
          if not DoSaveAs(Doc) then
            exit;
        end
        else begin
          if not DoSave(Doc) then
            exit;
        end;
      end;
    end;
  end;
end;

procedure TfrmMain.mnuCloseFileClick(Sender: TObject);
begin
  if ((tbxTabs.Items.Count <= 6) and (ActiveDoc = nil)) or (BusyState <> []) then exit;

  CloseDocument(ActiveDoc);
end;

procedure TfrmMain.mnuCloseAllFilesClick(Sender: TObject);
var i: integer;
    Doc: TDocument;
begin
  if (BusyState <> []) then exit;

  frmAllFilesDialog.Caption := 'Close All Files...';
  frmAllFilesDialog.lblInfo.Caption := 'Please select the files you want to close:';
  frmAllFilesDialog.ResetFiles(False);
  if (frmAllFilesDialog.lstFiles.Count = 0) then
    MessageBox(Handle, 'Sorry, there are no files to close.', 'Error', MB_ICONWARNING)
  else if (frmAllFilesDialog.ShowModal = mrOk) then begin
    Screen.Cursor := crAppStart;
    for i := 0 to frmAllFilesDialog.lstFiles.Count -1 do begin
      if (frmAllFilesDialog.lstFiles.Checked[i]) then begin
        Doc := TDocument(frmAllFilesDialog.lstFiles.Items.Objects[i]);
        if (Doc.Filename = '') then begin
          if (not CloseDocument(Doc)) then begin
            Screen.Cursor := crDefault;
            exit;
          end;
        end
        else begin
          if (not CloseDocument(Doc)) then begin
            Screen.Cursor := crDefault;
            exit;
          end;
        end;
      end;
    end;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMain.mnuExportAsHTMLClick(Sender: TObject);
var FileStream: TFileStream;
begin
  if (BusyState <> []) or (ActiveDoc = nil) then exit;

  if (frmExportAsHTML.ShowModal = mrOk) then begin
    // export
    try
      FileStream := TFileStream.Create(frmExportAsHTML.txtFilename.Text, fmCreate);
      sciEditor.ExportToHTML(FileStream, frmExportAsHTML.txtTitle.Text);
      FileStream.Free;
    except
      on E: Exception do begin
        // free stream
        if (Assigned(FileStream)) then
          FreeAndNil(FileStream);
        // show message
        MessageBox(Handle, 'Oops, something went wrong. Make sure you can access the selected file and try again.', 'Warning', MB_ICONWARNING);
        AddDebugLog('HTML-Export', 'Cannot export to HTML file: ' + #13 + E.Message);
        mnuExportAsHTML.Click;
      end;
    end;
  end;
end;

procedure TfrmMain.mnuPrintClick(Sender: TObject);
begin
  if (BusyState <> []) or (ActiveDoc = nil) then exit;

  try
    frmPrint.seFromPage.MaxValue := sciPrinter.NumberOfPages;
    frmPrint.seToPage.MinValue := sciPrinter.NumberOfPages;
    frmPrint.txtTitle.Text := ActiveDoc.Title;
  except
    on E: Exception do begin
      MessageBox(Handle, 'Sorry, the printer couldn''t be set up. Check your printer settings and try again.', 'Error', MB_ICONWARNING);
      AddDebugLog('Printing', 'Error setting essential values for the print dialog: ' + E.Message);
      exit;
    end;
  end;

  if (frmPrint.ShowModal = mrOk) then begin
    Screen.Cursor := crHourGlass;
    // Color Mode
    case frmPrint.cboColorMode.ItemIndex of
      0: sciPrinter.ColorMode := sccmNormal;
      1: sciPrinter.ColorMode := sccmBlackOnWhite;
      2: sciPrinter.ColorMode := sccmColorOnWhite;
      3: sciPrinter.ColorMode := sccmColorOnWhiteDefaultBG;
      4: sciPrinter.ColorMode := sccmInvertLight;
    end;
    // Print Range
    case frmPrint.cboPrintRange.ItemIndex of
      0: sciPrinter.PrintRange := prAllPages;
      1: sciPrinter.PrintRange := prPageNums;
      2: sciPrinter.PrintRange := prSelection;
    end;
    // From+To Page
    sciPrinter.FromPage := frmPrint.seFromPage.ValueAsInteger;
    sciPrinter.ToPage := frmPrint.seToPage.ValueAsInteger;
    // Word-Wrap
    case frmPrint.cboWordWrap.ItemIndex of
      0: sciPrinter.WordWrap := sciNoWrap;
      1: sciPrinter.WordWrap := sciWrap;
      2: sciPrinter.WordWrap := sciWrapChar;
    end;
    // Magnification, Title and "Print Page Numbers"
    sciPrinter.Magnification := frmPrint.seMagnification.ValueAsInteger;
    sciPrinter.Title := frmPrint.txtTitle.Text;
    sciPrinter.PrintPageNumber := frmPrint.chkPrintPageNumbers.Checked;
    // Print it!
    sciPrinter.Print;
    // Cursor, zomg
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMain.mnuCloseAppClick(Sender: TObject);
begin
  Close;
end;

// "Edit" Menu

procedure TfrmMain.mnuUndoClick(Sender: TObject);
begin
  if (ActiveDoc = nil) or (ActiveControl = nil) or (BusyState <> []) then exit;

  if (ActiveControl = sciEditor) then
    sciEditor.Undo
  else begin
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, VK_CONTROL, 0);
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, Ord('Z'), 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, VK_CONTROL, 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, Ord('Z'), 0);
  end;
  // update menu items
  mnuRedo.Enabled := sciEditor.CanRedo;
  tbiRedo.Enabled := mnuRedo.Enabled;
  mnuUndo.Enabled := sciEditor.CanUndo;
  tbiUndo.Enabled := mnuUndo.Enabled;
end;

procedure TfrmMain.mnuRedoClick(Sender: TObject);
begin
  if (ActiveDoc = nil) or (ActiveControl = nil) or (BusyState <> []) then exit;

  if (ActiveControl = sciEditor) then
    sciEditor.Redo
  else begin
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, VK_CONTROL, 0);
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, Ord('Y'), 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, VK_CONTROL, 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, Ord('Y'), 0);
  end;
  // update menu items
  mnuRedo.Enabled := sciEditor.CanRedo;
  tbiRedo.Enabled := mnuRedo.Enabled;
  mnuUndo.Enabled := sciEditor.CanUndo;
  tbiUndo.Enabled := mnuUndo.Enabled;
end;

procedure TfrmMain.mnuCutClick(Sender: TObject);
begin
  if (ActiveDoc = nil) or (ActiveControl = nil) or (BusyState <> []) then exit;

  if (ActiveControl = sciEditor) then
    sciEditor.Cut
  else begin
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, VK_CONTROL, 0);
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, Ord('X'), 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, VK_CONTROL, 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, Ord('X'), 0);
  end;
end;

procedure TfrmMain.mnuCopyClick(Sender: TObject);
begin
  if (ActiveDoc = nil) or (ActiveControl = nil) or (BusyState <> []) then exit;

  if (ActiveControl = sciEditor) then
    sciEditor.Copy
  else begin
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, VK_CONTROL, 0);
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, Ord('C'), 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, VK_CONTROL, 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, Ord('C'), 0);
  end;
end;

procedure TfrmMain.mnuPasteClick(Sender: TObject);
begin
  if (ActiveDoc = nil) or (ActiveControl = nil) or (BusyState <> []) then exit;

  if (ActiveControl = sciEditor) then
    sciEditor.Paste
  else begin
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, VK_CONTROL, 0);
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, Ord('V'), 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, VK_CONTROL, 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, Ord('V'), 0);
  end;
end;

procedure TfrmMain.mnuAppendPasteClick(Sender: TObject);
begin
  if (ActiveControl = sciEditor) then
    sciEditor.AppendText(Length(Clipboard.AsText), PChar(Clipboard.AsText))
  else begin
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, VK_SHIFT, 0);
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, VK_CONTROL, 0);
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, Ord('V'), 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, VK_SHIFT, 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, VK_CONTROL, 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, Ord('V'), 0);
  end;
end;

procedure TfrmMain.mnuDeleteSelectionClick(Sender: TObject);
begin
  sciEditor.SelText := '';
end;

procedure TfrmMain.mnuSelectAllClick(Sender: TObject);
begin
  if (ActiveDoc = nil) or (ActiveControl = nil) or (BusyState <> []) then exit;

  if (ActiveControl = sciEditor) then
    sciEditor.SelectAll
  else begin
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, VK_CONTROL, 0);
    SendMessage(ActiveControl.Handle, WM_KEYDOWN, Ord('A'), 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, VK_CONTROL, 0);
    SendMessage(ActiveControl.Handle, WM_KEYUP, Ord('A'), 0);
  end;
end;

// "Search" Menu

procedure TfrmMain.mnuSearchForClick(Sender: TObject);
begin
  if (ActiveDoc = nil) or (BusyState <> []) then exit;

  SearchRestarted := False;
  ShowSearch;
end;

procedure TfrmMain.mnuSearchNextClick(Sender: TObject);
begin
  if (ActiveDoc = nil) or (BusyState <> []) then exit;

  DoSearchAgain(frmSearchFor.optDown.Checked);
end;

procedure TfrmMain.mnuSearchPrevClick(Sender: TObject);
begin
  if (ActiveDoc = nil) or (BusyState <> []) then exit;

  DoSearchAgain(not frmSearchFor.optDown.Checked);
end;

procedure TfrmMain.mnuReplaceClick(Sender: TObject);
begin
  if (ActiveDoc = nil) or (BusyState <> []) then exit;

  ShowReplace;
end;

procedure TfrmMain.mnuGoToLineClick(Sender: TObject);
begin
  if (ActiveDoc = nil) or (BusyState <> []) then exit;

  if (frmGoToLine.ShowModal = mrOk) then begin
    sciEditor.GotoLineEnsureVisible(StrToIntDef(frmGoToLine.seLine.Text, 1) -1);
    sciEditor.SetFocusEx(True);
  end;
end;

procedure TfrmMain.mnuToggleBookmarkClick(Sender: TObject);
begin
  if (ActiveDoc <> nil) or (BusyState <> []) then begin
    sciEditor.SetFocusEx(True);
    sciEditor.Bookmark.Toggle(sciEditor.GetCurrentLineNumber);
  end;
end;

procedure TfrmMain.mnuNextBookmarkClick(Sender: TObject);
begin
  if (ActiveDoc <> nil) or (BusyState <> []) then begin
    sciEditor.SetFocusEx(True);
    sciEditor.Bookmark.Next(True);
  end;
end;

procedure TfrmMain.mnuPrevBookmarkClick(Sender: TObject);
begin
  if (ActiveDoc <> nil) or (BusyState <> []) then begin
    sciEditor.SetFocusEx(True);
    sciEditor.Bookmark.Next(False);
  end;
end;

// "View" Menu

// "Highlighter" Submenu

procedure TfrmMain.mnuAMXModXClick(Sender: TObject);
begin
  if (ActiveDoc <> nil) and (BusyState = []) then
    SetHighlighter(ActiveDoc, 'AMXModX');
end;

procedure TfrmMain.mnuPawnDefaultClick(Sender: TObject);
begin
  if (ActiveDoc <> nil) and (BusyState = []) then
    SetHighlighter(ActiveDoc, 'Pawn');
end;

procedure TfrmMain.mnuSetHighlighterClick(Sender: TObject);
begin
  if (ActiveDoc <> nil) and (BusyState = []) then
    SetHighlighter(ActiveDoc, StringReplace(TSpTBXItem(Sender).Caption, '&', '', []));
end;

procedure TfrmMain.mnuEMailClick(Sender: TObject);
begin
  if (ActiveDoc <> nil) and (BusyState = []) then
    SetHighlighter(ActiveDoc, 'EmailMessage');
end;

procedure TfrmMain.mnuNoneClick(Sender: TObject);
begin
  if (ActiveDoc <> nil) and (BusyState = []) then
    SetHighlighter(ActiveDoc, 'null');
end;

procedure TfrmMain.mnuMSSQLClick(Sender: TObject);
begin
  if (ActiveDoc <> nil) and (BusyState = []) then
    SetHighlighter(ActiveDoc, 'MSSQL');
end;

// - End -

// "Codepage" Submenu

procedure TfrmMain.mnuSetCodepage(Sender: TObject);
var i: integer;
begin
  // set property
  sciEditor.CodePage := (Sender As TSpTBXItem).Tag;
  // check/uncheck items
  for i := 0 to mnuCodepage.Count -1 do
    mnuCodepage.Items[i].Checked := False;
  (Sender As TSpTBXItem).Checked := True;
end;

// - End -

// "Code-Explorer" Submenu

procedure TfrmMain.mnuHideEmptyGroupsClick(Sender: TObject);
begin
  Configuration.HideEmptyGroups := mnuHideEmptyGroups.Checked;
  if (Assigned(ActiveDoc)) then
    ActiveDoc.CodeParser.NeedRecreate := True;
end;

procedure TfrmMain.mnuSortEntriesClick(Sender: TObject);
begin
  Configuration.SortEntries := mnuSortEntries.Checked;
  if (Assigned(ActiveDoc)) then
    ActiveDoc.CodeParser.NeedRecreate := True;
end;

procedure TfrmMain.mnuRecreateItemsClick(Sender: TObject);
begin
  if (ActiveDoc <> nil) then
    ActiveDoc.CodeParser.NeedRecreate := True;
end;

// - End -

procedure TfrmMain.mnuShowToolbarClick(Sender: TObject);
begin
  pnlToolbar.Visible := mnuShowToolbar.Checked;
end;

procedure TfrmMain.mnuShowCodeExplorerClick(Sender: TObject);
begin
  pnlCodeExplorer.Visible := mnuShowCodeExplorer.Checked;
end;

procedure TfrmMain.mnuShowCodeInspectorClick(Sender: TObject);
begin
  pnlCodeInspector.Visible := mnuShowCodeInspector.Checked;
end;

procedure TfrmMain.mnuShowStartPageClick(Sender: TObject);
begin
  if (not mnuCloseTab.Enabled) then exit;

  if (mnuShowStartPage.Checked) and (tbxTabs.Items.Count > 6) then begin
    CloseDocument(nil);
    mnuShowStartPage.Checked := False;
  end
  else begin
    MakeStartPage;
    ActivateDocument(nil);
    mnuShowStartPage.Checked := True;
  end;
end;

// "Project" Menu

// "Compile" Menu

procedure TfrmMain.mnuDoCompileClick(Sender: TObject);
begin
  if (BusyState = []) and (ActiveDoc <> nil) then begin
    with GetCurrCompiler do
      DoCompile(ActiveDoc, FileName, Arguments, DefOutdir, '', SaveOrigFile, CaptureOut, Configuration.OutputShowLength, CopyOnly, True);
  end;
end;

procedure TfrmMain.mnuCompileAndStartGameClick(Sender: TObject);
var GameFile, Directory, Parameters: String;
begin
  if (BusyState = []) and (ActiveDoc <> nil) then begin
    with GetCurrCompiler do begin
      if (GameExec = '') then
        MessageBox(Handle, 'Error: You have to specify a game executable in the settings to use this function.', 'Pawn Studio', MB_ICONERROR)
      else begin
        if (DoCompile(ActiveDoc, FileName, Arguments, DefOutdir, '', SaveOrigFile, CaptureOut, Configuration.OutputShowLength, CopyOnly, True)) then begin
          lstOutput.Items.Add('Starting "' + GameExec + '"...');
          if (Configuration.OutputAutoScroll) then begin
            lstOutput.Perform(WM_VSCROLL, SB_BOTTOM, 0);
            lstOutput.ItemIndex := lstOutput.Items.Count -1;
          end;
          ParseCommandLine(GameExec, Directory, GameFile, Parameters);
          ShellExecute(Handle, 'open', PChar(GameFile), PChar(Parameters), PChar(Directory), SW_SHOW);
        end;
      end;
    end;
  end;
end;

procedure TfrmMain.mnuCompileAndUploadClick(Sender: TObject);
begin
  if (BusyState <> []) or (ActiveDoc = nil) then exit;
  
  if (not CheckFTPConn) then
    MessageBox(Handle, PChar('Error: You need to connect to an FTP server before you can upload any files.' + #13#10 + 'To do so, go to Edit -> Change Current Server -> FTP and select the FTP server you want to use.'), 'Pawn Studio', MB_ICONERROR)
  else begin
    if (ActiveDoc.Filename = '') then begin
      if (MessageBox(Handle, 'The current document has not been saved yet but it''s required to do so in order to upload it via FTP. Save it now?', 'Pawn Studio', MB_ICONQUESTION + MB_YESNO) = mrYes) then begin
        if (not DoSave(ActiveDoc)) then
          exit;
      end
      else
        exit;
    end;

    with GetCurrCompiler do begin
      // change ftp directory first
      if (not FTPChangeDir(Configuration.ActiveFTPSrv.UploadDestination)) then
        exit;
      // compile file and upload if successful
      if (DoCompile(ActiveDoc, FileName, Arguments, DefOutdir, '', SaveOrigFile, CaptureOut, Configuration.OutputShowLength, CopyOnly, True)) then begin
        if (tbxToolbar.ActivePage = tsOutput) then begin
          if (not Configuration.OutputShowLength) and (not CopyOnly) then
            lstOutput.Items.Add('');
          lstOutput.Perform(WM_VSCROLL, SB_BOTTOM, 0);
          lstOutput.ItemIndex := lstOutput.Items.Add('Uploading File...');
          if (UploadFileFTP(ActiveDoc.LastCompilationRes.TargetFile, ExtractFileName(ActiveDoc.LastCompilationRes.TargetFile))) then
            lstOutput.Items[lstOutput.Items.Count -1] := 'Uploading File... Done!'
          else
            lstOutput.Items[lstOutput.Items.Count -1] := 'Uploading File... Error!';
          ReloadFTP;
        end
        else if (UploadFileFTP(ActiveDoc.LastCompilationRes.TargetFile, ExtractFileName(ActiveDoc.LastCompilationRes.TargetFile))) then begin
          ReloadFTP;
          MessageBox(Handle, 'Upload and Compilation successfully performed!', 'Pawn Studio', MB_ICONINFORMATION);
        end;
      end;
    end;
  end;
end;

procedure TfrmMain.mnuCompileUploadAndConnectClick(Sender: TObject);
var GameFile, Directory, Parameters: String;
begin
  if (BusyState <> []) or (ActiveDoc = nil) then exit;
  
  if (not CheckFTPConn) then
    MessageBox(Handle, PChar('Error: You need to connect to an FTP server before you can upload any files.' + #13#10 + 'To do so, go to Edit -> Change Current Server -> FTP and select the FTP server you want to use.'), 'Pawn Studio', MB_ICONERROR)
  else if (GetCurrCompiler.GameExec = '') then
    MessageBox(Handle, 'Error: You have to specify a game executable in the settings to use this function.', 'Pawn Studio', MB_ICONERROR)
  else begin
    if (ActiveDoc.Filename = '') then begin
      if (MessageBox(Handle, 'The current document has not been saved yet but it''s required to do so in order to upload it via FTP. Save it now?', 'Pawn Studio', MB_ICONQUESTION + MB_YESNO) = mrYes) then begin
        if (not DoSave(ActiveDoc)) then
          exit;
      end
      else
        exit;
    end;

    with GetCurrCompiler do begin
      // change ftp directory first
      if (not FTPChangeDir(Configuration.ActiveFTPSrv.UploadDestination)) then
        exit;
      // compile file and upload if successful
      if (DoCompile(ActiveDoc, FileName, Arguments, DefOutdir, '', SaveOrigFile, CaptureOut, Configuration.OutputShowLength, CopyOnly, True)) then begin
        if (not Configuration.OutputShowLength) and (not CopyOnly) then
          lstOutput.Items.Add('');
        lstOutput.Perform(WM_VSCROLL, SB_BOTTOM, 0);
        lstOutput.ItemIndex := lstOutput.Items.Add('Uploading File...');
        if (UploadFileFTP(ActiveDoc.LastCompilationRes.TargetFile, ExtractFileName(ActiveDoc.LastCompilationRes.TargetFile))) then begin
          lstOutput.Items[lstOutput.Items.Count -1] := 'Uploading File... Done!';
          lstOutput.Items.Add('Starting "' + GameExec + '"...');
          if (Configuration.OutputAutoScroll) then begin
            lstOutput.Perform(WM_VSCROLL, SB_BOTTOM, 0);
            lstOutput.ItemIndex := lstOutput.Items.Count -1;
          end;
          ParseCommandLine(GameExec, Directory, GameFile, Parameters);
          ShellExecute(Handle, 'open', PChar(GameFile), PChar(Parameters), PChar(Directory), SW_SHOW);
        end
        else
          lstOutput.Items[lstOutput.Items.Count -1] := 'Uploading File... Error!';
        ReloadFTP;
      end;
    end;
  end;
end;

procedure TfrmMain.mnuBatchCompileClick(Sender: TObject);
begin
  if (BusyState = []) and (ActiveDoc <> nil) then
    frmBatchCompiler.Execute;
end;

// "Extras" Menu

procedure TfrmMain.mnuPreferencesClick(Sender: TObject);
var StrStream: TStringStream;
begin
  // hide ac+ct
  ShowAC := False;
  pnlAutoComplete.Hide;
  pnlACTB.Hide;
  ShowCT := False;
  pnlCallTip.Hide;
  // update dialog with the latest settings
  Screen.Cursor := crHourGlass;
  frmSettings.UpdateDialog;
  sciEditor.OnUpdateUI(Sender);
  Screen.Cursor := crDefault;
  // show dialog
  if (frmSettings.ShowModal = mrCancel) then begin
    Screen.Cursor := crHourGlass;
    Caption := 'Pawn Studio - Reloading Configuration...';
    sciEditor.LanguageManager.BeginUpdate;
    sciEditor.LanguageManager.LanguageList.Clear;
    // reload old editor settings
    StrStream := TStringStream.Create(Backup.EditorSettings);
    sciPropLoader.LoadFromStream(StrStream);
    StrStream.Free;
    // restore indent width (can be ignored for start page, set in ActivateDocument anyway)
    sciEditor.IndentWidth := Backup.Indent_TabSize;
    // then assign new config
    Configuration := Backup;
    // end
    sciEditor.LanguageManager.EndUpdate;
    Caption := 'Pawn Studio';
    Screen.Cursor := crDefault;
  end;
  if (ActiveDoc <> nil) then
    ActiveDoc.CodeParser.NeedUpdate := True;
  // disconnect FTP socket
  if (frmSettings.IdFTP.Connected) then
    frmSettings.DisconnectFTP;
end;

// "Generators" Menu

// "Help" Menu

// File Toolbar

procedure TfrmMain.tbiNewClick(Sender: TObject);
begin
  mnuMore.Click;
end;

procedure TfrmMain.tbiOpenClick(Sender: TObject);
begin
  mnuOpenFile.Click;
end;

procedure TfrmMain.tbiSaveClick(Sender: TObject);
begin
  mnuSaveFile.Click;
end;

procedure TfrmMain.tbiNewSearchClick(Sender: TObject);
begin
  mnuSearchFor.Click;
end;

procedure TfrmMain.mnuFindNextClick(Sender: TObject);
begin
  mnuSearchNext.Click;
end;

procedure TfrmMain.tbiCompileClick(Sender: TObject);
begin
  mnuDoCompile.Click;
end;

// Edit Toolbar

procedure TfrmMain.tbiUndoClick(Sender: TObject);
begin
  mnuUndo.Click;
end;

procedure TfrmMain.tbiRedoClick(Sender: TObject);
begin
  mnuRedo.Click;
end;

procedure TfrmMain.tbiCopyClick(Sender: TObject);
begin
  mnuCopy.Click;
end;

procedure TfrmMain.tbiCutClick(Sender: TObject);
begin
  mnuCut.Click;
end;

procedure TfrmMain.tbiPasteClick(Sender: TObject);
begin
  mnuPaste.Click;
end;

// Search Toolbar

procedure TfrmMain.tbiSearchEditAcceptText(Sender: TObject;
  var NewText: WideString; var Accept: Boolean);
begin
  if (ActiveDoc <> nil) and (BusyState = []) then
    DoSearchNormal(Configuration.Search_FromCaret, Configuration.Search_MatchWholeWord, Configuration.Search_CaseSensitive, Configuration.Search_RegEx, Configuration.Search_SearchForward, NewText);
end;

// Calculator Toolbar

procedure TfrmMain.tbiCalculatorEditBeginEdit(Sender: TTBEditItem;
  Viewer: TTBEditItemViewer; EditControl: TEdit);
begin
  EditControl.SelectAll;
end;

procedure TfrmMain.tbiCalculatorEditAcceptText(Sender: TObject;
  var NewText: WideString; var Accept: Boolean);
var Cmd: String;
begin
  try
    Cmd := StringReplace(NewText, '²', '^2', [rfReplaceAll]);
    Cmd := StringReplace(Cmd, '³', '^3', [rfReplaceAll]);
    NewText := '= ' + StringReplace(FloatToStr(VBSObj.Eval(Cmd)), ',', '.', []);
  except
    NewText := 'Error!';
  end;
end;

// Tab Toolbar

procedure TfrmMain.tbxTabsActiveTabChange(Sender: TObject;
  TabIndex: Integer);
begin
  if (TabIndex <> -1) and (TabIndex < tbxTabs.Items.Count) then
    ActiveDoc := Pointer(tbxTabs.Items[TabIndex].Tag)
  else
    ActiveDoc := nil;

  UpdateScrollTabs;
  if (jplPages.ActivePage = jspCode) then
    sciEditor.SetFocusEx(True);
end;

procedure TfrmMain.tbxTabsActiveTabChanging(Sender: TObject; TabIndex,
  NewTabIndex: Integer; var Allow: Boolean);
begin
  Allow := (BusyState = []) or (bsClosing in BusyState) or (bsChangingDoc in BusyState);
  if ((BusyState = []) or (bsClosing in BusyState)) and (not (bsChangingDoc in BusyState)) then
    ActivateDocument(Pointer(tbxTabs.Items[NewTabIndex].Tag));
end;

procedure TfrmMain.tbxTabsActiveTabReorder(Sender: TObject;
  TabIndex: Integer);
begin
  UpdateScrollTabs;
end;

procedure TfrmMain.mnuTabsClick(Sender: TObject);
begin
  tbxTabs.ActiveTabIndex := TSpTBXItem(Sender).Tag;
end;

procedure TfrmMain.mnuScrollLeftClick(Sender: TObject);
begin
  tbxTabs.ScrollLeft;
  UpdateScrollTabs;
end;

procedure TfrmMain.mnuScrollRightClick(Sender: TObject);
begin
  tbxTabs.ScrollRight;
  UpdateScrollTabs;
end;

procedure TfrmMain.mnuCloseTabClick(Sender: TObject);
begin
  mnuCloseFile.Click;
end;

// Editor Events

procedure TfrmMain.sciEditorModified(Sender: TObject; const position,
  modificationType: Integer; text: PAnsiChar; const len, linesAdded, line,
  foldLevelNow, foldLevelPrev: Integer);
var i, start: integer;
    Insert, Delete: Boolean;

    Buff: String;
    TempChr: Char;
    CanShow, SectionExists, Cancel: Boolean;
begin
  if ((modificationType and SC_MOD_CHANGESTYLE) <> 0) or ((modificationType and SC_MOD_CHANGEMARKER) <> 0) or ((modificationType and SC_MOD_CHANGEFOLD) <> 0) or ((modificationType and SC_MOD_BEFOREDELETE) <> 0) or ((modificationType and SC_MOD_BEFOREINSERT) <> 0) then exit;

  if (ActiveDoc <> nil) and (BusyState = []) then begin
    // I thought this was fixed but Roach reported two cases that busted my "fix"
    try
      Copy(text, 1, len);
    except
      exit;
    end;
    // menu items
    mnuRedo.Enabled := sciEditor.CanRedo;
    tbiRedo.Enabled := mnuRedo.Enabled;
    mnuUndo.Enabled := sciEditor.CanUndo;
    tbiUndo.Enabled := mnuUndo.Enabled;
    // type of modification
    Insert := ((modificationType and SC_MOD_INSERTTEXT) <> 0);
    Delete := ((modificationType and SC_MOD_DELETETEXT) <> 0);
    if (Insert) then begin
      start := sciEditor.LineFromPosition(position);
      for i := start to start + linesAdded do
        sciEditor.MarkerAdd(i, MODIFIED_MARKER);
    end
    else if (Delete) then begin
      start := sciEditor.LineFromPosition(position);
      sciEditor.MarkerAdd(start, MODIFIED_MARKER);
    end
    else
      start := 0;
    // I don't trust scintilla's savepoint functions, would probably work though
    with ActiveDoc do
      Modified := (Filename = '') or (SavedText <> sciEditor.Lines.Text);
    { Code Inspector }
    if (jviInspector.LockCount = 0) then begin
      if (CI_RecreationNeeded) or (Pos('(', Copy(text, 1, len)) + Pos(')', Copy(text, 1, len)) <> 0) then begin
        RecreateInspector(sciEditor.SelStart);
        CI_RecreationNeeded := False;
      end
      else if (CountChars(Copy(text, 1, len), #9) + CountChars(Copy(text, 1, len), #32) <> 0) then
        RecreateInspector(sciEditor.SelStart)
      else if ((modificationType and SC_MOD_INSERTTEXT) <> 0) then begin
        SectionExists := False;
        // String Elements
        for i := 0 to StringElems.Count -1 do begin
          start := TStringElem(StringElems[i]).StartPos;
          if (position >= start) and (position <= start + TStringElem(StringElems[i]).Len) then begin
            TStringElem(StringElems[i]).Len := TStringElem(StringElems[i]).Len + len;
            SectionExists := True;
          end
          else if (position < start) then
            TStringElem(StringElems[i]).StartPos := start + len;
        end;
        // RO Elements
        for i := 0 to ROElems.Count -1 do begin
          start := TROElem(ROElems[i]).StartPos;
          if (position + len >= start) and (position + len < start + TROElem(ROElems[i]).Len) then begin
            if (not TROElem(ROElems[i]).SectionModified(position, len, text)) then begin
              SectionExists := False;
              break;
            end
            else
              SectionExists := True;
          end
          else if (position < start) then
            TROElem(ROElems[i]).StartPos := TROElem(ROElems[i]).StartPos + len;
        end;
        // Additional Check
        if (SectionExists) then
          jviInspector.RefreshValues
        else
          RecreateInspector(sciEditor.SelStart);
      end
      else if ((modificationType and SC_MOD_DELETETEXT) <> 0) then begin
        SectionExists := False;
        Cancel := False;
        // String Elements
        for i := 0 to StringElems.Count -1 do begin
          start := TStringElem(StringElems[i]).StartPos;
          // Section has been modified
          if (position + len >= start) then begin
            // Section has been erased
            if (position < start) and (position + len >= start + TStringElem(StringElems[i]).Len) then begin
              Cancel := True;
              SectionExists := False;
              break;
            end
            // First part of section has been erased
            else if (position < start) then begin
              TStringElem(StringElems[i]).StartPos := position;
              TStringElem(StringElems[i]).Len := TStringElem(StringElems[i]).Len - (position + len) - start;
              if (TStringElem(StringElems[i]).Len <= 0) then begin
                SectionExists := False;
                Cancel := True;
                break;
              end
              else
                SectionExists := True;
            end
            // Something inside the section has been deleted
            else begin
              TStringElem(StringElems[i]).Len := TStringElem(StringElems[i]).Len - len;
              if (TStringElem(StringElems[i]).Len < 0) then begin
                SectionExists := False;
                Cancel := True;
                break;
              end
              else
                SectionExists := True;
            end;
          end
          // update items here immediately
          else if (position < start) then
            TStringElem(StringElems[i]).StartPos := start - len;
        end;
        // RO Elements
        if (not Cancel) then begin
          for i := 0 to ROElems.Count -1 do begin
            if (position < TROElem(ROElems[i]).StartPos) and (TROElem(ROElems[i]).Len <= len) then begin
              if (not TROElem(ROElems[i]).SectionModified(position, len, text)) then
                SectionExists := False
              else begin
                TROElem(ROElems[i]).StartPos := start + TROElem(ROElems[i]).Len;
                SectionExists := True;
              end;
              break;
            end;
          end;
        end;
        // Additional Check
        if (SectionExists) then
          jviInspector.RefreshValues
        else
          RecreateInspector(sciEditor.SelStart);
      end;
    end;
    { Auto-Complete }
    if ((modificationType and SC_PERFORMED_USER) <> 0) and (Configuration.AC_Enable) and (not AC_CompletitionDone) and (not AC_IgnoreChar) and (Configuration.AC_AutoShow) and ((modificationType and SC_MOD_DELETETEXT) = 0) and (Pos(#32, Copy(text, 1, len)) = 0) and (ShowPossible) then begin
      // get keyword
      Buff := '';
      for i := sciEditor.SelStart downto 1 do begin
        TempChr := sciEditor.Lines.Text[i];
        if (Pos(TempChr, sciEditor.WordChars) = 0) then
          break;
        Buff := TempChr + Buff;
      end;
      Buff := Buff + Copy(text, 1, len);
      // update list (known autocomplete expressions)
      CanShow := ((not ShowAC) and (Buff <> '')) or ((ShowAC) and ((lvAutoComplete.Items.Count > 0) or (Length(Buff) < Length(OldKW))));
      if (CanShow) then begin
        if (ShowAC) then
          UpdateList(Buff, True)
        else if (ActiveDoc.ParsingRes <> nil) and (Buff <> '') then begin
          if (not ShowAC) then begin
            ACStartPos := position - Length(Buff) +1;
            ACStartLine := sciEditor.GetCurrentLineNumber;
          end;
          RebuildList(Buff, True);
          ShowAC := (ShowAC) and (Buff <> lvAutoComplete.Items[0].Caption);
        end;
      end;
      OldKW := Buff;
    end
    else if (ShowAC) then begin
      // get keyword
      Buff := '';
      for i := sciEditor.SelStart downto 1 do begin
        TempChr := sciEditor.Lines.Text[i];
        if (Pos(TempChr, sciEditor.WordChars) = 0) then
          break;
        Buff := TempChr + Buff;
      end;
      Buff := Buff + Copy(text, 1, len);
      // update list (known autocomplete expressions)
      UpdateList(Buff, True);
      OldKW := Buff;
    end;
    { ClamSense Update }
    ActiveDoc.CodeParser.NeedUpdate := True;
  end;
end;

procedure TfrmMain.sciEditorUpdateUI(Sender: TObject);
begin
  { Adjust Auto-Complete }
  if (ShowAC) then begin
    if (sciEditor.SelStart <= ACStartPos) or (sciEditor.GetCurrentLineNumber <> ACStartLine) then begin
      ShowAC := False;
      pnlAutoComplete.Hide;
      pnlACTB.Hide;
    end
    else begin
      AdjustAC;
      if (ShowAC) and (not pnlAutoComplete.Visible) then begin
        lvAutoComplete.ItemFocused := lvAutoComplete.Items[0];
        pnlAutoComplete.Visible := True;
      end;
    end;
  end
  else if (pnlAutoComplete.Visible) then
    pnlAutoComplete.Hide;
  { Adjust Call Tip }
  if (sciEditor.Focused) and ((not ShowCT) and (Configuration.CT_AutoShowCalltip)) or (CT_UpdateReq) then begin
    ShowCT := DetectCallTip(False);
    CT_UpdateReq := False;
  end;
  
  if (ShowCT) then begin
    if (sciEditor.SelStart < CT_StartPos) or (sciEditor.GetCurrentLineNumber <> CT_StartLine) then begin
      ShowCT := False;
      pnlCallTip.Hide;
    end
    else begin
      AdjustCT;
      if (ShowCT) and (not pnlCallTip.Visible) then
        pnlCallTip.Visible := True;
    end;
  end
  else if (pnlCallTip.Visible) then
    pnlCallTip.Hide;
  { Code Inspector }
  if (mnuShowCodeInspector.Checked) and (OldCaretPos.Y <> sciEditor.GetCurrentLineNumber) then
    RecreateInspector(sciEditor.SelStart);
  { Rest }
  UpdateCaretPos;
  if (not CanReset) then
    CanReset := True
  else begin
    sciEditor.MarkerDeleteAll(ERROR_MARKER);
    sciEditor.Caret.LineVisible := ShowCaret;
  end;
  { Update OldCaretPos }
  OldCaretPos.X := sciEditor.GetCaretInLine;
  OldCaretPos.Y := sciEditor.GetCurrentLineNumber;
end;


procedure TfrmMain.sciEditorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i, idx, len: integer;
    Buff, Buff2, Buff3: String;
    TempChr, TempChr2: Char;
    Canceled: Boolean;
begin
  ShowPossible := (not IsInString) and (not IsInComment(False));
  if (AC_IgnoreChar) then exit;
  { Replace Tab }
  if (not ShowAC) and (Key = 9) and (Configuration.Indent_IndentString <> #9) then begin
    Key := 0;
    AC_IgnoreChar := True;
    sciEditor.SelText := Configuration.Indent_IndentString;
  end
  { Some stuff for Auto-Completition }
  else if (ShowAC) then begin
    // return
    if (Key = VK_RETURN) and (lvAutoComplete.ItemFocused <> nil) then begin
      // we don't want any interrupts here
      AC_CompletitionDone := True;
      // complete expression
      lvAutoComplete.OnDblClick(Sender);
      Key := 0;
    end
    // up
    else if (Key = VK_UP) then begin
      lvAutoComplete.Perform(WM_KEYDOWN, VK_UP, 0);
      lvAutoComplete.Perform(WM_KEYUP, VK_UP, 0);
      Key := 0;
    end
    // down
    else if (Key = VK_DOWN) then begin
      lvAutoComplete.Perform(WM_KEYDOWN, VK_DOWN, 0);
      lvAutoComplete.Perform(WM_KEYUP, VK_DOWN, 0);
      Key := 0;
    end
    // escape
    else if (Key = VK_ESCAPE) then begin
      // hide auto-complete
      ShowAC := False;
      pnlAutoComplete.Hide;
      pnlACTB.Hide;
      // hide call-tip
      ShowCT := False;
      pnlCallTip.Hide;
    end
    // tab
    else if (Key = VK_TAB) and (Configuration.AC_TabCompletes) then begin
      if (lvAutoComplete.Items.Count = 1) then begin
        AC_CompletitionDone := True;
        lvAutoComplete.OnDblClick(Sender);
        Key := 0;
      end
      else if (lvAutoComplete.Items.Count <> 0) then begin
        // get expression at selpos
        Buff := '';
        for i := sciEditor.SelStart downto 1 do begin
          TempChr := sciEditor.Lines.Text[i];
          if (Pos(TempChr, sciEditor.WordChars) = 0) then
            break;
          Buff := TempChr + Buff;
        end;
        // get a good string to start with
        Buff2 := ' '; // would be surprised if this is somewhere in the list
        for i := 0 to lvAutoComplete.Items.Count -1 do begin
          if (IsAtStart(Buff, lvAutoComplete.Items[i].Caption, False)) then begin
            Buff2 := lvAutoComplete.Items[i].Caption;
            break;
          end;
        end;
        len := Length(Buff2);
        // search for similar strings
        Canceled := False;
        idx := 1;
        repeat
          TempChr := Buff2[idx];
          if (TempChr >= 'A') and (TempChr <= 'Z') then Inc(TempChr, 32);

          for i := 0 to lvAutoComplete.Items.Count -1 do begin
            Buff3 := lvAutoComplete.Items[i].Caption;
            TempChr2 := Buff3[idx];
            if (TempChr2 >= 'A') and (TempChr2 <= 'Z') then Inc(TempChr2, 32);
            if (Length(Buff3) < idx) or (TempChr2 <> TempChr) then begin
              Canceled := True;
              break;
            end;
          end;

          Inc(idx, 1);
        until (Canceled) or (idx > len);
        Dec(idx, 2);
        // complete if possible
        if (LowerCase(Copy(Buff2, 1, Length(Buff))) <> LowerCase(Buff)) then begin
          sciEditor.SelStart := sciEditor.SelStart - Length(Buff);
          sciEditor.SelLength := Length(Buff);
          sciEditor.SelText := Buff2;
        end
        else begin
          Buff2 := Copy(Buff2, 1, idx);
          if (Buff2 = '') then begin
            if (lvAutoComplete.Items.Count > 1) then
              UpdateList(Buff2)
            else if (idx = Length(Buff)) then
              lvAutoComplete.OnDblClick(Sender)
            else
              Beep;
          end
          else begin
            OldKW := Buff2;
            sciEditor.SelStart := sciEditor.SelStart - Length(Buff);
            sciEditor.SelLength := Length(Buff);
            sciEditor.SelText := Buff2;
          end;
        end;
        Key := 0;
        AC_IgnoreChar := True;
      end;
      // escape + space
      if (Key = VK_ESCAPE) or (Key = VK_SPACE) then begin
        ShowAC := False;
        pnlAutoComplete.Hide;
        pnlACTB.Hide;
      end;
      AC_IgnoreChar := (AC_IgnoreChar) or (Key = VK_SPACE);
    end;
  end
  // this one's for bail
  else if (Key = VK_TAB) and (Configuration.AC_TabCompletes) and (not Configuration.AC_AutoShow) and (ShowPossible) then begin
    // rebuild list
    Buff := '';
    for i := sciEditor.SelStart downto 1 do begin
      TempChr := sciEditor.Lines.Text[i];
      if (Pos(TempChr, sciEditor.WordChars) = 0) then
        break;
      Buff := TempChr + Buff;
    end;
    // skip this if we don't have a buffer here
    if (not (ssCtrl in Shift)) and (Buff = '') then
      exit;
    // ignore key
    Key := 0;
    AC_IgnoreChar := True;
    // set kw stuff
    ACStartPos := sciEditor.SelStart - Length(Buff);
    ACStartLine := sciEditor.GetCurrentLineNumber;
    OldKW := Buff;
    RebuildList(Buff, False);
    // beep if we have no item at all
    if (lvAutoComplete.Items.Count = 0) then begin
      Beep;
      ShowAC := False;
    end
    // if we only have one item, set it and keep list hidden
    else if (lvAutoComplete.Items.Count = 1) then begin
      Buff2 := lvAutoComplete.Items[0].Caption;
      if (Buff = Buff2) then
        Beep
      else begin
        sciEditor.SelStart := sciEditor.SelStart - Length(Buff);
        sciEditor.SelLength := Length(Buff);
        sciEditor.SelText := Buff2;
      end;
      ShowAC := False;
    end
    else begin
      // get a good string to start with
      Buff2 := ' '; // would be surprised if this is somewhere in the list
      for i := 0 to lvAutoComplete.Items.Count -1 do begin
        if (IsAtStart(Buff, lvAutoComplete.Items[i].Caption, False)) then begin
          Buff2 := lvAutoComplete.Items[i].Caption;
          break;
        end;
      end;
      len := Length(Buff2);
      // search for similar strings
      Canceled := False;
      idx := 1;
      repeat
        TempChr := Buff2[idx];
        if (TempChr >= 'A') and (TempChr <= 'Z') then Inc(TempChr, 32);

        for i := 0 to lvAutoComplete.Items.Count -1 do begin
          Buff3 := lvAutoComplete.Items[i].Caption;
          TempChr2 := Buff3[idx];
          if (TempChr2 >= 'A') and (TempChr2 <= 'Z') then Inc(TempChr2, 32);
          if (Length(Buff3) < idx) or (TempChr2 <> TempChr) then begin
            Canceled := True;
            break;
          end;
        end;
        Inc(idx, 1);
      until (Canceled) or (idx > len);
      Dec(idx, 2);
      // complete if possible
      if (LowerCase(Copy(Buff2, 1, Length(Buff))) <> LowerCase(Buff)) then begin
        sciEditor.SelStart := sciEditor.SelStart - Length(Buff);
        sciEditor.SelLength := Length(Buff);
        sciEditor.SelText := Buff2;
        OldKW := Buff2;
      end
      else begin
        Buff2 := Copy(Buff2, 1, idx);
        if (Buff2 <> '') then begin
          OldKW := Buff2;
          sciEditor.SelStart := sciEditor.SelStart - Length(Buff);
          sciEditor.SelLength := Length(Buff);
          sciEditor.SelText := Buff2;
        end;
      end;

      ShowAC := True;
      AdjustAC;
      if (not pnlAutoComplete.Visible) then begin
        pnlAutoComplete.Visible := True;
        Application.ProcessMessages;
        lvAutoComplete.ItemFocused := lvAutoComplete.Items[0];
      end;
    end;
  end
  else if (ShowCT) then begin
    if (Key = VK_ESCAPE) then begin
      pnlCallTip.Hide;
      ShowCT := False;
    end
    else if (Key = VK_BACK) then
      CT_UpdateReq := True;
  end;

  if (not ShowCT) and (Configuration.CT_Enable) and (Key = VK_F1) and (DetectCallTip(False)) then begin
    ShowCT := True;
    AdjustCT;
    pnlCallTip.Visible := True;
  end;
end;

procedure TfrmMain.sciEditorKeyPress(Sender: TObject; var Key: Char);
var LastLine, Keyword, Buff: String;
    i, k: integer;
    InBrace: Boolean;
    Func: TFunction;
begin
  if (AC_CompletitionDone) or (AC_IgnoreChar) then begin
    Key := #0;
    exit;
  end;
  // Check key and configuration
  if (ShowPossible) and (not IsInComment(True)) then begin
    { Indentation }
    if (Configuration.Indent_AutoIndent) and (not ShowAC) then begin
      { Check Highlighter }
      if (ActiveDoc.HighlighterType = htNone) then
        exit;
      { Main part of indentation, called on return }
      if (Key = #13) then begin
        { Auto-Scroll }
        if (Configuration.CS_AutoScrollBack) then
          sciEditor.Perform(WM_HSCROLL, SB_LEFT, 0);
        { Variables }
        if (sciEditor.GetCurrentLineNumber <> 0) then
          LastLine := sciEditor.Lines[sciEditor.GetCurrentLineNumber-1]
        else
          LastLine := '';
        { Indentation }
        Buff := RemoveWhitespaces(RemoveFrom(LastLine, GetEscapeChr(ActiveDoc.HighlighterType), True, True, False, False));
        if (Buff = '}') then
          asm nop; end
        else if (Length(Buff) <> 0) {and (Length(LastLine) - Length(TrimLeft(LastLine)) <> 0)} and (Configuration.Indent_IndentOpenBrace) and (Buff[Length(Buff)] = '{') then
          sciEditor.SelText := Configuration.Indent_IndentString
        { Unindentation }
        else if (Trim(Buff) = '') then begin
          if (Configuration.Indent_UnindentPrevLine) then begin
            for i := 1 to Length(Configuration.Indent_IndentString) do begin
              SendMessage(sciEditor.Handle, WM_KEYDOWN, VK_BACK, 0);
              SendMessage(sciEditor.Handle, WM_KEYUP, VK_BACK, 0);
            end;

            if (Configuration.Indent_PrevLineInsertBrace) then
              sciEditor.SelText := '}';
          end;

          if (sciEditor.AutoCloseBraces) and (Trim(Buff) = '') and (Trim(RemoveFrom(sciEditor.Lines[sciEditor.GetCurrentLineNumber], GetEscapeChr(ActiveDoc.HighlighterType), True, True, True, True)) = '}') then begin
            for i := 1 to Length(Configuration.Indent_IndentString) do begin
              SendMessage(sciEditor.Handle, WM_KEYDOWN, VK_BACK, 0);
              SendMessage(sciEditor.Handle, WM_KEYUP, VK_BACK, 0);
            end;
            sciEditor.SelStart := sciEditor.SelStart - sciEditor.GetCaretInLine -2;
          end;
        end
        { OLS indentation }
        else if (sciEditor.SelStart > 0) and (Configuration.Indent_HandleOLS) then begin
          i := sciEditor.SelStart -1;
          // OLS = OneLineStatement, for example if-clauses without braces
          // that's also the reason why this is so complicated --v
          repeat
            if (not IsInString(i)) and (not IsInComment(False, i)) then begin
              Keyword := GetKeywordAt(sciEditor.Lines.Text, i, False, #0);
              if (Length(Keyword) = 0) then
                Dec(i, 1)
              else if (PossibleOLSKeyword(Keyword)) then begin
                if (GetOLSEnd(sciEditor.Lines.Text, i, sciEditor.SelStart, GetEscapeChr(ActiveDoc.HighlighterType), False) <> -1) then begin
                  i := i - Length(Keyword) +1;
                  Buff := RemoveFrom(Copy(sciEditor.Lines.Text, i, sciEditor.SelStart - i), GetEscapeChr(ActiveDoc.HighlighterType), True, True, True, True);
                  Buff := Trim(RemoveConditionBreaks(Buff));
                  if (CountChars(Buff, '{') = CountChars(Buff, '}')) and (FastOLSCheck(GetFirstLine(Buff))) then begin
                    if (CountLines(Buff) = 1) then begin // indent OLS
                      sciEditor.SelText := Configuration.Indent_IndentString;
                      IndentedOLSLine := sciEditor.GetCurrentLineNumber;
                    end
                    else begin
                      if (Pos(#10, Buff) <> 0) then
                        Buff := TrimLeft(Copy(Buff, Pos(#13, Buff)+1, Length(Buff)));
                      // unindent OLS
                      if (CountLines(Buff) = 1) and (CountChars(Buff, '(') = CountChars(Buff, ')')) then begin
                        for i := 1 to Length(Configuration.Indent_IndentString) do begin
                          SendMessage(sciEditor.Handle, WM_KEYDOWN, 8, 0);
                          SendMessage(sciEditor.Handle, WM_KEYUP, 8, 0);
                        end;
                      end;
                    end;
                  end;
                  // we've had our great OLS keyword, stop here
                  break;
                end
                else if (sciEditor.GetStyleAt(i) = 5) then
                  break
                else
                  Dec(i, 1);
              end
              else
                Dec(i, Length(Keyword)+1);
            end
            else
              Dec(i, 1);
          until (i <= 0);
        end;
      end
      { Unindentation for non-returns }
      else if ((Key = '}') and (Configuration.Indent_UnindentClosingBrace)) or ((Configuration.Indent_HandleOLS) and (Key = '{') and (IndentedOLSLine = sciEditor.GetCurrentLineNumber)) then begin
        Buff := sciEditor.Lines[sciEditor.GetCurrentLineNumber];
        if (Trim(Buff) = '') then begin
          i := Length(Buff) - Length(TrimLeft(Buff));
          k := Length(Buff) - Length(Configuration.Indent_IndentString) +1;
          if (i <> 0) then begin
            // modify line
            if (i >= Length(Configuration.Indent_IndentString)) then begin
              if (Copy(Buff, k, Length(Configuration.Indent_IndentString)) = Configuration.Indent_IndentString) then
                Delete(Buff, k, Length(Configuration.Indent_IndentString))
              else
                Delete(Buff, k, 1);
            end
            else
              Delete(Buff, k, 1);
            // update it
            k := sciEditor.SelStart;
            sciEditor.Lines[sciEditor.GetCurrentLineNumber] := Buff;
            sciEditor.SelStart := k - Length(Configuration.Indent_IndentString);
          end;
        end;
      end
    end;
    if (Configuration.CT_Enable) and (ShowPossible) then begin
      // Show Call-Tip on '('
      if (Key = '(') {and (sciEditor.GetStyleAt(sciEditor.SelStart-1) = 16)} then begin
        // get keyword
        Buff := '';
        for i := sciEditor.SelStart downto 1 do begin
          if (Pos(sciEditor.Lines.Text[i], sciEditor.WordChars) = 0) then
            break;
          Buff := sciEditor.Lines.Text[i] + Buff;
        end;
        // check if last autocomplete item belongs to this one
        if (AC_LastElem <> -1) and (AC_LastElem < ActiveDoc.ClamList.Count) and (ActiveDoc.ClamList.ItemType[AC_LastElem] = ctFunction) and (TFunction(ActiveDoc.ClamList.Items[AC_LastElem]).Name = Buff) then
          Func := TFunction(ActiveDoc.ClamList.Items[AC_LastElem])
        // or go through clamlist
        else begin
          Func := nil;
          for i := 0 to ActiveDoc.ClamList.Count -1 do begin
            if (ActiveDoc.ClamList.ItemType[i] = ctFunction) and (Buff = TFunction(ActiveDoc.ClamList.Items[i]).Name) then begin
              Func := TFunction(ActiveDoc.ClamList.Items[i]);
              break;
            end;
          end;
        end;
        // check if Func is valid and set up calltip
        if (Func <> nil) then begin
          with Func do begin
            // set up calltip
            CT_ActiveParam := 0;
            CT_SelectedParam := -1;
            CT_Function := Buff;
            CT_Comment := Comment;
            CT_FileName := TCodeResult(Func.Collection.Owner).FileName;
            CT_FuncLine := Line;
            { convert commas in tagged parameters }
            Buff := Parameters;
            InBrace := False;
            for k := 1 to Length(Buff) do begin
              if (InBrace) then begin
                if (Buff[k] = ',') then
                  Buff[k] := #1
                else if (Buff[k] = '}') then
                  InBrace := False;
              end
              else
                InBrace := (Buff[k] = '{');
            end;
            { set up list }
            CT_ParamList.Text := StringReplace(StringReplace(Between(Buff, '(', ')'), ',', #13, [rfReplaceAll]), #1, ',', [rfReplaceAll]);
            for k := CT_ParamList.Count -1 downto 0 do begin
              CT_ParamList[k] := Trim(CT_ParamList[k]);
              if (CT_ParamList[k] = '') then
                CT_ParamList.Delete(k);
            end;
            CT_StartPos := sciEditor.SelStart +1;
            CT_StartLine := sciEditor.GetCurrentLineNumber;
            ShowCT := True;
          end;
        end;
      end
      else if (ShowCT) then begin
        if (Key = ')') then
          ShowCT := DetectCallTip(True)
        else if (Key = ',') and (CT_ParamList.Count <> 0) then begin
          if (CT_ActiveParam >= CT_ParamList.Count) then begin
            if (Pos('...', CT_ParamList[CT_ParamList.Count -1]) = 0) then begin
              Inc(CT_ActiveParam, 1);
              pnlCallTip.Repaint;
            end;
          end
          else begin
            Inc(CT_ActiveParam, 1);
            pnlCallTip.Repaint;
          end;
        end;
      end;
    end;
  end
  // Continue Doc Comment if enabled
  else if (Configuration.CS_IntelligentCommentBehavior) and (IsInComment(True, sciEditor.SelStart)) then begin
    if (Key = #13) then begin
      LastLine := Trim(RemoveFrom(sciEditor.Lines[sciEditor.GetCurrentLineNumber-1], GetEscapeChr(ActiveDoc.HighlighterType), False, True, True, True));
      if (Pos('/**', LastLine) = 1) then
        sciEditor.SelText := ' * '
      else
        sciEditor.SelText := '* '
    end
    else if (Key = '/') then begin
      while (Trim(sciEditor.Lines.Text[sciEditor.SelStart]) = '') do begin
        sciEditor.Perform(WM_KEYDOWN, VK_BACK, 0);
        sciEditor.Perform(WM_KEYUP, VK_BACK, 0);
      end;
    end;
  end;
end;

procedure TfrmMain.sciEditorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (AC_CompletitionDone) or (AC_IgnoreChar) then begin
    AC_CompletitionDone := False;
    AC_IgnoreChar := False;
    Key := 0;
  end;
end;

procedure TfrmMain.sciEditorMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  AdjustAC;
  if (pnlACTB.Visible) and ((X < pnlACTB.Left) or (X > pnlACTB.Left + pnlACTB.Width) or (Y < pnlACTB.Top -4) or (Y > pnlACTB.Top + pnlACTB.Height)) then
    pnlACTB.Hide;
end;

procedure TfrmMain.sciEditorMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  // Auto-Complete
  ShowAC := False;
  pnlAutoComplete.Hide;
  pnlACTB.Hide;
  // Call-Tip
  if (Configuration.CT_Enable) and (Configuration.CT_AutoShowCalltip) then begin
    ShowCT := DetectCallTip(False);
    if (not ShowCT) then
      pnlCallTip.Hide;
  end;
  // Save mouse pos
  sciEditorPos := Point(X, Y);
end;

procedure TfrmMain.sciEditorZoom(Sender: TObject);
begin
  UpdateBarImages(sciEditor.TextHeight(0));
  if (ShowAC) then AdjustAC;
  if (ShowCT) then AdjustCT;
end;

// Start Page

procedure TfrmMain.cmdCreateNewFileClick(Sender: TObject);
begin
  mnuMore.Click;
end;

procedure TfrmMain.cmdLoadFileClick(Sender: TObject);
begin
  mnuOpenFile.Click;
end;

procedure TfrmMain.cmdAddProfileClick(Sender: TObject);
begin
  frmSettings.cmdNewProfile.Click;
end;

procedure TfrmMain.cmdDeleteProfileClick(Sender: TObject);
begin
  frmSettings.cmdDeleteProfile.Click;
end;

procedure TfrmMain.cboProfilesClick(Sender: TObject);
begin
  frmSettings.cboProfiles.ItemIndex := cboProfiles.ItemIndex;
  frmSettings.cboProfiles.OnClick(Sender);
end;

// Docks

procedure TfrmMain.pnlToolbarClose(Sender: TObject);
begin
  mnuShowToolbar.Checked := False;
end;

procedure TfrmMain.pnlToolbarRecreated(Sender: TObject);
begin
  mnuShowToolbar.Checked := True;
end;

procedure TfrmMain.pnlCodeExplorerClose(Sender: TObject);
begin
  mnuShowCodeExplorer.Checked := False;
end;

procedure TfrmMain.pnlCodeExplorerRecreated(Sender: TObject);
begin
  mnuShowCodeExplorer.Checked := True;
end;

// Public Functions

procedure TfrmMain.UpdateScrollTabs;
var ssLeft, ssRight: Boolean;
    IItem: TSpTBXItem;
    i: integer;
begin
  // enable/disable buttons
  tbxTabs.ScrollState(ssLeft, ssRight);
  mnuScrollLeft.Enabled := ssLeft;
  mnuScrollRight.Enabled := ssRight;
  mnuCloseTab.Enabled := (tbxTabs.Items.Count > 6) or ((tbxTabs.Items.Count = 6) and (ActiveDoc <> nil));
  mnuCloseFile.Enabled := mnuCloseTab.Enabled;
  mnuCloseAllFiles.Enabled := mnuCloseTab.Enabled;
  // update tab list and check if start page exists
  mnuShowStartPage.Checked := False;
  mnuTabs.Clear;
  for i := 0 to tbxTabs.Items.Count -6 do begin
    IItem := TSpTBXItem.Create(mnuTabs);
    IItem.Caption := tbxTabs.Items[i].Caption;
    IItem.Tag := i;
    IItem.OnClick := mnuTabsClick;
    IItem.RadioItem := True;
    IItem.Checked := (tbxTabs.ActiveTabIndex = i);
    if (tbxTabs.Items[i].Images = ilMain) then begin // whoa, start page!
      IItem.Images := ilMain;
      IItem.ImageIndex := tbxTabs.Items[i].ImageIndex;
      if (i <> 0) then
        mnuTabs.Add(TSpTBXSeparatorItem.Create(mnuTabs));
      mnuTabs.Add(IItem);
      mnuTabs.Add(TSpTBXSeparatorItem.Create(mnuTabs));
    end
    else begin // some other tab
      IItem.Images := ilTabs;
      IItem.ImageIndex := tbxTabs.Items[i].ImageIndex;
      mnuTabs.Add(IItem);
    end;

    if (tbxTabs.Items[i].Tag = 0) then
      mnuShowStartPage.Checked := True;
  end;
end;


// Misc

procedure TfrmMain.sciSearchReplaceTextNotFound(Sender: TObject);
begin
  if (not SearchRestarted) and (frmSearchFor.chkSearchFromCaret.Checked) and (sciEditor.SelStart > 1) then begin
    if (Application.MessageBox('Text not found. Restart from top?', 'Pawn Studio', MB_ICONQUESTION + MB_YESNO) = mrYes) then begin
      frmSearchFor.chkSearchFromCaret.Checked := False;
      DoSearchNormal(False, frmSearchFor.chkMatchWholeWord.Checked, frmSearchFor.chkCaseSensitive.Checked, frmSearchFor.chkRegEx.Checked, frmSearchFor.optDown.Checked, frmSearchFor.cboExpression.Text);
      frmSearchFor.chkSearchFromCaret.Checked := True;
      SearchRestarted := True;
    end;
  end
  else
    MessageBox(Handle, PChar('Sorry, cannot find the string "' + OldSearchTerm + '".'), 'Information', MB_ICONINFORMATION);
end;

// Form Events

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var i, k: integer;
    HT: String;
    Doc: TDocument;
    StrStream: TStringStream;
begin
  // don't quit if we haven't finished our action yet
  if (BusyState <> []) then begin
    Action := caNone;
    exit;
  end;
  // prepare close dialog entries
  Screen.Cursor := crHourGlass;
  Configuration.LastUsedFiles.Clear;
  frmCloseDialog.lvFiles.Clear;
  for i := 0 to tbxTabs.Items.Count -6 do begin
    if (tbxTabs.Items[i].Tag <> 0) and ((TDocument(Pointer(tbxTabs.Items[i].Tag)).Modified) or (TDocument(Pointer(tbxTabs.Items[i].Tag)).Filename = '')) then begin
      with frmCloseDialog.lvFiles.Items.Add do begin
        ImageIndex := tbxTabs.Items[i].ImageIndex;
        Caption := tbxTabs.Items[i].Caption;
        HT := TDocument(Pointer(tbxTabs.Items[i].Tag)).Highlighter;
        if (HT = 'AMXModX') then
          SubItems.Add('AMX Mod X File')
        else if (HT = 'EMailMessage') then
          SubItems.Add('E-Mail Message')
        else if (HT = 'Makefile') then
          SubItems.Add('Makefile')
        else if (HT = 'MSSQL') then
          SubItems.Add('MS SQL File')
        else if (HT = 'null') then
          SubItems.Add('Textfile')
        else
          SubItems.Add(HT + ' File');
        Data := Pointer(tbxTabs.Items[i].Tag);
      end;
    end
    else if (tbxTabs.Items[i].Tag <> 0) then begin
      k := Configuration.RecentFiles.IndexOf(TDocument(Pointer(tbxTabs.Items[i].Tag)).FileName);
      if (k <> -1) then
        Configuration.RecentFiles.Delete(k)
      else if (Configuration.RecentFiles.Count > 15) then // limited to 15 items
        Configuration.RecentFiles.Delete(15);
      Configuration.RecentFiles.Insert(0, TDocument(Pointer(tbxTabs.Items[i].Tag)).FileName);
      Configuration.LastUsedFiles.Add(TDocument(Pointer(tbxTabs.Items[i].Tag)).FileName);
    end;
  end;
  // show close dialog
  Screen.Cursor := crDefault;
  if (frmCloseDialog.lvFiles.Items.Count <> 0) then begin
    case frmCloseDialog.ShowModal of
      mrYes: begin
        for i := 0 to frmCloseDialog.lvFiles.Items.Count -1 do begin
          if (frmCloseDialog.lvFiles.Items[i].Checked) then begin
            with TDocument(frmCloseDialog.lvFiles.Items[i].Data) do begin
              if (FileName = '') then begin
                if (not DoSaveAs(frmCloseDialog.lvFiles.Items[i].Data)) then begin
                  Action := caNone;
                  exit;
                end;
              end
              else begin
                if (not DoSave(frmCloseDialog.lvFiles.Items[i].Data)) then begin
                  Action := caNone;
                  exit;
                end;
              end;
            end;

            if (TDocument(frmCloseDialog.lvFiles.Items[i].Data).FileName <> '') then begin
              k := Configuration.RecentFiles.IndexOf(TDocument(frmCloseDialog.lvFiles.Items[i].Data).FileName);
              if (k <> -1) then
                Configuration.RecentFiles.Delete(k)
              else if (Configuration.RecentFiles.Count > 15) then begin
                Configuration.RecentFiles.Delete(15);
                frmMain.lvRecentFiles.Items.Delete(15);
              end;
              Configuration.RecentFiles.Insert(0, TDocument(frmCloseDialog.lvFiles.Items[i].Data).FileName);
              Configuration.LastUsedFiles.Add(TDocument(frmCloseDialog.lvFiles.Items[i].Data).FileName);
            end;
          end;
        end;
      end;
      mrCancel: begin
        Action := caNone;
        exit;
      end;
    end;
  end;
  // save config
  StrStream := TStringStream.Create('');
  sciPropLoader.SaveToStream(StrStream);
  Configuration.EditorSettings := StrStream.DataString;
  StrStream.Free;
  Configuration.LastTheme := TBXCurrentTheme;
  SaveConfig(ApplicationPath + 'configs\Configuration.prof');
  // destroy all documents
  for i := 0 to tbxTabs.Items.Count -6 do begin
    Doc := TDocument(Pointer(tbxTabs.Items[i].Tag));
    if (Doc <> nil) then
      Doc.Free;
  end;
end;

// Toolbar

procedure TfrmMain.tbxToolbarActiveTabChange(Sender: TObject;
  TabIndex: Integer);
begin
  pnlToolbar.Height := ToolbarHeight[TabIndex];
end;

// -> Output List

procedure TfrmMain.lstOutputDblClick(Sender: TObject);
var i, k: integer;
    CompRes: TCompilationResult;
begin
  if (ActiveDoc = nil) or (lstOutput.ItemIndex = -1) then exit;

  CompRes := ActiveDoc.LastCompilationRes;
  if (Assigned(CompRes)) then begin
    sciEditor.MarkerDeleteAll(ERROR_MARKER);
    CanReset := False;

    with CompRes do begin
      // Fatal Errors
      for i := 0 to FatalErrors.Count -1 do begin
        if (FatalErrors.OutputIdx[i] = lstOutput.ItemIndex) then begin
          ShowCaret := ShowCaret or sciEditor.Caret.LineVisible;
          sciEditor.Caret.LineVisible := False;
          for k := FatalErrors.LineNumber[i].Start to FatalErrors.LineNumber[i].Stop do
            sciEditor.MarkerAdd(k-1, ERROR_MARKER);
          sciEditor.GotoLineEnsureVisible(FatalErrors.LineNumber[i].Start-1);
          sciEditor.SelStart := sciEditor.SelStart + System.Length(sciEditor.Lines[sciEditor.GetCurrentLineNumber]) - System.Length(TrimLeft(sciEditor.Lines[sciEditor.GetCurrentLineNumber]));
          sciEditor.SetFocus;
          exit;
        end;
      end;
      // Errors
      for i := 0 to Errors.Count -1 do begin
        if (Errors.OutputIdx[i] = lstOutput.ItemIndex) then begin
          ShowCaret := ShowCaret or sciEditor.Caret.LineVisible;
          sciEditor.Caret.LineVisible := False;
          for k := Errors.LineNumber[i].Start to Errors.LineNumber[i].Stop do
            sciEditor.MarkerAdd(k-1, ERROR_MARKER);
          sciEditor.GotoLineEnsureVisible(Errors.LineNumber[i].Start-1);
          sciEditor.SelStart := sciEditor.SelStart + System.Length(sciEditor.Lines[sciEditor.GetCurrentLineNumber]) - System.Length(TrimLeft(sciEditor.Lines[sciEditor.GetCurrentLineNumber]));
          sciEditor.SetFocus;
          exit;
        end;
      end;
      // Warnings
      for i := 0 to Warnings.Count -1 do begin
        if (Warnings.OutputIdx[i] = lstOutput.ItemIndex) then begin
          ShowCaret := ShowCaret or sciEditor.Caret.LineVisible;
          sciEditor.Caret.LineVisible := False;
          for k := Warnings.LineNumber[i].Start to Warnings.LineNumber[i].Stop do
            sciEditor.MarkerAdd(k-1, ERROR_MARKER);
          sciEditor.GotoLineEnsureVisible(Warnings.LineNumber[i].Start-1);
          sciEditor.SelStart := sciEditor.SelStart + System.Length(sciEditor.Lines[sciEditor.GetCurrentLineNumber]) - System.Length(TrimLeft(sciEditor.Lines[sciEditor.GetCurrentLineNumber]));
          sciEditor.SetFocus;
          exit;
        end;
      end;
    end;
  end;
end;

procedure TfrmMain.pnlToolbarResize(Sender: TObject);
begin
  if (lstOutput.Items.Count > 0) and (GetCurrCompiler.AlignFirstLine) then
    lstOutput.Items[0] := AdjustTabs(lstOutput.Items[0], '  ', ((GetWindowLong(lstOutput.Handle, GWL_STYLE) and WS_VSCROLL) <> 0));
end;

// -> Tasks

// -> FTP Explorer

procedure TfrmMain.IdFTPWorkBegin(Sender: TObject; AWorkMode: TWorkMode;
  const AWorkCountMax: Integer);
begin
  pbFTP.Max := AWorkCountMax;
  pbFTP.Position := 0;
  pbFTP.Show;
  cmdCancelFTP.Enabled := True;
  Application.ProcessMessages;
end;

procedure TfrmMain.IdFTPWorkEnd(Sender: TObject; AWorkMode: TWorkMode);
begin
  Application.ProcessMessages;
  pbFTP.Hide;
  cmdCancelFTP.Enabled := False;
end;

procedure TfrmMain.IdFTPWork(Sender: TObject; AWorkMode: TWorkMode;
  const AWorkCount: Integer);
begin
  pbFTP.Position := AWorkCount;
end;

procedure TfrmMain.IdFTPStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: String);
begin
  lblFTPStatus.Caption := 'Current Server: ' + IdFTP.Host + OptionalPort(IdFTP.Port, 21) + ' - ' + AStatusText;
end;

procedure TfrmMain.IdFTPDisconnected(Sender: TObject);
begin
  if (AllowFTPSwitch) then begin
    if (tbxToolbar.ActivePage = tsFTP) then
      tsOutput.Show;
    tbxFTPExplorer.Enabled := False;
  end;
  AllowFTPSwitch := True;
end;

procedure TfrmMain.IdFTPAfterClientLogin(Sender: TObject);
begin
  tbxFTPExplorer.Enabled := True;
  mnuCompileAndUpload.Enabled := True;
  mnuCompileUploadAndConnect.Enabled := True;
  cboRemote.Clear;
  with cboRemote.ItemsEx.Add do begin
    ImageIndex := 0;
    LastFTPPath := IdFTP.RetrieveCurrentDir;
    Caption := LastFTPPath;
    cboRemote.ItemIndex := Index;
  end;
  ReloadFTP(True);
end;

procedure TfrmMain.splFTP1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlLocalFiles.Align := alLeft;
  splFTP1.Align := alLeft;
  pnlQuickCommands.Align := alLeft;
  splFTP2.Align := alLeft;
  pnlRemoteFiles.Align := alClient;
end;

procedure TfrmMain.splFTP2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlRemoteFiles.Align := alRight;
  splFTP2.Align := alRight;
  pnlQuickCommands.Align := alRight;
  splFTP1.Align := alRight;
  pnlLocalFiles.Align := alClient;
end;

procedure TfrmMain.cmdCancelFTPClick(Sender: TObject);
begin
  if (CheckFTPConn) then
    IdFTP.Abort;
end;

procedure TfrmMain.pnlQuickCommandsConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  cmdDownload.Top := (pnlQuickCommands.Height div 2) - 25;
  cmdUpload.Top := cmdDownload.Top + 27;
end;

procedure TfrmMain.lvFTPDblClick(Sender: TObject);
function GetTempDir: string;
var
  Buffer: array[0..MAX_PATH] of Char;
begin
  GetTempPath(SizeOf(Buffer) - 1, Buffer);
  Result := IncludeTrailingPathDelimiter(StrPas(Buffer));
end;

var Item: TIdFTPListItem;
begin
  if (Assigned(lvFTP.Selected)) and (CheckFTPConn) then begin
    Item := lvFTP.Selected.Data;
    if (Assigned(Item)) then begin
      if (Item.ItemType = ditFile) then begin
        DownloadFileFTP(GetFullFTPPath + Item.FileName, GetTempDir + Item.FileName);
        ShellExecute(Handle, 'open', PChar(GetTempDir + Item.FileName), nil, PChar(GetTempDir), SW_SHOW);
      end
      else
        FTPChangeDir(GetFullFTPPath + Item.FileName);
    end
    else
      FTPChangeDir('..');
  end;
end;

procedure TfrmMain.lvFTPEdited(Sender: TObject; Item: TListItem;
  var S: String);
var Old: String;
begin
  Old := Item.Caption;
  try
    IdFTP.Noop;
  except
    exit;
  end;
  
  try
    if (CheckFTPConn) then
      IdFTP.Rename(Old, S);
  except
    on E: Exception do begin
      AddDebugLog('FTP-Explorer', 'Rename failed ("' + Old + '" -> "' + S + '"):' + #13 + E.Message);
      MessageBox(Handle, PChar('Sorry, couldn''t rename "' + Old + '" to "' + S + ':' + #13#10 + E.Message), 'Error', MB_ICONERROR);
      S := Old;
    end;
  end;
end;

procedure TfrmMain.lvFTPEditing(Sender: TObject; Item: TListItem;
  var AllowEdit: Boolean);
begin
  AllowEdit := (Item.Data <> nil);
end;

procedure TfrmMain.shlLocalDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TJvListView) and (TJvListView(Source).Selected <> nil) and (TJvListView(Source).Selected.Data <> nil) and (TIdFTPListItem(TJvListView(Source).Selected.Data).ItemType <> ditDirectory);
end;

procedure TfrmMain.shlLocalDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if (Source is TJvListView) and (TJvListView(Source).Selected <> nil) then
    cmdDownload.Click;
end;

procedure TfrmMain.lvFTPDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TShellListView) and (TShellListView(Source).Selected <> nil) and (FileExists(TShellListView(Source).Folders[TShellListView(Source).Selected.Index].PathName));
end;

procedure TfrmMain.lvFTPDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  if (Source is TShellListView) and (TShellListView(Source).Selected <> nil) then
    cmdUpload.Click;
end;

procedure TfrmMain.cmdDownloadClick(Sender: TObject);
var Item: TIdFTPListItem;
begin
  if (CheckFTPConn) and (lvFTP.Selected <> nil) then begin
    Item := lvFTP.Selected.Data;
    if (Assigned(Item)) then begin
      if (Item.ItemType <> ditDirectory) then
        DownloadFileFTP(GetFullFTPPath + lvFTP.Selected.Caption, IncludeTrailingPathDelimiter(shlLocal.RootFolder.PathName) + lvFTP.Selected.Caption);
    end;
  end;
end;

procedure TfrmMain.cmdUploadClick(Sender: TObject);
begin
  if (CheckFTPConn) and (shlLocal.Selected <> nil) then begin
    if (FileExists(shlLocal.Folders[shlLocal.Selected.Index].PathName)) then begin
      UploadFileFTP(shlLocal.Folders[shlLocal.Selected.Index].PathName, GetFullFTPPath + ExtractFileName(shlLocal.Folders[shlLocal.Selected.Index].PathName));
      ReloadFTP;
    end;
  end;
end;

procedure TfrmMain.cboRemoteExit(Sender: TObject);
begin
  if (CheckFTPConn) and (cboRemote.Text <> IdFTP.RetrieveCurrentDir) then
    FTPChangeDir(cboRemote.Text);
end;

procedure TfrmMain.cboRemoteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) and (CheckFTPConn) and (cboRemote.Text <> IdFTP.RetrieveCurrentDir) then
    FTPChangeDir(cboRemote.Text);
end;

procedure TfrmMain.lvFTPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 46) and (Assigned(lvFTP.Selected)) and (lvFTP.Selected.Data <> nil) then begin
    if (MessageBox(Handle, 'Do you really want to delete the selected file?', 'Question', MB_ICONQUESTION + MB_YESNO) = mrYes) then begin
      try
        if (CheckFTPConn) then
          IdFTP.Delete(lvFTP.Selected.Caption);
      except
        on E: Exception do begin
          AddDebugLog('FTP-Explorer', 'Cannot delete file "' + lvFTP.Selected.Caption + '":' + #13 + E.Message);
          MessageBox(Handle, PChar(E.Message), 'Error', MB_ICONERROR);
        end;
      end;
      
      ReloadFTP;
    end;
  end;
end;

procedure TfrmMain.shlLocalDblClick(Sender: TObject);
begin
  if (Assigned(shlLocal.Selected)) then
    ShellExecute(Handle, 'open', PChar(shlLocal.Folders[shlLocal.Selected.Index].PathName), nil, PChar(shlLocal.RootFolder.PathName), SW_SHOW);
end;

procedure TfrmMain.cmdUploadSourceClick(Sender: TObject);
var MemStream: TMemoryStream;
    TargetFile: String;
begin
  if (ActiveDoc = nil) or (BusyState <> []) then
    exit;
  
  MemStream := TMemoryStream.Create;
  // save code
  sciEditor.SaveToStream(MemStream);
  // ask for filename or set it
  if (ActiveDoc.Filename = '') then begin
    if (not frmInputBox.ShowQuery(False, '*', 'Please enter the filename for the sourcecode you want to upload:', '', 'Upload Sourcecode', TargetFile)) then begin
      MemStream.Free;
      exit;
    end;
  end
  else
    TargetFile := ExtractFileName(ActiveDoc.Filename);
  // upload
  MemStream.Position := 0;
  IdFTP.Put(MemStream, TargetFile);
  // refresh
  ReloadFTP;
  // end
  MemStream.Free;
end;

procedure TfrmMain.cmdCompileAndUploadClick(Sender: TObject);
begin
  if (BusyState <> []) or (ActiveDoc = nil) then exit;
  
  if (not CheckFTPConn) then
    MessageBox(Handle, PChar('Error: You need to connect to an FTP server before you can upload any files.' + #13#10 + 'To do so, go to Edit -> Change Current Server -> FTP and select the FTP server you want to use.'), 'Pawn Studio', MB_ICONERROR)
  else begin
    if (ActiveDoc.Filename = '') then begin
      if (MessageBox(Handle, 'The current document has not been saved yet but it''s required to do so in order to upload it via FTP. Save it now?', 'Pawn Studio', MB_ICONQUESTION + MB_YESNO) = mrYes) then begin
        if (not DoSave(ActiveDoc)) then
          exit;
      end
      else
        exit;
    end;

    with GetCurrCompiler do begin
      // compile file and upload if successful
      if (DoCompile(ActiveDoc, FileName, Arguments, DefOutdir, '', SaveOrigFile, CaptureOut, Configuration.OutputShowLength, CopyOnly, True)) then begin
        if (not Configuration.OutputShowLength) and (not CopyOnly) then
          lstOutput.Items.Add('');
        lstOutput.Perform(WM_VSCROLL, SB_BOTTOM, 0);
        lstOutput.ItemIndex := lstOutput.Items.Add('Uploading File...');
        if (UploadFileFTP(ActiveDoc.LastCompilationRes.TargetFile, ExtractFileName(ActiveDoc.LastCompilationRes.TargetFile))) then
          lstOutput.Items[lstOutput.Items.Count -1] := 'Uploading File... Done!'
        else
          lstOutput.Items[lstOutput.Items.Count -1] := 'Uploading File... Error!';
        ReloadFTP;
      end;
    end;
  end;
end;

// Misc Functions

function TfrmMain.CheckFTPConn: Boolean;
begin
  if (Configuration.ActiveFTPSrv = nil) then begin
    Result := False;
    exit;
  end;
  // send nop to check if connection is still active
  try
    IdFTP.Noop;
  except
    // conn state updated
  end;
  // then check connection and reconnect
  try
    if (not IdFTP.Connected) then begin
      IdFTP.Connect;
      FTPChangeDir(LastFTPPath);
    end;
    Result := True;
  except
    Result := False;
    Configuration.ActiveFTPSrv := nil;
  end;
end;

function TfrmMain.FTPChangeDir(NewDir: String): Boolean;
var CurrDir: String;
begin
  try
    // change dir
    CurrDir := IdFTP.RetrieveCurrentDir;
    if (CurrDir <> NewDir) then begin
      if (NewDir = '..') then begin
        if (CurrDir <> '/') then
          IdFTP.ChangeDirUp;
      end
      else
        IdFTP.ChangeDir(NewDir);
    end;
    // successful, add path to box
    if (cboRemote.Items.IndexOf(NewDir) = -1) then begin
      with cboRemote.ItemsEx.Add do begin
        ImageIndex := 0;
        LastFTPPath := IdFTP.RetrieveCurrentDir;
        Caption := LastFTPPath;
        cboRemote.ItemIndex := Index;
        // add item to box
        cboRemote.Perform(WM_KEYDOWN, VK_RETURN, 0);
        cboRemote.Perform(WM_KEYUP, VK_RETURN, 0);
      end;
    end
    else begin
      LastFTPPath := NewDir;
      cboRemote.ItemIndex := cboRemote.Items.IndexOf(NewDir);
    end;
    // reload list
    ReloadFTP;
    // result
    Result := True;
  except
    on E: Exception do begin
      if (CheckFTPConn) then begin
        AddDebugLog('FTP-Explorer', 'Cannot change directory to  "' + NewDir + '"!');
        MessageBox(Handle, PChar(E.Message), 'Pawn Studio', MB_ICONERROR);
      end;
      Result := False;
    end;
  end;
end;

procedure TfrmMain.ReloadFTP(const IgnoreConnState: Boolean = False);
procedure AddFile(Item: TIdFTPListItem);
var Ico: TIcon;
begin
  Ico := TIcon.Create;
  with lvFTP.Items.Add do begin
    Caption := Item.FileName;
    if (Item.Size < 1024) then
      SubItems.Add(IntToStr(Item.Size) + ' bytes')
    else if (Item.Size < 1048576) then
      SubItems.Add(FloatToStr(RoundTo(Item.Size / 1024, -2)) + ' KB')
    else if (Item.Size < 1073741824) then
      SubItems.Add(FloatToStr(RoundTo(Item.Size / 1048576, -2)) + ' MB')
    else
      SubItems.Add(FloatToStr(RoundTo(Item.Size / 1073741824, -2)) + ' GB');
    SubItems.Add(DateTimeToStr(Item.ModifiedDate));
    SubItems.Add(Item.OwnerPermissions + Item.GroupPermissions + Item.UserPermissions);
    if (Item.ItemType = ditDirectory) then
      ilMain.GetIcon(79, Ico)
    else if (Item.ItemType = ditSymbolicLink) then
      ilMain.GetIcon(80, Ico)
    else
      Ico.Handle := GetAssociatedIcon(Item.FileName, True);
    ImageIndex := ilFileExtensions.AddIcon(Ico);
    DestroyIcon(Ico.Handle);
    Data := Item;
  end;
  Ico.Free;
end;

var List: TStringList;
    Directory: String;
    Ico: TIcon;
    i: integer;
begin
  if (not CheckFTPConn) and (not IgnoreConnState) then exit;

  lvFTP.Items.BeginUpdate;
  try
    // clean up
    Directory := IdFTP.RetrieveCurrentDir;
    lvFTP.Clear;
    ilFileExtensions.Clear;
    // add icon
    if (Directory <> '/') then begin
      Ico := TIcon.Create;
      ilMain.GetIcon(30, Ico);
      with lvFTP.Items.Add do begin
        Caption := '..';
        ImageIndex := ilFileExtensions.AddIcon(Ico);
        Data := nil;
      end;
      Ico.Free;
    end;
    // list files and add to box
    Screen.Cursor := crHourGlass;
    List := TStringList.Create;
    try
      IdFTP.List(List);
      IdFTP.DirectoryListing.LoadList(List);
      for i := 0 to IdFTP.DirectoryListing.Count -1 do
        AddFile(IdFTP.DirectoryListing.Items[i]);
    except
      on E: Exception do
        AddDebugLog('FTP-Explorer', 'Cannot list files in "' + cboRemote.Text + '":' + #13 + E.Message);
    end;
    Screen.Cursor := crDefault;
    List.Free;
  except
    on E: Exception do begin
      if (CheckFTPConn) then begin
        AddDebugLog('FTP-Explorer', 'Cannot reload directory "' + Directory + '"!');
        MessageBox(Handle, PChar(E.Message), 'Error', MB_ICONERROR);
      end;
    end;
  end;

  if (tbxToolbar.ActivePage = tsFTP) then begin
    Application.ProcessMessages;
    lvFTP.ItemIndex := -1;
    lvFTP.Selected := nil;
  end;
  
  lvFTP.Items.EndUpdate;
end;

procedure TfrmMain.DownloadFileFTP(const FileName, DestFile: String);
function GetFileSize: Int64;
var Stream: TFileStream;
begin
  Stream := TFileStream.Create(DestFile, fmOpenRead);
  Result := Stream.Size;
  Stream.Free;
end;

var MsgRes: Integer;
begin
  // disable buttons
  cmdDownload.Enabled := False;
  cmdUpload.Enabled := False;
  cmdCompileAndUpload.Enabled := False;
  cmdUploadSource.Enabled := False;
  cmdCancelFTP.Enabled := True;
  Screen.Cursor := crHourGlass;
  // download process
  try
    if (FileExists(DestFile)) then begin
      if (IdFTP.Size(FileName) < GetFileSize) then begin
        MsgRes := MessageBox(Handle, 'The file you want to download already exists but seems to be incomplete. Resume?', 'Question', MB_ICONQUESTION + MB_YESNOCANCEL);
        if (MsgRes = mrYes) then
          IdFTP.Get(FileName, DestFile, False, True)
        else if (MsgRes = mrNo) then
          IdFTP.Get(FileName, DestFile, True);
      end
      else if (MessageBox(Handle, 'The file you want to download already exists. Overwrite?', 'Question', MB_ICONQUESTION + MB_YESNO) = mrYes) then
        IdFTP.Get(FileName, DestFile, True);
    end
    else
      IdFTP.Get(FileName, DestFile, False);
  except
    on E: Exception do begin
      AddDebugLog('UploadFileFTP', 'Cannot download file "' + Filename + '" to "' + DestFile + '":' + #13 + E.Message);
      MessageBox(Handle, PChar('Download failed:' + #13#10 + #13#10 + E.Message), 'Error', MB_ICONERROR);
    end;
  end;
  // enable again
  cmdDownload.Enabled := True;
  cmdUpload.Enabled := True;
  cmdCompileAndUpload.Enabled := True;
  cmdUploadSource.Enabled := True;
  cmdCancelFTP.Enabled := False;
  Screen.Cursor := crDefault;
end;

function TfrmMain.UploadFileFTP(const FileName, DestFile: String): Boolean;
begin
  Result := False;
  // disable buttons
  cmdDownload.Enabled := False;
  cmdUpload.Enabled := False;
  cmdCompileAndUpload.Enabled := False;
  cmdUploadSource.Enabled := False;
  cmdCancelFTP.Enabled := True;
  Screen.Cursor := crHourGlass;
  // upload process
  try
    IdFTP.Put(FileName, DestFile);
    Result := True;
  except
    on E: Exception do begin
      AddDebugLog('UploadFileFTP', 'Cannot upload file "' + Filename + '" to "' + DestFile + '":' + #13 + E.Message);
      MessageBox(Handle, PChar('Upload failed:' + #13#10 + #13#10 + E.Message), 'Error', MB_ICONERROR);
    end;
  end;
  // enable again
  cmdDownload.Enabled := True;
  cmdUpload.Enabled := True;
  cmdCompileAndUpload.Enabled := True;
  cmdUploadSource.Enabled := True;
  cmdCancelFTP.Enabled := False;
  Screen.Cursor := crDefault;
end;

function TfrmMain.GetFullFTPPath: String;
begin
  Result := IdFTP.RetrieveCurrentDir;
  if (Copy(Result, 1, Length(Result) -1) <> '/') and (Copy(Result, 1, Length(Result) -1) <> '\') then begin
    if (Pos('\', Result) <> 0) then
      Result := Result + '\'
    else
      Result := Result + '/';
  end;
end;

procedure TfrmMain.txtRCONCommandKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then begin
    if (Assigned(Configuration.ActiveRCONSrv)) then begin
      Configuration.ActiveRCONSrv.Send(txtRCONCommand.Text);
      txtRCONLog.Lines.Add('[' + TimeToStr(Now) + '] ' + txtRCONCommand.Text);
    end
    else
      txtRCONLog.Lines.Add('** not connected');
    
    txtRCONCommand.Clear;
    Key := #0;
  end;
end;

procedure TfrmMain.txtRCONLogKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Configuration.ActiveRCONSrv <> nil) and (Configuration.ActiveRCONSrv.IsConsoleProt) then begin
    Configuration.ActiveRCONSrv.Send(Chr(Key));
    Key := 0;
  end;
end;

procedure TfrmMain.rtfSQLQueryKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (MySQLClient.Connected) then begin
    DoSQLQuery(rtfSQLQuery.Text);
    rtfSQLQuery.Clear;
  end;
end;

procedure TfrmMain.itpSQLCommandsItemClick(Sender: TObject;
  ItemIndex: Integer);
var Value: String;
begin
  case ItemIndex of
    0: DoSQLQuery('SHOW DATABASES');
    1: begin
      if (frmInputBox.ShowQuery(False, '*', 'Please enter the name of the database you want to change to:', '', 'Change Database', Value)) then begin
        if (MySQLClient.select_db(Value)) then
          MessageBox(Handle, PChar('Okay, new database is "' + MySQLClient.Db + '".'), 'Pawn Studio', MB_ICONINFORMATION)
        else
          MessageBox(Handle, PChar('Change failed:' + #13#10 + #13#10 + MySQLClient.LastError), 'Pawn Studio', MB_ICONERROR);
      end;
    end;
    2: begin
      if (frmInputBox.ShowQuery(False, '*', 'Please enter the name of the database you want to create:', '', 'Create Database', Value)) then begin
        if (MySQLClient.create_db(Value)) then
          MessageBox(Handle, PChar('Database successfully created!'), 'Pawn Studio', MB_ICONINFORMATION)
        else
          MessageBox(Handle, PChar('Create failed:' + #13#10 + #13#10 + MySQLClient.LastError), 'Pawn Studio', MB_ICONERROR);
      end;
    end;
    3: DoSQLQuery('SHOW TABLES');
    4: ShellExecute(Handle, 'open', 'http://dev.mysql.com/doc/refman/5.1/en/', nil, nil, SW_SHOW);
    5: DoSQLQuery(LastSQLQuery);
  end;
end;

procedure TfrmMain.mnuClearMarkersClick(Sender: TObject);
begin
  sciEditor.MarkerDeleteAll(MODIFIED_MARKER);
  sciEditor.MarkerDeleteAll(UNMODIFIED_MARKER);
end;

procedure TfrmMain.trvCodeExplorerClick(Sender: TObject);
var Obj: TObject;
begin
  if (Assigned(trvCodeExplorer.Selected)) and (trvCodeExplorer.Selected.Data <> nil) then begin
    Obj := trvCodeExplorer.Selected.Data;
    if (Obj is TCodeElement) then
      RecreateInspector(TCodeElement(Obj).DocPos)
    else if (Obj is TFunction) then
      RecreateInspector(TFunction(Obj).DocPos)
    else if (Obj is TInclude) then
      RecreateInspector(TInclude(Obj).DocPos);
    sciEditor.SetFocusEx(True);
  end;
end;

procedure TfrmMain.trvCodeExplorerDblClick(Sender: TObject);
var Obj: TObject;
begin
  if (Assigned(trvCodeExplorer.Selected)) and (trvCodeExplorer.Selected.Data <> nil) then begin
    Obj := trvCodeExplorer.Selected.Data;
    if (Obj is TCodeElement) then
      sciEditor.GotoLineEnsureVisible(TCodeElement(Obj).Line)
    else if (Obj is TFunction) then 
      sciEditor.GotoLineEnsureVisible(TFunction(Obj).Line)
    else if (Obj is TInclude) then
      sciEditor.GotoLineEnsureVisible(TInclude(Obj).Line);
    sciEditor.SetFocusEx(True);
  end;
end;

procedure TfrmMain.trvCodeExplorerAdvancedCustomDraw(
  Sender: TCustomTreeView; const ARect: TRect; Stage: TCustomDrawStage;
  var DefaultDraw: Boolean);
begin
  if (trvCodeExplorer.Items.Count = 0) then begin
    with trvCodeExplorer.Canvas do begin
      Font.Color := clBtnShadow;
      if (ActiveDoc = nil) or (ActiveDoc.ParsingRes = nil) then begin
        TextOut(Sender.Width div 2 - TextWidth('No Information') div 2, Sender.Height div 2 - TextHeight('No Information'), 'No Information');
        TextOut(Sender.Width div 2 - TextWidth('Available') div 2, Sender.Height div 2, 'Available');
      end
      else
        TextOut(Sender.Width div 2 - TextWidth('Updating...') div 2, Sender.Height div 2 - TextHeight('Updating...'), 'Updating...');
    end;
    DefaultDraw := False;
  end;
end;

procedure TfrmMain.pnlRealBGDrawBackground(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; const PaintStage: TSpTBXPaintStage;
  var PaintDefault: Boolean);
begin
  ACanvas.Draw(imgBanner.Left, imgBanner.Top, imgBanner.Picture.Graphic);
end;

procedure TfrmMain.pnlRecentFilesDrawBackground(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; const PaintStage: TSpTBXPaintStage;
  var PaintDefault: Boolean);
begin
  ACanvas.Brush.Style := bsClear;
  ACanvas.Pen.Color := shpRecentFiles.Pen.Color;
  ACanvas.Rectangle(shpRecentFiles.Left, shpRecentFiles.Top, shpRecentFiles.Left + shpRecentFiles.Width, shpRecentFiles.Top + shpRecentFiles.Height);
end;

procedure TfrmMain.lvAutoCompleteMouseEnter(Sender: TObject);
var OldPos: Integer;
begin
  if (ToolbarPopup) and (not AC_BlockTB) then begin
    OldPos := -1;
    pnlACTB.Left := pnlAutoComplete.Left;
    pnlACTB.Top := pnlAutoComplete.Top + pnlAutoComplete.Height + 2;
    while (pnlACTB.Top + pnlACTB.Height + 16 > sciEditor.Height) and (OldPos <> pnlACTB.Top) do begin
      OldPos := pnlACTB.Top;
      sciEditor.Perform(WM_VSCROLL, SB_LINEDOWN, 0);
      pnlACTB.Top := pnlAutoComplete.Top + pnlAutoComplete.Height + 2;
    end;
    pnlACTB.Show;
  end;
end;

procedure TfrmMain.pnlACTBMouseLeave(Sender: TObject);
var MPos: TPoint;
begin
  MPos := Mouse.CursorPos;
  MPos.X := MPos.X - Left - pnlACTB.Left;
  MPos.Y := MPos.Y - Top - tbxTabs.Top - jplPages.Top - pnlACTB.Top - 22;
  if (MPos.X < 0) or (MPos.X > pnlACTB.Width) or (MPos.Y < 0) or (MPos.Y > pnlACTB.Height) then
    pnlACTB.Hide;
end;

procedure TfrmMain.AdjustAC;
var X, Y: Integer;
begin
  if (ShowAC) then begin
    // horizontal scroll
    X := sciEditor.PointXFromPosition(ACStartPos);
    if (X < MinXPos) then begin
      pnlAutoComplete.Hide;
      pnlACTB.Hide;
      ShowAC := False;
    end
    else if (X + pnlAutoComplete.Width + 16 > sciEditor.Width) then begin
      if (X > sciEditor.Width) then begin
        pnlAutoComplete.Hide;
        pnlACTB.Hide;
        ShowAC := False;
      end
      else begin
        sciEditor.Perform(WM_HSCROLL, SB_LINERIGHT, 0);
        sciEditor.Perform(WM_HSCROLL, SB_LINERIGHT, 0);
        X := sciEditor.PointXFromPosition(ACStartPos);
      end;
    end;
    // vertical scroll
    Y := sciEditor.PointYFromPosition(ACStartPos) + sciEditor.TextHeight(ACStartLine) +3;
    if (Y < 2) then
      Y := 2;
    AC_BlockTB := False;
    if (Y + pnlAutoComplete.Height + 16 > sciEditor.Height) then begin
      Y := Y - pnlAutoComplete.Height - sciEditor.TextHeight(ACStartLine) -3;
      if (Configuration.CT_AutoHide) and ((ShowCT) or (pnlAutoComplete.Top < pnlAutoComplete.Height)) then begin
        pnlAutoComplete.Hide;
        pnlACTB.Hide;
        ShowAC := False;
      end
      else
        AC_BlockTB := True;
    end;
    // set values
    pnlAutoComplete.Left := X;
    pnlAutoComplete.Top := Y;
  end;
end;

procedure TfrmMain.AdjustCT;
var X, Y: Integer;
begin
  if (ShowCT) then begin
    { part 1 - get current parameter }
    CT_ActiveParam := CountChars(RemoveBraces(RemoveFrom(Copy(sciEditor.Lines.Text, CT_StartPos+1, sciEditor.SelStart - CT_StartPos), GetEscapeChr(ActiveDoc.HighlighterType), True, True, True, True), True, True), ',');
    if (CT_ActiveParam >= CT_ParamList.Count) and (CT_ParamList.Count <> 0) and (Pos('...', CT_ParamList[CT_ParamList.Count-1]) <> 0) then
      CT_ActiveParam := CT_ParamList.Count -1;
    { part 2 - realign panel }
    // init vars
    X := sciEditor.PointXFromPosition(CT_StartPos);
    Y := sciEditor.PointYFromPosition(CT_StartPos) - pnlCallTip.Height;
    // set X offset if we're scrolling
    if (X < MinXPos) then begin
      CT_XOff := X - MinXPos;
      X := MinXPos;
    end
    else
      CT_XOff := 1;
    if (Y < 2) or (Y + pnlCallTip.Height + 16 > sciEditor.Height) then begin
      ShowCT := False;
      pnlCallTip.Hide;
    end;
    // check if we can display it and set position
    if (Y < 2) or (Y > sciEditor.Height + pnlCallTip.Height + 16) then
      ShowCT := False
    else begin
      pnlCallTip.Left := X;
      if (not Configuration.CT_EditorOwnsCalltip) then
        pnlCallTip.Top := Y + tbxTabs.Top + jplPages.Top
      else
        pnlCallTip.Top := Y;
      pnlCallTip.OnPaint(Self);
    end;
  end;
end;


function TfrmMain.DetectCallTip(const FuncClosed: Boolean): Boolean;
var CurrPos, Tmp: integer;
    i, k: integer;
    Buff: String;
    Parent: TObject;
    InBrace: Boolean;
    Func: TFunction;
begin
  Result := False;
  Func := nil;
  Parent := nil;
  { go to beginning of function }
  Tmp := Length(frmMain.sciEditor.Lines.Text);
  // go to beginning of sub-function
  CurrPos := GetMatchingBrace(sciEditor.Lines.Text, GetEscapeChr(ActiveDoc.HighlighterType), sciEditor.SelStart+1, ')');
  if (CurrPos = 1) or (CurrPos = Tmp) then exit;
  // then jump to main function
  if (FuncClosed) then begin
    CurrPos := GetMatchingBrace(sciEditor.Lines.Text, GetEscapeChr(ActiveDoc.HighlighterType), CurrPos, ')');
    if (CurrPos = 1) or (CurrPos = Tmp) then exit;
  end;
  Dec(CurrPos, 1);
  { get function name }
  Buff := '';
  for i := CurrPos downto 1 do begin
    if (Pos(sciEditor.Lines.Text[i], sciEditor.WordChars) = 0) then
      break;
    Buff := sciEditor.Lines.Text[i] + Buff;
  end;
  if (Buff = '') then exit;
  { get function entry }
  ActiveDoc.ClamList.Lock;
  if (AC_LastElem <> -1) and (AC_LastElem < ActiveDoc.ClamList.Count) and (ActiveDoc.ClamList.ItemType[AC_LastElem] = ctFunction) and (TFunction(ActiveDoc.ClamList.Items[AC_LastElem]).Name = Buff) then begin
    Func := TFunction(ActiveDoc.ClamList.Items[AC_LastElem]);
    Parent := ActiveDoc.ClamList.Parent[AC_LastElem];
  end
  else begin
    for i := 0 to ActiveDoc.ClamList.Count -1 do begin
      if (ActiveDoc.ClamList.ItemType[i] = ctFunction) and (Buff = TFunction(ActiveDoc.ClamList.Items[i]).Name) then begin
        Func := TFunction(ActiveDoc.ClamList.Items[i]);
        Parent := ActiveDoc.ClamList.Parent[i];
        break;
      end;
    end;
  end;
  { stop here if Func and/or Parent haven't been initalized }
  if (Func = nil) or (Parent = nil) then begin
    ActiveDoc.ClamList.Unlock;
    exit;
  end;
  { set up calltip }
  with Func do begin
    { set variables }
    CT_ActiveParam := 0;
    CT_SelectedParam := -1;
    CT_Function := Buff;
    CT_Comment := Comment;
    if (Parent is TDocument) then
      CT_FileName := TDocument(Parent).Filename
    else
      CT_FileName := TFileInfo(Parent).FileName;
    CT_FuncLine := Line;
    { convert commas in tagged parameters }
    Buff := Parameters;
    InBrace := False;
    for k := 1 to Length(Buff) do begin
      if (InBrace) then begin
        if (Buff[k] = ',') then
          Buff[k] := #1
        else if (Buff[k] = '}') then
          InBrace := False;
      end
      else
        InBrace := (Buff[k] = '{');
    end;
    { set up list }
    CT_ParamList.Text := StringReplace(StringReplace(Between(Buff, '(', ')'), ',', #13, [rfReplaceAll]), #1, ',', [rfReplaceAll]);
    for k := CT_ParamList.Count -1 downto 0 do begin
      CT_ParamList[k] := Trim(CT_ParamList[k]);
      if (CT_ParamList[k] = '') then
        CT_ParamList.Delete(k);
    end;
    CT_StartPos := CurrPos +1;
    CT_StartLine := sciEditor.GetCurrentLineNumber;
    { end }
    Result := True;
  end;
  ActiveDoc.ClamList.Unlock;
end;

procedure TfrmMain.ACPanelClick(Sender: TObject);
begin
  sciEditor.SetFocus;
end;

procedure TfrmMain.pnlAutoCompleteResize(Sender: TObject);
begin
  pnlACTB.Top := pnlAutoComplete.Top + pnlAutoComplete.Height + 3;
  lvAutoComplete.Column[0].Width := TN((GetWindowLong(lvAutoComplete.Handle, GWL_STYLE) and WS_VSCROLL) = 0, lvAutoComplete.Width, lvAutoComplete.Width -16);
end;

procedure TfrmMain.lvAutoCompleteDrawItem(Sender: TCustomListView;
  Item: TListItem; Rect: TRect; State: TOwnerDrawState);
var MaxLen, Start: Integer;
    CutStr: String;
begin
  // align column
  lvAutoComplete.Column[0].Width := TN((GetWindowLong(lvAutoComplete.Handle, GWL_STYLE) and WS_VSCROLL) = 0, lvAutoComplete.Width, lvAutoComplete.Width -16);
  Rect.Right := lvAutoComplete.Column[0].Width;
  // then draw it
  with lvAutoComplete.Canvas do begin
    // draw rect
    if (odFocused in State) then begin
      // draw rect
      Pen.Color := clBlack;
      Brush.Color := $00FFE6E6;
      Rectangle(Rect.Left, Rect.Top, Rect.Right, Rect.Bottom);
      DrawFocusRect(Rect);
    end
    else begin
      Pen.Color := clWindow;
      Brush.Color := clWindow;
      Rectangle(Rect.Left, Rect.Top, Rect.Right, Rect.Bottom);
    end;
    // caption+description
    Font.Style := [];
    case Item.ImageIndex of
      2: Font.Color := clBtnShadow;   // Const
      4: Font.Color := $00727272;     // Enum
      11: begin
        Font.Style := [fsBold];
        Font.Color := clBlue;         // Function
      end;
      12: Font.Color := clMaroon;     // Variable
    end;
    MaxLen := Rect.Right - TextWidth(Item.SubItems[0]) -22;
    if (TextWidth(Item.Caption) > MaxLen) then begin
      CutStr := Item.Caption;
      while (TextWidth(CutStr + '...') > MaxLen) and (CutStr <> '') do
        CutStr := Copy(CutStr, 1, Length(CutStr) -1);
      CutStr := CutStr + '...';
      TextOut(Rect.Left +18, Rect.Top +1, CutStr);
    end
    else begin
      TextOut(Rect.Left +18, Rect.Top +1, Item.Caption);
      if (Item.ImageIndex = 11) then begin
        // refresh canvas so we can draw again and set Start
        Start := Rect.Left + 18 + TextWidth(Item.Caption);
        // change font
        Font.Style := [];
        Font.Color := clGray;
        Refresh;
        // cut string so we know how many chars we can paint
        CutStr := Item.SubItems[1];
        MaxLen := Rect.Right - Start - TextWidth(Item.SubItems[0]) -2;
        if (TextWidth(CutStr) > MaxLen) then begin
          while (TextWidth(CutStr + '...') > MaxLen) and (CutStr <> '') do
            CutStr := Copy(CutStr, 1, Length(CutStr) -4);
          CutStr := CutStr + '...';
        end;
        // and draw parameters
        TextOut(Start, Rect.Top +1, CutStr);
      end;
    end;
    // description
    Refresh;
    Font.Style := [fsItalic];
    Font.Color := clGray;        // Const
    TextOut(Rect.Right - TextWidth(Item.SubItems[0]) -4, Rect.Top +1, Item.SubItems[0]);
    // and icon
    ImageList_Draw(ilCodeExplorer.Handle, Item.ImageIndex, Handle, 1, Rect.Top, ILD_NORMAL);
    Refresh;
  end;
end;

procedure TfrmMain.RebuildList(const NewExp: String; const UpdateStat: Boolean = True);
var i, k: integer;

    LVItem: TListItem;
    CType: TClamType;

    CEObj: TCodeElement;
    FObj: TFunction;
    EObj: TEnum;
begin
  // init vars
  CEObj := nil;
  FObj := nil;
  // start rebuild
  with lvAutoComplete.Items do begin
    // begin update, lock and clear (lv) lists
    BeginUpdate;
    ActiveDoc.ClamList.Lock;
    Clear;
    EnumItems.Clear;                                      
    ActiveDoc.ClamList.ClearLVEntries;
    // add every item in ClamList..
    for i := 0 to ActiveDoc.ClamList.Count -1 do begin
      if (AC_ShowIncItems) or (ActiveDoc.ClamList.IsLocal[i]) then begin
        // first check
        CType := ActiveDoc.ClamList.ItemType[i];
        if (FilterEnabled) and (FilterType <> CType) then continue;
        // set objects and check if this item can be added
        case CType of
          ctFunction: begin
            FObj := TFunction(ActiveDoc.ClamList.Items[i]);
            if (not IsAtStart(NewExp, FObj.Caption)) then continue;
          end;
          ctConstVal, ctVariable: begin
            CEObj := TCodeElement(ActiveDoc.ClamList.Items[i]);
            if (not IsAtStart(NewExp, CEObj.Caption)) then continue;
          end;
          ctEnum: begin
            if (ActiveDoc.ClamList.ItemTypeD[i] = ctdFuncEnum) then continue;

            EObj := TEnum(ActiveDoc.ClamList.Items[i]);
            for k := 0 to EObj.Entries.Count -1 do begin
              if (IsAtStart(NewExp, EObj.Entries[k])) then begin
                LVItem := Add;
                with LVItem do begin
                  Data := EObj;
                  EObj.Entries.Objects[k] := LVItem;
                  ImageIndex := 4;
                  Caption := EObj.Entries[k];
                  SubItems.Add('Enum');
                end;
                EnumItems.AddObject(LVItem.Caption, LVItem);
              end;
            end;
            continue;
          end;
        end;
        // add other items
        LVItem := Add;
        ActiveDoc.ClamList.LVEntry[i] := LVItem;
        with LVItem do begin
          case CType of
            ctConstVal: begin
              ImageIndex := 2;
              Caption := CEObj.Caption;
              case ActiveDoc.ClamList.ItemTypeD[i] of
                ctdDefinition: SubItems.Add('Definition');
                ctdConst: SubItems.Add('Const');
                ctdStockConst: SubItems.Add('Stock');
                ctdPublicConst: SubItems.Add('Public');
                ctdStaticConst: SubItems.Add('Static');
              end;
              Data := CEObj;
            end;
            ctVariable: begin
              ImageIndex := 12;
              Caption := CEObj.Caption;
              case ActiveDoc.ClamList.ItemTypeD[i] of
                ctdGlobalVar: SubItems.Add('Global');
                ctdPublicVar: SubItems.Add('Public');
                ctdStockVar: SubItems.Add('Stock');
                ctdStaticVar: SubItems.Add('Static');
              end;
              Data := CEObj;
            end;
            ctFunction: begin
              ImageIndex := 11;
              Caption := FObj.Caption;
              case ActiveDoc.ClamList.ItemTypeD[i] of
                ctdMacro: SubItems.Add('Macro');
                ctdForward: SubItems.Add('Forward');
                ctdPrivFunc: SubItems.Add('Private');
                ctdPubFunc: SubItems.Add('Public');
                ctdNative: SubItems.Add('Native');
                ctdStockFunc: SubItems.Add('Stock');
              end;
              SubItems.Add(FObj.Parameters);
              Data := FObj;
            end;
          end;
        end;
      end;
    end;
    ActiveDoc.ClamList.Unlock;
    EndUpdate;
  end;

  if (UpdateStat) then
    ShowAC := (lvAutoComplete.Items.Count <> 0);
end;

procedure TfrmMain.UpdateList(const NewExp: String; const UpdateStat: Boolean = True);
var i, k, idx: integer;
    
    LVItem: TListItem;
    CType: TClamType;

    CEObj: TCodeElement;
    FObj: TFunction;
    EObj: TEnum;
begin
  // init vars
  CEObj := nil;
  FObj := nil;
  // start update
  with lvAutoComplete.Items do begin
    BeginUpdate;
    ActiveDoc.ClamList.Lock;
    for i := 0 to ActiveDoc.ClamList.Count -1 do begin
      if (ActiveDoc.ClamList.LVEntry[i] = nil) then begin
        // first check
        CType := ActiveDoc.ClamList.ItemType[i];
        if ((FilterEnabled) and (FilterType <> CType)) then continue;
        // set objects and check if this item can be added
        case CType of
          ctFunction: begin
            FObj := TFunction(ActiveDoc.ClamList.Items[i]);
            if (not IsAtStart(NewExp, FObj.Caption)) then continue;
          end;
          ctConstVal, ctVariable: begin
            CEObj := TCodeElement(ActiveDoc.ClamList.Items[i]);
            if (not IsAtStart(NewExp, CEObj.Caption)) then continue;
          end;
          ctEnum: begin
            if (ActiveDoc.ClamList.ItemTypeD[i] = ctdFuncEnum) then continue;

            EObj := TEnum(ActiveDoc.ClamList.Items[i]);
            for k := 0 to EObj.Entries.Count -1 do begin
              idx := EnumItems.IndexOf(EObj.Entries[k]);
              if (idx = -1) then begin
                if (IsAtStart(NewExp, EObj.Entries[k])) then begin
                  LVItem := Add;
                  with LVItem do begin
                    Data := EObj;
                    EObj.Entries.Objects[k] := LVItem;
                    ImageIndex := 4;
                    Caption := EObj.Entries[k];
                    SubItems.Add('Enum');
                  end;
                  EnumItems.AddObject(NewExp, LVItem);
                end
              end
              else if (TListItem(EnumItems.Objects[idx]) <> nil) and (not (IsAtStart(NewExp, EObj.Entries[k]))) then begin
                TListItem(EnumItems.Objects[idx]).Delete;
                EnumItems.Delete(idx);
              end;
            end;
            continue;
          end;
        end;
        LVItem := Add;
        ActiveDoc.ClamList.LVEntry[i] := LVItem;
        with LVItem do begin
          case CType of
            ctConstVal: begin
              ImageIndex := 2;
              Caption := CEObj.Caption;
              case ActiveDoc.ClamList.ItemTypeD[i] of
                ctdDefinition: SubItems.Add('Definition');
                ctdConst: SubItems.Add('Const');
                ctdStockConst: SubItems.Add('Stock');
                ctdPublicConst: SubItems.Add('Public');
                ctdStaticConst: SubItems.Add('Static');
              end;
              Data := CEObj;
            end;
            ctVariable: begin
              ImageIndex := 12;
              Caption := CEObj.Caption;
              case ActiveDoc.ClamList.ItemTypeD[i] of
                ctdGlobalVar: SubItems.Add('Global');
                ctdPublicVar: SubItems.Add('Public');
                ctdStockVar: SubItems.Add('Stock');
                ctdStaticVar: SubItems.Add('Static');
              end;
              Data := CEObj;
            end;
            ctFunction: begin
              ImageIndex := 11;
              Caption := FObj.Caption;
              case ActiveDoc.ClamList.ItemTypeD[i] of
                ctdMacro: SubItems.Add('Macro');
                ctdForward: SubItems.Add('Forward');
                ctdPrivFunc: SubItems.Add('Private');
                ctdPubFunc: SubItems.Add('Public');
                ctdNative: SubItems.Add('Native');
                ctdStockFunc: SubItems.Add('Stock');
              end;
              SubItems.Add(FObj.Parameters);
              Data := FObj;
            end;
          end; 
        end;
      end
      else if (not IsAtStart(NewExp, ActiveDoc.ClamList.LVEntry[i].Caption)) then begin
        ActiveDoc.ClamList.LVEntry[i].Delete;
        ActiveDoc.ClamList.LVEntry[i] := nil;
      end;
    end;
    ActiveDoc.ClamList.Unlock;
    EndUpdate;
  end;

  if (UpdateStat) then
    ShowAC := (lvAutoComplete.Items.Count <> 0);
end;

procedure TfrmMain.cmdShowIncItemsClick(Sender: TObject);
begin
  if (AC_ShowIncItems) then begin
    AC_ShowIncItems := False;
    with cmdShowIncItems do begin
      Color := $00EBEBEB;
      ColorBorder := $008396A0;
      ColorDown := $00F7E1CE;
      ColorFocused := $00F7E1CE;
      ColorHighLight := $008396A0;
      ColorShadow := $008396A0;
    end;
  end
  else begin
    AC_ShowIncItems := True;
    with cmdShowIncItems do begin
      Color := $00F7E1CE;
      ColorBorder := $00CE7422;
      ColorDown := $00F7E1CE;
      ColorFocused := $00F9E6D5;
      ColorHighLight := $00E08F47;
      ColorShadow := $00E08F47;
    end;
  end;
  RebuildList(OldKW);
  if (lvAutoComplete.Items.Count = 0) and (not AC_ShowIncItems) then begin
    Beep;
    cmdShowIncItems.Click;
  end;
end;

procedure TfrmMain.cmdShowFuncsClick(Sender: TObject);
begin
  if (FilterEnabled) then begin
    // Remove filter
    if (FilterType = ctFunction) then begin
      FilterEnabled := False;
      with cmdShowFuncs do begin
        Color := $00EBEBEB;
        ColorBorder := $008396A0;
        ColorDown := $00F7E1CE;
        ColorFocused := $00F7E1CE;
        ColorHighLight := $008396A0;
        ColorShadow := $008396A0;
      end;
      exit;
    end
    // Remove other filters
    else begin
      case FilterType of
        ctConstVal: cmdShowConstVal.Click;
        ctVariable: cmdShowVariables.Click;
        //ctFunction: cmdShowFuncs.Click;
      end;
    end;
  end;
  // Select new one
  FilterEnabled := True;
  FilterType := ctFunction;
  with cmdShowFuncs do begin
    Color := $00F7E1CE;
    ColorBorder := $00CE7422;
    ColorDown := $00F7E1CE;
    ColorFocused := $00F9E6D5;
    ColorHighLight := $00E08F47;
    ColorShadow := $00E08F47;
  end;
  RebuildList(OldKW);
  if (lvAutoComplete.Items.Count = 0) and (FilterEnabled) then begin
    Beep;
    cmdShowFuncs.Click;
  end;
end;

procedure TfrmMain.cmdShowVariablesClick(Sender: TObject);
begin
  if (FilterEnabled) then begin
    // Remove filter
    if (FilterType = ctVariable) then begin
      FilterEnabled := False;
      with cmdShowVariables do begin
        Color := $00EBEBEB;
        ColorBorder := $008396A0;
        ColorDown := $00F7E1CE;
        ColorFocused := $00F7E1CE;
        ColorHighLight := $008396A0;
        ColorShadow := $008396A0;
      end;
      exit;
    end
    // Remove other filters
    else begin
      case FilterType of
        ctConstVal: cmdShowConstVal.Click;
        //ctVariable: cmdShowVariables.Click;
        ctFunction: cmdShowFuncs.Click;
      end;
    end;
  end;
  // Select new one
  FilterEnabled := True;
  FilterType := ctVariable;
  with cmdShowVariables do begin
    Color := $00F7E1CE;
    ColorBorder := $00CE7422;
    ColorDown := $00F7E1CE;
    ColorFocused := $00F9E6D5;
    ColorHighLight := $00E08F47;
    ColorShadow := $00E08F47;
  end;
  RebuildList(OldKW);
  if (lvAutoComplete.Items.Count = 0) and (FilterEnabled) then begin
    Beep;
    cmdShowVariables.Click;
  end;
end;

procedure TfrmMain.cmdShowConstValClick(Sender: TObject);
begin
  if (FilterEnabled) then begin
    // Remove filter
    if (FilterType = ctConstVal) then begin
      FilterEnabled := False;
      with cmdShowConstVal do begin
        Color := $00EBEBEB;
        ColorBorder := $008396A0;
        ColorDown := $00F7E1CE;
        ColorFocused := $00F7E1CE;
        ColorHighLight := $008396A0;
        ColorShadow := $008396A0;
      end;
      exit;
    end
    // Remove other filters
    else begin
      case FilterType of
        //ctConstVal: cmdShowConstVal.Click;
        ctVariable: cmdShowVariables.Click;
        ctFunction: cmdShowFuncs.Click;
      end;
    end;
  end;
  // Select new one
  FilterEnabled := True;
  FilterType := ctConstVal;
  with cmdShowConstVal do begin
    Color := $00F7E1CE;
    ColorBorder := $00CE7422;
    ColorDown := $00F7E1CE;
    ColorFocused := $00F9E6D5;
    ColorHighLight := $00E08F47;
    ColorShadow := $00E08F47;
  end;
  RebuildList(OldKW);
  if (lvAutoComplete.Items.Count = 0) and (FilterEnabled) then begin
    Beep;
    cmdShowConstVal.Click;
  end;
end;

procedure TfrmMain.lvAutoCompleteDblClick(Sender: TObject);
begin
  if (lvAutoComplete.ItemFocused <> nil) then begin
    // insert item
    sciEditor.SelStart := sciEditor.SelStart - Length(OldKW);
    sciEditor.SelLength := Length(OldKW);
    sciEditor.SelText := lvAutoComplete.ItemFocused.Caption;
    if (Configuration.AC_AutoInsert) and (lvAutoComplete.ItemFocused.ImageIndex = 11) then begin
      sciEditor.SelText := '()';
      sciEditor.SelStart := sciEditor.SelStart -1;
    end;
    AC_LastElem := ActiveDoc.ClamList.IndexOf(lvAutoComplete.ItemFocused.Data);
    // hide list, set CompletitionDone to true and reset key
    ShowAC := False;
    pnlAutoComplete.Hide;
    pnlACTB.Hide;
    // oh, set focus
    sciEditor.SetFocus;
  end;
end;

procedure TfrmMain.lvAutoCompleteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then begin
    lvAutoComplete.OnDblClick(Sender);
    Key := 0;
  end;
end;

procedure TfrmMain.sciEditorProc(var Message: TMessage);
begin
  OldProc(Message);
  if (Message.Msg = WM_MOUSEWHEEL) then begin
    AdjustAC;
    AdjustCT;
  end
  else if (Message.Msg = WM_VSCROLL) or (Message.Msg = CM_SCROLLBOXEXVERTSCROLL) then begin
    AdjustAC;
    AdjustCT;
  end
  else if (Message.Msg = WM_HSCROLL) or (Message.Msg = CM_SCROLLBOXEXHORIZSCROLL) then begin
    AdjustAC;
    AdjustCT;
  end;
end;

procedure TfrmMain.sciEditorDblClick(Sender: TObject);
var Pos, Start, Stop: Integer;
begin
  // select entire comment on doubleclick
  if (GetAsyncKeyState(VK_CONTROL) <> 0) then begin
    Pos := sciEditor.PositionFromPoint(sciEditorPos.X, sciEditorPos.Y);
    if (IsInComment(False, Pos)) then begin
      // find start
      Start := Pos;
      repeat
        Dec(Start, 1);
      until (not IsInComment(False, Start)) or (Start = -1);
      Inc(Start, 1);
      // get length
      Stop := Pos;
      if (IsInComment(True, Pos)) then begin
        repeat
          Inc(Stop, 1);
        until (not IsInComment(False, Stop));
      end
      else begin
        repeat
          Inc(Stop, 1);
        until (not IsInComment(False, Stop)) or (sciEditor.Lines.Text[Stop] = #10) or (sciEditor.Lines.Text[Stop] = #13);
      end;
      // set it
      sciEditor.SelStart := Start;
      sciEditor.SelLength := Stop-Start;
    end;
  end;
end;

procedure TfrmMain.pnlCallTipPaint(Sender: TObject);
var i, L: Integer;
begin
  with pnlCallTip.Canvas do begin
    Lock;
    // border
    Brush.Color := pnlCallTip.Color;
    Rectangle(0, 0, pnlCallTip.Width, pnlCallTip.Height);
    // function
    TextOut(CT_XOff, 1, CT_Function + '(');
    L := CT_XOff + TextWidth(CT_Function + '(');
    CT_FPPos := L;
    // parameters
    for i := 0 to CT_ParamList.Count -1 do begin
      // active param -> bold
      if (CT_ActiveParam = i) then
        Font.Style := [fsBold]
      else
        Font.Style := [];
      // mouse-over effect
      if (CT_SelectedParam = i) then
        Font.Color := clBtnShadow
      else
        Font.Color := clWindowText;
      // draw it
      Refresh;
      if (i = CT_ParamList.Count -1) then begin
        TextOut(L, 1, CT_ParamList[i]);
        Inc(L, TextWidth(CT_ParamList[i]));
      end
      else begin
        TextOut(L, 1, CT_ParamList[i] + ', ');
        Inc(L, TextWidth(CT_ParamList[i] + ', '));
      end;
      // set ending for param
      CT_ParamList.Objects[i] := TObject(L);
    end;
    // closing brace
    Font.Style := [];
    Font.Color := clWindowText;
    Refresh;
    TextOut(L, 1, ')');
    // resize
    i := L + TextWidth(')') + 2;
    if (Configuration.CT_EditorOwnsCalltip) then begin
      L := sciEditor.Width - TN((GetWindowLong(sciEditor.Handle, GWL_STYLE) and WS_VSCROLL) = 0, 0, 18); // 16+2
      if (pnlCallTip.Left + i > L) then
        i := L - pnlCallTip.Left;
    end;
    pnlCallTip.Width := i;
    Unlock;
  end;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  CT_ParamList.Free;
  EnumItems.Free;
  VBSObj.Free;
end;

procedure TfrmMain.pnlCallTipMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var i: integer;
    Buff: String;
begin
  if (not Configuration.CT_HighlightParams) then exit;

  if (X <= CT_FPPos) then begin
    CT_SelectedParam := -1;
    pnlCallTip.Hint := WrapComment(CT_Comment.Caption, 80);
    pnlCallTip.ShowHint := (CT_Comment.Caption <> '');
    if (pnlCallTip.ShowHint) then
      Application.ActivateHint(Point(pnlCallTip.ClientOrigin.X + 2, pnlCallTip.ClientOrigin.Y));
    pnlCallTip.Repaint;
    exit;
  end;
  // get current parameter
  for i := 0 to CT_ParamList.Count -1 do begin
    if (X < Integer(CT_ParamList.Objects[i])) then begin
      if (i <> CT_SelectedParam) then begin
        if (i < CT_Comment.Params.Count) then begin
          Buff := CT_Comment.Params[i];
          if (Pos(#9, Buff) <> 0) then
            Buff := Trim(Copy(Buff, Pos(#9, Buff)+1, Length(Buff)));
          Buff := CT_ParamList[i] + ': ' + Buff;
          pnlCallTip.Hint := Buff;
          pnlCallTip.ShowHint := (ciParamInfo in CT_Comment.Info) and (pnlCallTip.Hint <> '');
          if (pnlCallTip.ShowHint) then begin
            CT_SelectedParam := i;
            pnlCallTip.Repaint;
            if (i > 0) then
              Application.ActivateHint(Point(pnlCallTip.ClientOrigin.X + Integer(CT_ParamList.Objects[i-1]), pnlCallTip.ClientOrigin.Y))
            else
              Application.ActivateHint(Point(pnlCallTip.ClientOrigin.X + CT_FPPos + pnlCallTip.Canvas.TextWidth('('), pnlCallTip.ClientOrigin.Y));
          end;
        end
        else
          pnlCallTip.ShowHint := False;
      end;
      break;
    end;
  end;
end;

procedure TfrmMain.pnlCallTipMouseLeave(Sender: TObject);
begin
  CT_SelectedParam := -1;
  pnlCallTip.Repaint;
end;

procedure TfrmMain.WMCopyData(var Msg: TWMCopyData);
var Doc: TDocument;
begin
  case Msg.CopyDataStruct.dwData of
    0: begin
      Doc := GetDocumentByFN(PChar(Msg.CopyDataStruct.lpData));
      if (Doc = nil) then
        DoOpenFile(PChar(Msg.CopyDataStruct.lpData), True)
      else if (Doc <> ActiveDoc) then
        ActivateDocument(Doc);
    end;
  end;
end;

procedure TfrmMain.mnuBaconizeClick(Sender: TObject);
begin
  Randomize;
  case (Random(8)) of
    0: ShellExecute(Handle, 'open', 'http://img63.imageshack.us/img63/9935/1143671015499zw1.jpg', nil, nil, SW_SHOW);
    1: ShellExecute(Handle, 'open', 'http://www.mcphee.com/items/11706.html', nil, nil, SW_SHOW);
    2: ShellExecute(Handle, 'open', 'http://img209.imageshack.us/img209/4898/1188160686722ha8.gif', nil, nil, SW_SHOW);
    3: ShellExecute(Handle, 'open', 'http://img402.imageshack.us/img402/1143/baconflowchartvj8.jpg', nil, nil, SW_SHOW);
    4: ShellExecute(Handle, 'open', 'http://www.saynotocrack.com/wp-content/uploads/2007/04/bacon-briefcase.jpg', nil, nil, SW_SHOW);
    5: ShellExecute(Handle, 'open', 'http://bravomtdb.console.net/_mt/andysblog/_blogImages/2006/11/Hawaii%20-%20Bacon%20Cake.jpg', nil, nil, SW_SHOW);
    6: ShellExecute(Handle, 'open', 'http://www.bigstockphoto.com/thumbs/8/2/1/small/12808.jpg', nil, nil, SW_SHOW);
    7: ShellExecute(Handle, 'open', 'http://www.dilbert.com/comics/dilbert/archive/images/dilbert20024447980130.gif', nil, nil, SW_SHOW);
  end;
end;

procedure TfrmMain.pnlCallTipClick(Sender: TObject);
begin
  if (ActiveDoc.Filename = CT_FileName) or (DoOpenFile(CT_FileName, True)) then
    sciEditor.GotoLineEnsureVisible(CT_FuncLine);
end;

procedure TfrmMain.mnuIndentCodeClick(Sender: TObject);
var FLine, SStart, SLen: Integer;
begin
  if (ActiveDoc = nil) then exit;
  // get position
  FLine := sciEditor.GetFirstVisibleLine;
  SStart := sciEditor.SelStart;
  SLen := sciEditor.SelLength;
  // indent
  sciEditor.Lines.Text := IndentCode(sciEditor.Lines.Text, GetEscapeChr(ActiveDoc.HighlighterType), Configuration.Indent_IndentString);
  // restore cursor pos
  sciEditor.GotoLineEnsureVisible(FLine);
  sciEditor.SelStart := SStart;
  sciEditor.SelLength := SLen;
end;

procedure TfrmMain.mnuUnindentCodeClick(Sender: TObject);
var FLine, CurrLine: Integer;
begin
  if (ActiveDoc = nil) then exit;
  // get position
  FLine := sciEditor.GetFirstVisibleLine;
  CurrLine := sciEditor.GetCurrentLineNumber;
  // unindent
  sciEditor.Lines.Text := UnindentCode(sciEditor.Lines.Text);
  // restore cursor pos
  sciEditor.GotoLineEnsureVisible(FLine);
  sciEditor.GotoLine(CurrLine);
end;

procedure TfrmMain.cboInspectorChange(Sender: TObject);
var Val: Integer;
begin
  Val := Integer(cboInspector.Items.Objects[cboInspector.ItemIndex]);
  if (cboInspector.ItemIndex <> -1) and (Val <> 0) then begin
    if (Val < 0) then
      RecreateInspector(sciEditor.PositionFromLine(-(Val +1)))
    else
      RecreateInspector(Val);
  end;
end;

procedure TfrmMain.ppmTasksInitPopup(Sender: TObject; PopupView: TTBView);
begin
  mnuDeleteTask.Enabled := (lvTasks.Selected <> nil);
  mnuModifyTask.Enabled := (lvTasks.Selected <> nil);
end;

procedure TfrmMain.lvRecentFilesDblClick(Sender: TObject);
begin
  if (lvRecentFiles.Selected <> nil) and (FileExists(PChar(lvRecentFiles.Selected.Data))) then
    DoOpenFile(PChar(lvRecentFiles.Selected.Data), True);
end;

procedure TfrmMain.mnuAddTaskClick(Sender: TObject);
begin
  if (ActiveDoc = nil) then exit;

  with frmTaskMgr do begin
    Caption := 'Add Task...';
    cmdAddModify.Caption := 'Add';
    cmdAddModify.ImageIndex := 43;
    cmdAddModify.Enabled := False;
    txtTask.Clear;
    txtNotes.Clear;
    cboCompleteness.ItemIndex := 1;
    txtTargetDate.Clear;
    if (ShowModal = mrOk) then begin
      with lvTasks.Items.Add do begin
        Caption := cboCompleteness.Text;
        SubItems.Add(txtTask.Text);
        SubItems.Add(txtNotes.Text);
        SubItems.Add(txtTargetDate.Text);
      end;
      ActiveDoc.Modified := True;
    end;
  end;
end;

procedure TfrmMain.mnuDeleteTaskClick(Sender: TObject);
begin
  if (ActiveDoc = nil) then exit;
  lvTasks.DeleteSelected;
  ActiveDoc.Modified := True;
end;

procedure TfrmMain.mnuModifyTaskClick(Sender: TObject);
begin
  if (ActiveDoc = nil) or (lvTasks.Selected = nil) then exit;

  with frmTaskMgr do begin
    Caption := 'Modify Task...';
    cmdAddModify.Caption := 'Modify';
    cmdAddModify.ImageIndex := 33;
    cmdAddModify.Enabled := True;
    txtTask.Text := lvTasks.Selected.SubItems[0];
    txtNotes.Text := lvTasks.Selected.SubItems[1];
    cboCompleteness.Text := lvTasks.Selected.Caption;
    txtTargetDate.Text := lvTasks.Selected.SubItems[2];
    if (ShowModal = mrOk) then begin
      with lvTasks.Selected do begin
        Caption := cboCompleteness.Text;
        SubItems[0] := txtTask.Text;
        SubItems[1] := txtNotes.Text;
        SubItems[2] := txtTargetDate.Text;
      end;
      ActiveDoc.Modified := True;
    end;
  end;
end;

procedure TfrmMain.lvTasksDblClick(Sender: TObject);
begin
  if (lvTasks.Items.Count = 0) then
    mnuAddTask.Click
  else
    mnuModifyTask.Click;
end;

procedure TfrmMain.lvRecentFilesInsert(Sender: TObject; Item: TListItem);
begin
  if ((GetWindowlong(lvRecentFiles.Handle, GWL_STYLE) and WS_HSCROLL) <> 0) then begin
    if (lvRecentFiles.Column[0].Width = 200) then
      lvRecentFiles.Column[0].Width := 184;
  end;
end;

procedure TfrmMain.ppmOutputInitPopup(Sender: TObject; PopupView: TTBView);
begin
  mnuCopyItem.Enabled := (lstOutput.ItemIndex <> -1);
end;

procedure TfrmMain.mnuCopyItemClick(Sender: TObject);
begin
  Clipboard.SetTextBuf(PChar(String(lstOutput.Items[lstOutput.ItemIndex])));
end;

procedure TfrmMain.mnuCopyEverythingClick(Sender: TObject);
begin
  Clipboard.SetTextBuf(PChar(String(lstOutput.Items.Text)));
end;

end.

