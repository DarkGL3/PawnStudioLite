object frmMain: TfrmMain
  Left = 219
  Top = 126
  Width = 876
  Height = 612
  Caption = 'Pawn Studio'
  Color = clBtnFace
  Constraints.MinHeight = 320
  Constraints.MinWidth = 240
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  Icon.Data = {
    0000010001002020000001000800A80800001600000028000000200000004000
    0000010008000000000080040000000000000000000000000000000000000000
    0000FFFFFF000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010100000000000000000000000000000000000001010101010100000000
    0101010100000000000000000000000000000000000001010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010100000000000000000000000000000000010101010101010100000000
    0101010100000000000000000000000000000000010101010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010100000000000000000000000000000000000000010101010100000000
    0101010100000000000000000000000000000000000000010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010100000000000000000000000000000001010101010101010100000000
    0101010100000000000000000000000000000001010101010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010100000000000000000000000000000000000000010101010100000000
    0101010100000000000000000000000000000000000000010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010100000000000000000000000000000000000101010101010100000000
    0101010100000000000000000000000000000000000101010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0101010101010101010101010101010101010101010101010101010100000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dckMenu: TSpTBXDock
    Left = 0
    Top = 0
    Width = 868
    Height = 49
    object tbxMenu: TSpTBXToolbar
      Left = 0
      Top = 0
      Caption = 'Menu'
      CloseButton = False
      DefaultDock = dckMenu
      DockPos = -18
      DockRow = 1
      FullSize = True
      Images = ilMain
      MenuBar = True
      ProcessShortCuts = True
      ShrinkMode = tbsmWrap
      TabOrder = 0
      object mnuFile: TSpTBXSubmenuItem
        Caption = '&File'
        object mnuNew: TSpTBXSubmenuItem
          Caption = '&New'
          ImageIndex = 5
          object mnuMore: TSpTBXItem
            Caption = '&More...'
            ImageIndex = 43
            OnClick = mnuMoreClick
          end
        end
        object sepFile1: TSpTBXSeparatorItem
        end
        object mnuOpenFile: TSpTBXItem
          Caption = '&Open File...'
          ImageIndex = 6
          ShortCut = 16463
          OnClick = mnuOpenFileClick
        end
        object sepFile2: TSpTBXSeparatorItem
        end
        object mnuSaveFile: TSpTBXItem
          Caption = '&Save File'
          ImageIndex = 7
          ShortCut = 16467
          OnClick = mnuSaveFileClick
        end
        object mnuSaveFileAs: TSpTBXItem
          Caption = 'Save File &As...'
          ImageIndex = 20
          OnClick = mnuSaveFileAsClick
        end
        object mnuSaveAllFiles: TSpTBXItem
          Caption = 'Save A&ll Files'
          ImageIndex = 21
          OnClick = mnuSaveAllFilesClick
        end
        object sepFile3: TSpTBXSeparatorItem
        end
        object mnuCloseFile: TSpTBXItem
          Caption = '&Close File'
          ImageIndex = 22
          ShortCut = 16430
          OnClick = mnuCloseFileClick
        end
        object mnuCloseAllFiles: TSpTBXItem
          Caption = 'Close All Files'
          ShortCut = 24622
          OnClick = mnuCloseAllFilesClick
        end
        object sepFile4: TSpTBXSeparatorItem
        end
        object mnuExportAsHTML: TSpTBXItem
          Caption = '&Export As HTML'
          ImageIndex = 23
          OnClick = mnuExportAsHTMLClick
        end
        object sepFile5: TSpTBXSeparatorItem
        end
        object mnuPrint: TSpTBXItem
          Caption = '&Print...'
          ImageIndex = 24
          ShortCut = 16464
          OnClick = mnuPrintClick
        end
        object sepFile6: TSpTBXSeparatorItem
        end
        object mnuCloseApp: TSpTBXItem
          Caption = 'E&xit'
          ImageIndex = 25
          ShortCut = 16465
          OnClick = mnuCloseAppClick
        end
      end
      object mnuEdit: TSpTBXSubmenuItem
        Caption = '&Edit'
        object mnuUndo: TSpTBXItem
          Caption = '&Undo'
          ImageIndex = 10
          ShortCut = 16474
          OnClick = mnuUndoClick
        end
        object mnuRedo: TSpTBXItem
          Caption = '&Redo'
          ImageIndex = 11
          ShortCut = 16473
          OnClick = mnuRedoClick
        end
        object sepEdit1: TSpTBXSeparatorItem
        end
        object mnuChangeServer: TSpTBXSubmenuItem
          Caption = 'Change C&urrent Server'
          ImageIndex = 35
          object mnuFTPS: TSpTBXSubmenuItem
            Caption = '&FTP'
            ImageIndex = 2
            object SpTBXItem3: TSpTBXItem
              Caption = '(None)'
              Enabled = False
            end
          end
          object mnuRCONS: TSpTBXSubmenuItem
            Caption = '&RCON'
            ImageIndex = 34
            object SpTBXItem4: TSpTBXItem
              Caption = '(None)'
              Enabled = False
            end
          end
          object mnuSQLS: TSpTBXSubmenuItem
            Caption = 'My&SQL'
            ImageIndex = 67
            object mnuNoServer: TSpTBXItem
              Caption = '(None)'
              Enabled = False
            end
          end
        end
        object sepEdit2: TSpTBXSeparatorItem
        end
        object mnuCut: TSpTBXItem
          Caption = 'Cu&t'
          ImageIndex = 13
          ShortCut = 16472
          OnClick = mnuCutClick
        end
        object mnuCopy: TSpTBXItem
          Caption = '&Copy'
          ImageIndex = 12
          ShortCut = 16451
          OnClick = mnuCopyClick
        end
        object mnuPaste: TSpTBXItem
          Caption = '&Paste'
          ImageIndex = 14
          ShortCut = 16470
          OnClick = mnuPasteClick
        end
        object mnuAppendPaste: TSpTBXItem
          Caption = 'A&ppend Paste'
          ImageIndex = 73
          ShortCut = 24662
          OnClick = mnuAppendPasteClick
        end
        object sepEdit3: TSpTBXSeparatorItem
        end
        object mnuDeleteSelection: TSpTBXItem
          Caption = '&Delete'
          ImageIndex = 76
          OnClick = mnuDeleteSelectionClick
        end
        object sepEdit4: TSpTBXSeparatorItem
        end
        object mnuSelectAll: TSpTBXItem
          Caption = 'Select &All'
          ImageIndex = 40
          ShortCut = 16449
          OnClick = mnuSelectAllClick
        end
      end
      object mnuSearch: TSpTBXSubmenuItem
        Caption = '&Search'
        object mnuSearchFor: TSpTBXItem
          Caption = '&Search For...'
          ImageIndex = 8
          ShortCut = 16454
          OnClick = mnuSearchForClick
        end
        object mnuReplace: TSpTBXItem
          Caption = '&Replace'
          ImageIndex = 33
          ShortCut = 16466
          OnClick = mnuReplaceClick
        end
        object sepSearch1: TSpTBXSeparatorItem
        end
        object mnuSearchNext: TSpTBXItem
          Caption = 'Find &Next'
          Enabled = False
          ImageIndex = 37
          ShortCut = 114
          OnClick = mnuSearchNextClick
        end
        object mnuSearchPrev: TSpTBXItem
          Caption = 'Find &Previous'
          Enabled = False
          ImageIndex = 63
          ShortCut = 8306
          OnClick = mnuSearchPrevClick
        end
        object sepSearch2: TSpTBXSeparatorItem
        end
        object mnuGoToLine: TSpTBXItem
          Caption = '&Go to Line...'
          ImageIndex = 47
          ShortCut = 16455
          OnClick = mnuGoToLineClick
        end
        object sepSearch3: TSpTBXSeparatorItem
        end
        object mnuToggleBookmark: TSpTBXItem
          Caption = '&Toggle Bookmark'
          ImageIndex = 64
          ShortCut = 49218
          OnClick = mnuToggleBookmarkClick
        end
        object mnuNextBookmark: TSpTBXItem
          Caption = 'Ne&xt Bookmark'
          ImageIndex = 65
          ShortCut = 16450
          OnClick = mnuNextBookmarkClick
        end
        object mnuPrevBookmark: TSpTBXItem
          Caption = 'Pr&evious Bookmark'
          ImageIndex = 66
          ShortCut = 24642
          OnClick = mnuPrevBookmarkClick
        end
      end
      object mnuView: TSpTBXSubmenuItem
        Caption = '&View'
        object mnuThemes: TSpTBXSubmenuItem
          Caption = 'Change T&heme'
          ImageIndex = 26
          object mnuThemeList: TSpTBXThemeGroupItem
          end
        end
        object sepView1: TSpTBXSeparatorItem
        end
        object mnuHighlighter: TSpTBXSubmenuItem
          Caption = 'Change &Highlighter'
          ImageIndex = 27
          object mnuPawn: TSpTBXSubmenuItem
            Caption = '&Pawn'
            ImageIndex = 50
            object mnuAMXModX: TSpTBXItem
              Caption = '&AMX Mod X'
              ImageIndex = 48
              OnClick = mnuAMXModXClick
            end
            object mnuSourceMod: TSpTBXItem
              Caption = '&SourceMod'
              ImageIndex = 49
              OnClick = mnuSetHighlighterClick
            end
            object mnuPawnDefault: TSpTBXItem
              Caption = '&Pawn (Default)'
              ImageIndex = 50
              OnClick = mnuPawnDefaultClick
            end
          end
          object sepHighlighter: TSpTBXSeparatorItem
          end
          object mnuBatch: TSpTBXItem
            Caption = 'Batch'
            ImageIndex = 51
            RadioItem = True
            OnClick = mnuSetHighlighterClick
          end
          object mnuCPP: TSpTBXItem
            Caption = 'C/C++'
            ImageIndex = 52
            RadioItem = True
            OnClick = mnuSetHighlighterClick
          end
          object mnuCSS: TSpTBXItem
            Caption = 'CSS'
            ImageIndex = 53
            RadioItem = True
            OnClick = mnuSetHighlighterClick
          end
          object mnuEMail: TSpTBXItem
            Caption = 'E-Mail Message'
            ImageIndex = 54
            RadioItem = True
            OnClick = mnuEMailClick
          end
          object mnuHTML: TSpTBXItem
            Caption = 'HTML'
            ImageIndex = 55
            RadioItem = True
            OnClick = mnuSetHighlighterClick
          end
          object mnuMakefile: TSpTBXItem
            Caption = 'Makefile'
            ImageIndex = 56
            RadioItem = True
            OnClick = mnuSetHighlighterClick
          end
          object mnuMSSQL: TSpTBXItem
            Caption = 'MS SQL'
            ImageIndex = 57
            RadioItem = True
            OnClick = mnuMSSQLClick
          end
          object mnuNone: TSpTBXItem
            Caption = 'None'
            Checked = True
            ImageIndex = 42
            RadioItem = True
            OnClick = mnuNoneClick
          end
          object mnuPHP: TSpTBXItem
            Caption = 'PHP'
            ImageIndex = 58
            RadioItem = True
            OnClick = mnuSetHighlighterClick
          end
          object mnuSQL: TSpTBXItem
            Caption = 'SQL'
            ImageIndex = 57
            RadioItem = True
            OnClick = mnuSetHighlighterClick
          end
          object mnuXML: TSpTBXItem
            Caption = 'XML'
            ImageIndex = 59
            RadioItem = True
            OnClick = mnuSetHighlighterClick
          end
        end
        object mnuCodepage: TSpTBXSubmenuItem
          Caption = 'Set &Codepage'
          ImageIndex = 46
          object mnuCPDefault: TSpTBXItem
            Tag = 1
            Caption = '&Default'
            AutoCheck = True
            Checked = True
            OnClick = mnuSetCodepage
          end
          object mnuCPAnsi: TSpTBXItem
            Caption = '&ANSI'
            AutoCheck = True
            OnClick = mnuSetCodepage
          end
          object mnuCPUTF8: TSpTBXItem
            Tag = 65501
            Caption = '&UTF-8'
            AutoCheck = True
            OnClick = mnuSetCodepage
          end
          object sepCodepage: TSpTBXSeparatorItem
          end
          object mnuCPArabic: TSpTBXItem
            Tag = 178
            Caption = 'Arabic'
            OnClick = mnuSetCodepage
          end
          object mnuCPBaltic: TSpTBXItem
            Tag = 186
            Caption = 'Baltic'
            AutoCheck = True
            OnClick = mnuSetCodepage
          end
          object mnuCPChineseBig5: TSpTBXItem
            Tag = 136
            Caption = 'Chinese Big 5'
            AutoCheck = True
            OnClick = mnuSetCodepage
          end
          object mnuCPCyrillic: TSpTBXItem
            Tag = 1251
            Caption = 'Cyrillic'
            OnClick = mnuSetCodepage
          end
          object mnuCPEastEurope: TSpTBXItem
            Tag = 238
            Caption = 'East Europe'
            AutoCheck = True
            OnClick = mnuSetCodepage
          end
          object mnuCPGB2312: TSpTBXItem
            Tag = 134
            Caption = 'GB 2312'
            AutoCheck = True
            OnClick = mnuSetCodepage
          end
          object mnuCPGreek: TSpTBXItem
            Tag = 161
            Caption = 'Greek'
            AutoCheck = True
            OnClick = mnuSetCodepage
          end
          object mnuCPHangul: TSpTBXItem
            Tag = 129
            Caption = 'Hangul'
            AutoCheck = True
            OnClick = mnuSetCodepage
          end
          object mnuCPJohab: TSpTBXItem
            Tag = 130
            Caption = 'Johab'
            AutoCheck = True
            OnClick = mnuSetCodepage
          end
          object mnuCPMac: TSpTBXItem
            Tag = 77
            Caption = 'Mac'
            AutoCheck = True
            OnClick = mnuSetCodepage
          end
          object mnuCPOEM: TSpTBXItem
            Tag = 255
            Caption = 'OEM'
            OnClick = mnuSetCodepage
          end
          object mnuCPRussian: TSpTBXItem
            Tag = 204
            Caption = 'Russian'
            OnClick = mnuSetCodepage
          end
          object mnuCPShiftJIS: TSpTBXItem
            Tag = 128
            Caption = 'Shift JIS'
            AutoCheck = True
            OnClick = mnuSetCodepage
          end
          object mnuCPSymbol: TSpTBXItem
            Tag = 2
            Caption = 'Symbol'
            AutoCheck = True
            OnClick = mnuSetCodepage
          end
          object mnuCPThai: TSpTBXItem
            Tag = 222
            Caption = 'Thai'
            OnClick = mnuSetCodepage
          end
          object mnuCPTurkish: TSpTBXItem
            Tag = 162
            Caption = 'Turkish'
            AutoCheck = True
            OnClick = mnuSetCodepage
          end
          object mnuCPVietnamese: TSpTBXItem
            Tag = 163
            Caption = 'Vietnamese'
            OnClick = mnuSetCodepage
          end
          object mnuCP8859_15: TSpTBXItem
            Tag = 1000
            Caption = '8859-15'
            OnClick = mnuSetCodepage
          end
        end
        object sepView2: TSpTBXSeparatorItem
        end
        object mnuCodeExplorer: TSpTBXSubmenuItem
          Caption = 'Code E&xplorer'
          ImageIndex = 19
          object mnuHideEmptyGroups: TSpTBXItem
            Caption = 'Hide Empty Groups'
            AutoCheck = True
            OnClick = mnuHideEmptyGroupsClick
          end
          object mnuSortEntries: TSpTBXItem
            Caption = 'Sort Entries'
            AutoCheck = True
            OnClick = mnuSortEntriesClick
          end
          object sepCodeExplorer: TSpTBXSeparatorItem
          end
          object mnuRecreateItems: TSpTBXItem
            Caption = 'Recreate Items'
            ImageIndex = 33
            OnClick = mnuRecreateItemsClick
          end
        end
        object mnuCodeInspector: TSpTBXSubmenuItem
          Caption = 'Code I&nspector'
          ImageIndex = 27
          Visible = False
        end
        object sepView3: TSpTBXSeparatorItem
        end
        object mnuClearMarkers: TSpTBXItem
          Caption = 'Clear Markers'
          OnClick = mnuClearMarkersClick
        end
        object sepView4: TSpTBXSeparatorItem
        end
        object mnuShowStartPage: TSpTBXItem
          Caption = 'Show &Start Page'
          Checked = True
          OnClick = mnuShowStartPageClick
        end
        object mnuShowToolbar: TSpTBXItem
          Caption = 'Show &Toolbar'
          AutoCheck = True
          Checked = True
          OnClick = mnuShowToolbarClick
        end
        object mnuShowCodeExplorer: TSpTBXItem
          Caption = 'Show Code &Explorer'
          AutoCheck = True
          Checked = True
          OnClick = mnuShowCodeExplorerClick
        end
        object mnuShowCodeInspector: TSpTBXItem
          Caption = 'Show Code &Inspector'
          AutoCheck = True
          Checked = True
          OnClick = mnuShowCodeInspectorClick
        end
      end
      object mnuProject: TSpTBXSubmenuItem
        Caption = '&Project'
        Visible = False
        object mnuNewProject: TSpTBXItem
          Caption = '&New Project'
          ImageIndex = 60
          ShortCut = 24654
        end
        object sepProject1: TSpTBXSeparatorItem
        end
        object mnuOpenProject: TSpTBXItem
          Caption = '&Open Project'
          ImageIndex = 61
          ShortCut = 24655
        end
        object sepProject2: TSpTBXSeparatorItem
        end
        object mnuSaveProject: TSpTBXItem
          Caption = '&Save Project'
          Enabled = False
          ImageIndex = 7
          ShortCut = 24659
        end
        object mnuSaveProjectAs: TSpTBXItem
          Caption = 'Save Project &As...'
          Enabled = False
          ImageIndex = 20
        end
        object sepProject3: TSpTBXSeparatorItem
        end
        object mnuAddToProject: TSpTBXItem
          Caption = 'Add &File To Project'
          Enabled = False
          ImageIndex = 43
        end
        object mnuRemoveFromProject: TSpTBXItem
          Caption = '&Remove Files From Project'
          Enabled = False
          ImageIndex = 62
        end
        object sepProject4: TSpTBXSeparatorItem
        end
        object mnuCompileProjectFiles: TSpTBXItem
          Caption = '&Compile Project Files'
          Enabled = False
          ImageIndex = 9
          ShortCut = 24696
        end
      end
      object mnuCompile: TSpTBXSubmenuItem
        Caption = '&Compile'
        object mnuDoCompile: TSpTBXItem
          Caption = '&Compile'
          ImageIndex = 9
          ShortCut = 120
          OnClick = mnuDoCompileClick
          CustomWidth = 260
        end
        object mnuCompileAndStartGame: TSpTBXItem
          Caption = 'Compile and &Start Game'
          ImageIndex = 32
          OnClick = mnuCompileAndStartGameClick
        end
        object mnsCompile1: TSpTBXSeparatorItem
        end
        object mnuCompileAndUpload: TSpTBXItem
          Caption = 'Compile and &Upload'
          Enabled = False
          ImageIndex = 30
          ShortCut = 16504
          OnClick = mnuCompileAndUploadClick
        end
        object mnuCompileUploadAndConnect: TSpTBXItem
          Caption = 'C&ompile, Upload and Start Game'
          Enabled = False
          ImageIndex = 31
          OnClick = mnuCompileUploadAndConnectClick
        end
        object mnsCompile2: TSpTBXSeparatorItem
        end
        object mnuBatchCompile: TSpTBXItem
          Caption = '&Batch-Compile...'
          ImageIndex = 0
          Images = ilMain
          ShortCut = 24696
          OnClick = mnuBatchCompileClick
        end
      end
      object mnuExtras: TSpTBXSubmenuItem
        Caption = '&Extras'
        object mnuHeaderTools: TSpTBXSubmenuItem
          Caption = '&Code Functions'
          ImageIndex = 27
          Images = ilMain
          Visible = False
          object mnuNewInclude: TSpTBXItem
            Caption = 'Include &Header'
            ImageIndex = 43
            Images = ilMain
            ShortCut = 16433
          end
          object mnuNewDefinition: TSpTBXItem
            Caption = 'Make &Definition'
            ImageIndex = 41
            Images = ilMain
            ShortCut = 16434
          end
        end
        object sepExtras1: TSpTBXSeparatorItem
          Visible = False
        end
        object mnuIndentCode: TSpTBXItem
          Caption = '&Indent Code'
          ImageIndex = 44
          ShortCut = 16457
          OnClick = mnuIndentCodeClick
        end
        object mnuUnindentCode: TSpTBXItem
          Caption = '&Unindent Code'
          ImageIndex = 45
          ShortCut = 24649
          OnClick = mnuUnindentCodeClick
        end
        object sepExtras2: TSpTBXSeparatorItem
        end
        object mnuSocketTerminal: TSpTBXItem
          Caption = '&Socket Terminal'
          ImageIndex = 36
          Visible = False
        end
        object sepExtras3: TSpTBXSeparatorItem
          Visible = False
        end
        object mnuRegisterIn: TSpTBXSubmenuItem
          Caption = '&Register Plugin...'
          ImageIndex = 1
          Visible = False
          object mnuRegisterLocal: TSpTBXItem
            Caption = 'in &Local Plugins.ini'
            ImageIndex = 74
          end
          object mnuRegisterRemote: TSpTBXItem
            Caption = 'on &Remote Server'
            ImageIndex = 75
          end
        end
        object sepExtras4: TSpTBXSeparatorItem
          Visible = False
        end
        object mnuPreferences: TSpTBXItem
          Caption = '&Preferences'
          ImageIndex = 38
          ShortCut = 123
          OnClick = mnuPreferencesClick
        end
      end
      object mnuGenerators: TSpTBXSubmenuItem
        Caption = '&Generators'
        Visible = False
        object mnuSimpleMenuOld: TSpTBXItem
          Caption = 'Simple &Menu (old style)'
          ImageIndex = 68
        end
        object mnuPlayerMenuOld: TSpTBXItem
          Caption = 'Player M&enu (old style)'
          ImageIndex = 69
        end
        object sepGenerators1: TSpTBXSeparatorItem
        end
        object mnuSimpleMenu: TSpTBXItem
          Caption = '&Simple Menu'
          ImageIndex = 68
        end
        object mnuPlayerMenu: TSpTBXItem
          Caption = '&Player Menu'
          ImageIndex = 69
        end
        object sepGenerators2: TSpTBXSeparatorItem
        end
        object mnuHudmessageGenerator: TSpTBXItem
          Caption = '&Hudmessage Generator'
          ImageIndex = 70
        end
        object mnuMOTDGenerator: TSpTBXItem
          Caption = 'MOTD &Generator'
          ImageIndex = 55
        end
        object sepGenerators3: TSpTBXSeparatorItem
        end
        object mnuConnectionGenerator: TSpTBXItem
          Caption = '&Connection Generator'
          ImageIndex = 35
        end
        object mnuSQLConnectionGenerator: TSpTBXItem
          Caption = 'S&QL Connection Generator (uses SQLx)'
          ImageIndex = 36
        end
      end
      object mnuHelp: TSpTBXSubmenuItem
        Caption = '&Help'
        object mnuHalfLife1: TSpTBXSubmenuItem
          Caption = '&Half-Life 1'
          ImageIndex = 71
          Visible = False
          object mnuEventList: TSpTBXItem
            Caption = '&Event List'
            ImageIndex = 59
          end
          object mnuMessages: TSpTBXItem
            Caption = '&Messages'
            ImageIndex = 54
          end
        end
        object mnuHalfLife2: TSpTBXSubmenuItem
          Caption = 'H&alf-Life 2'
          ImageIndex = 72
          Visible = False
        end
        object mnuBaconize: TSpTBXItem
          Caption = 'Baconize'
          ImageIndex = 81
          OnClick = mnuBaconizeClick
        end
        object mnsHelp: TSpTBXSeparatorItem
        end
        object mnuAbout: TSpTBXItem
          Caption = 'Ab&out...'
          ImageIndex = 29
          OnClick = mnuAboutClick
        end
      end
    end
    object tbxFile: TSpTBXToolbar
      Left = 0
      Top = 23
      Caption = 'File Tools'
      DefaultDock = dckMenu
      DockPos = -6
      DockRow = 1
      Images = ilMain
      TabOrder = 1
      object tbiNew: TSpTBXItem
        Caption = 'New...'
        Hint = 'New...'
        ImageIndex = 5
        Options = [tboToolbarStyle]
        ShortCut = 16462
        OnClick = tbiNewClick
      end
      object tbiOpen: TSpTBXItem
        Caption = 'Open File..'
        Hint = 'Open File..'
        ImageIndex = 6
        OnClick = tbiOpenClick
      end
      object tbiSave: TSpTBXItem
        Caption = 'Save File'
        Hint = 'Save File'
        ImageIndex = 7
        OnClick = tbiSaveClick
      end
      object tbsFile1: TSpTBXSeparatorItem
      end
      object tbiNewSearch: TSpTBXItem
        Caption = 'Search For...'
        Hint = 'Search For...'
        ImageIndex = 8
        OnClick = tbiNewSearchClick
      end
      object mnuFindNext: TSpTBXItem
        Caption = 'Find Next'
        Hint = 'Find Next'
        Enabled = False
        ImageIndex = 37
        OnClick = mnuFindNextClick
      end
      object tbsFile2: TSpTBXSeparatorItem
      end
      object tbiCompile: TSpTBXItem
        Caption = 'Compile'
        Hint = 'Compile'
        ImageIndex = 9
        OnClick = tbiCompileClick
      end
    end
    object tbxEdit: TSpTBXToolbar
      Left = 160
      Top = 23
      Caption = 'Edit Tools'
      DefaultDock = dckMenu
      DockPos = 131
      DockRow = 1
      Images = ilMain
      TabOrder = 2
      object tbiUndo: TSpTBXItem
        Caption = 'Undo'
        Hint = 'Undo'
        ImageIndex = 10
        OnClick = tbiUndoClick
      end
      object tbiRedo: TSpTBXItem
        Caption = 'Redo'
        Hint = 'Redo'
        ImageIndex = 11
        OnClick = tbiRedoClick
      end
      object tbsEdit1: TSpTBXSeparatorItem
      end
      object tbiCopy: TSpTBXItem
        Caption = 'Copy'
        Hint = 'Copy'
        ImageIndex = 12
        OnClick = tbiCopyClick
      end
      object tbiCut: TSpTBXItem
        Caption = 'Cut'
        Hint = 'Cut'
        ImageIndex = 13
        OnClick = tbiCutClick
      end
      object tbiPaste: TSpTBXItem
        Caption = 'Paste'
        Hint = 'Paste'
        ImageIndex = 14
        OnClick = tbiPasteClick
      end
    end
    object tbxSearch: TSpTBXToolbar
      Left = 291
      Top = 23
      Caption = 'Search'
      DefaultDock = dckMenu
      DockPos = 289
      DockRow = 1
      Images = ilMain
      TabOrder = 3
      object tbiSearchLabel: TSpTBXLabelItem
        ImageIndex = 8
      end
      object tbiSearchEdit: TSpTBXEditItem
        EditWidth = 110
        OnAcceptText = tbiSearchEditAcceptText
      end
    end
    object tbxCalculator: TSpTBXToolbar
      Left = 434
      Top = 23
      Caption = 'Search'
      DefaultDock = dckMenu
      DockPos = 384
      DockRow = 1
      Images = ilMain
      TabOrder = 4
      object tbiCalculatorLabel: TSpTBXLabelItem
        ImageIndex = 16
      end
      object tbiCalculatorEdit: TSpTBXEditItem
        EditWidth = 125
        OnAcceptText = tbiCalculatorEditAcceptText
        OnBeginEdit = tbiCalculatorEditBeginEdit
      end
    end
  end
  object sbStatus: TSpTBXStatusBar
    Left = 0
    Top = 562
    Width = 868
    Height = 23
    object mnuStatus: TSpTBXLabelItem
      Caption = 'Ready'
    end
    object mnuTBSpacer: TSpTBXRightAlignSpacerItem
      CustomWidth = 730
    end
    object sepSB1: TSpTBXSeparatorItem
    end
    object mnuCurrProject: TSpTBXLabelItem
      Caption = '(No Project)'
      Visible = False
      Alignment = taCenter
    end
    object sepSB2: TSpTBXSeparatorItem
    end
    object mnuModified: TSpTBXLabelItem
      Visible = False
      Alignment = taCenter
      CustomWidth = 46
    end
    object sepSB3: TSpTBXSeparatorItem
    end
    object mnuCurPos: TSpTBXLabelItem
      Caption = 'Ln 0 Ch 0'
      Alignment = taCenter
      CustomWidth = 75
    end
  end
  object dckTools: TSpTBXDock
    Left = 0
    Top = 408
    Width = 868
    Height = 154
    FixAlign = True
    Position = dpBottom
    UseParentBackground = True
    object pnlToolbar: TSpTBXDockablePanel
      Left = 0
      Top = 0
      Caption = 'Toolbar'
      DefaultDock = dckTools
      DockedHeight = 150
      DockPos = 0
      TabOrder = 0
      OnClose = pnlToolbarClose
      OnRecreated = pnlToolbarRecreated
      OnResize = pnlToolbarResize
      Options.ButtonBorders = False
      object tbxToolbar: TSpTBXTabControl
        Left = 0
        Top = 26
        Width = 864
        Height = 124
        Align = alClient
        Color = clBtnFace
        ActiveTabIndex = 0
        Images = ilMain
        TabPosition = ttpBottom
        ThemeType = tttTBX
        OnActiveTabChange = tbxToolbarActiveTabChange
        HiddenItems = <
          item
            Name = 'tbxMySQL'
            Left = 256
            Width = 96
            Height = 19
          end
          item
            Name = 'tbxRCON'
            Left = 164
            Width = 92
            Height = 19
          end
          item
            Name = 'tbxMySQL'
            Left = 256
            Width = 96
            Height = 19
          end
          item
            Name = 'tbxRCON'
            Left = 164
            Width = 92
            Height = 19
          end>
        object tbxOutput: TSpTBXTabItem
          Caption = 'Output'
          Checked = True
          ImageIndex = 0
          TabPosition = ttpBottom
          ThemeType = tttTBX
        end
        object tbxTasks: TSpTBXTabItem
          Caption = 'Tasks'
          ImageIndex = 1
          TabPosition = ttpBottom
          ThemeType = tttTBX
        end
        object tbxFTPExplorer: TSpTBXTabItem
          Caption = 'FTP Explorer'
          Enabled = False
          ImageIndex = 2
          TabPosition = ttpBottom
          ThemeType = tttTBX
        end
        object tbxRCON: TSpTBXTabItem
          Caption = 'Remote Console'
          Enabled = False
          ImageIndex = 34
          TabPosition = ttpBottom
          ThemeType = tttTBX
        end
        object tbxMySQL: TSpTBXTabItem
          Caption = 'MySQL Database'
          Enabled = False
          ImageIndex = 67
          TabPosition = ttpBottom
          ThemeType = tttTBX
        end
        object tbxFileHistory: TSpTBXTabItem
          Caption = 'File History'
          ImageIndex = 4
          Visible = False
          TabPosition = ttpBottom
          ThemeType = tttTBX
        end
        object tsMySQL: TSpTBXTabSheet
          Left = 0
          Top = 0
          Width = 864
          Height = 98
          Caption = 'File History'
          ImageIndex = 4
          TabVisible = False
          TabItem = 'tbxFileHistory'
        end
        object tsRCON: TSpTBXTabSheet
          Left = 0
          Top = 0
          Width = 864
          Height = 98
          Caption = 'Remote Console'
          ImageIndex = 34
          TabItem = 'tbxRCON'
          object txtRCONCommand: TRichEdit
            Left = 2
            Top = 78
            Width = 860
            Height = 20
            Align = alBottom
            TabOrder = 0
            WantReturns = False
            OnKeyPress = txtRCONCommandKeyPress
          end
          object txtRCONLog: TMemo
            Left = 2
            Top = 2
            Width = 860
            Height = 76
            Align = alClient
            Color = clGradientInactiveCaption
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 1
            WantTabs = True
            OnKeyDown = txtRCONLogKeyDown
          end
        end
        object tsSQLDatabase: TSpTBXTabSheet
          Left = 0
          Top = 0
          Width = 864
          Height = 98
          Caption = 'MySQL Database'
          ImageIndex = 67
          TabItem = 'tbxMySQL'
          object sgSQLResult: TStringGrid
            Left = 2
            Top = 2
            Width = 760
            Height = 76
            Align = alClient
            ColCount = 1
            DefaultRowHeight = 16
            FixedCols = 0
            RowCount = 1
            FixedRows = 0
            Options = [goVertLine, goHorzLine, goRangeSelect, goColSizing]
            TabOrder = 0
          end
          object rtfSQLQuery: TRichEdit
            Left = 2
            Top = 78
            Width = 860
            Height = 20
            Align = alBottom
            TabOrder = 1
            WantReturns = False
            OnKeyPress = rtfSQLQueryKeyPress
          end
          object itpSQLCommands: TJvItemsPanel
            Left = 762
            Top = 2
            Width = 100
            Height = 76
            AutoGrow = False
            AutoSize = True
            Items.Strings = (
              'List Databases'
              'Change DB'
              'Create DB'
              'List Tables'
              'Show Doc'
              'Redo Query')
            ItemHeight = 12
            HotTrack = False
            OnItemClick = itpSQLCommandsItemClick
            Align = alRight
            TabOrder = 2
          end
        end
        object tsFTP: TSpTBXTabSheet
          Left = 0
          Top = 0
          Width = 864
          Height = 98
          Caption = 'FTP Explorer'
          ImageIndex = 2
          DesignSize = (
            864
            98)
          TabItem = 'tbxFTPExplorer'
          object pnlLocalFiles: TSpTBXPanel
            Left = 2
            Top = 2
            Width = 411
            Height = 76
            Caption = 'pnlLocalFiles'
            Align = alLeft
            Color = clNone
            ParentColor = False
            TabOrder = 0
            Borders = False
            DesignSize = (
              411
              76)
            object pnlLocal: TSpTBXPanel
              Left = 2
              Top = 22
              Width = 407
              Height = 50
              Caption = 'pnlLocal'
              Anchors = [akLeft, akTop, akRight, akBottom]
              TabOrder = 0
              BorderType = pbrSunken
              object shlLocal: TShellListView
                Left = 2
                Top = 2
                Width = 403
                Height = 46
                AutoRefresh = True
                ObjectTypes = [otFolders, otNonFolders]
                Root = 'rfDesktop'
                ShellComboBox = cboRoot
                Sorted = True
                Align = alClient
                BorderStyle = bsNone
                OnDblClick = shlLocalDblClick
                DragMode = dmAutomatic
                ReadOnly = False
                HideSelection = False
                OnDragDrop = shlLocalDragDrop
                OnDragOver = shlLocalDragOver
                TabOrder = 0
                ViewStyle = vsReport
              end
            end
            object cboRoot: TShellComboBox
              Left = 0
              Top = 0
              Width = 411
              Height = 22
              Root = 'rfDesktop'
              ShellListView = shlLocal
              UseShellImages = True
              Anchors = [akLeft, akTop, akRight]
              DropDownCount = 8
              TabOrder = 1
            end
          end
          object splFTP1: TSpTBXSplitter
            Left = 413
            Top = 2
            Height = 76
            Cursor = crSizeWE
            Caption = 'splFTP1'
            OnMouseDown = splFTP1MouseDown
            ResizeStyle = rsPattern
          end
          object pnlQuickCommands: TSpTBXPanel
            Left = 418
            Top = 2
            Width = 28
            Height = 76
            Caption = 'pnlQuickCommands'
            Align = alLeft
            Color = clNone
            ParentColor = False
            TabOrder = 2
            OnConstrainedResize = pnlQuickCommandsConstrainedResize
            Borders = False
            TBXStyleBackground = True
            DesignSize = (
              28
              76)
            object cmdUpload: TSpTBXButton
              Left = 2
              Top = 114
              Width = 24
              Height = 24
              Hint = 'Upload'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = cmdUploadClick
              Images = ilMain
              ImageIndex = 78
              LinkFont.Charset = DEFAULT_CHARSET
              LinkFont.Color = clBlue
              LinkFont.Height = -11
              LinkFont.Name = 'MS Sans Serif'
              LinkFont.Style = [fsUnderline]
              ThemeType = thtTBX
            end
            object cmdDownload: TSpTBXButton
              Left = 2
              Top = 86
              Width = 24
              Height = 24
              Hint = 'Download'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = cmdDownloadClick
              Images = ilMain
              ImageIndex = 77
              LinkFont.Charset = DEFAULT_CHARSET
              LinkFont.Color = clBlue
              LinkFont.Height = -11
              LinkFont.Name = 'MS Sans Serif'
              LinkFont.Style = [fsUnderline]
              ThemeType = thtTBX
            end
            object cmdCancelFTP: TSpTBXButton
              Left = 2
              Top = 57
              Width = 24
              Height = 24
              Hint = 'Cancel'
              Anchors = []
              Enabled = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = cmdCancelFTPClick
              Images = ilMain
              ImageIndex = 76
              LinkFont.Charset = DEFAULT_CHARSET
              LinkFont.Color = clBlue
              LinkFont.Height = -11
              LinkFont.Name = 'MS Sans Serif'
              LinkFont.Style = [fsUnderline]
              ThemeType = thtTBX
            end
            object cmdCompileAndUpload: TSpTBXButton
              Left = 2
              Top = 4
              Width = 24
              Height = 24
              Hint = 'Compile and Upload'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = cmdCompileAndUploadClick
              Images = ilMain
              ImageIndex = 56
              LinkFont.Charset = DEFAULT_CHARSET
              LinkFont.Color = clBlue
              LinkFont.Height = -11
              LinkFont.Name = 'MS Sans Serif'
              LinkFont.Style = [fsUnderline]
              ThemeType = thtTBX
            end
            object cmdUploadSource: TSpTBXButton
              Left = 2
              Top = 32
              Width = 24
              Height = 24
              Hint = 'Upload Source Code'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = cmdUploadSourceClick
              Images = ilMain
              ImageIndex = 18
              LinkFont.Charset = DEFAULT_CHARSET
              LinkFont.Color = clBlue
              LinkFont.Height = -11
              LinkFont.Name = 'MS Sans Serif'
              LinkFont.Style = [fsUnderline]
              ThemeType = thtTBX
            end
          end
          object splFTP2: TSpTBXSplitter
            Left = 446
            Top = 2
            Height = 76
            Cursor = crSizeWE
            Caption = 'splFTP2'
            OnMouseDown = splFTP2MouseDown
            ResizeStyle = rsPattern
          end
          object pnlRemoteFiles: TSpTBXPanel
            Left = 451
            Top = 2
            Width = 411
            Height = 76
            Align = alClient
            Color = clNone
            ParentColor = False
            TabOrder = 4
            Borders = False
            DesignSize = (
              411
              76)
            object pnlFTP: TSpTBXPanel
              Left = 2
              Top = 22
              Width = 405
              Height = 50
              Caption = 'pnlFTP'
              Anchors = [akLeft, akTop, akRight, akBottom]
              TabOrder = 0
              BorderType = pbrSunken
              object lvFTP: TJvListView
                Left = 2
                Top = 2
                Width = 401
                Height = 46
                Align = alClient
                BorderStyle = bsNone
                Columns = <
                  item
                    Caption = 'Name'
                    Width = 200
                  end
                  item
                    Caption = 'Size'
                    Width = 70
                  end
                  item
                    Caption = 'Date'
                    Width = 150
                  end
                  item
                    Caption = 'Rights'
                    Width = 100
                  end>
                DragMode = dmAutomatic
                SmallImages = ilFileExtensions
                TabOrder = 0
                ViewStyle = vsReport
                OnDblClick = lvFTPDblClick
                OnEdited = lvFTPEdited
                OnEditing = lvFTPEditing
                OnDragDrop = lvFTPDragDrop
                OnDragOver = lvFTPDragOver
                OnKeyDown = lvFTPKeyDown
                ColumnsOrder = '0=200,1=70,2=150,3=100'
                Groups = <>
                ExtendedColumns = <
                  item
                  end
                  item
                  end
                  item
                  end
                  item
                  end>
              end
            end
            object cboRemote: TComboBoxEx
              Left = 0
              Top = 0
              Width = 409
              Height = 22
              ItemsEx = <>
              Anchors = [akLeft, akTop, akRight]
              ItemHeight = 16
              TabOrder = 1
              OnExit = cboRemoteExit
              OnKeyDown = cboRemoteKeyDown
              Images = ilCodeExplorer
              DropDownCount = 8
            end
          end
          object lblFTPStatus: TSpTBXLabel
            Left = 2
            Top = 78
            Width = 860
            Height = 20
            Caption = 'Current Server: (None)'
            Align = alBottom
            AutoSize = False
            Enabled = False
            LinkFont.Charset = DEFAULT_CHARSET
            LinkFont.Color = clBlue
            LinkFont.Height = -11
            LinkFont.Name = 'MS Sans Serif'
            LinkFont.Style = [fsUnderline]
          end
          object pbFTP: TSpTBXProgressBar
            Left = 32767
            Top = 79
            Width = 150
            Height = 17
            Caption = '0%'
            Anchors = [akRight, akBottom]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
            CaptionGlow = gldNone
            ThemeType = thtTBX
          end
        end
        object tsTasks: TSpTBXTabSheet
          Left = 0
          Top = 0
          Width = 864
          Height = 98
          Caption = 'Tasks'
          ImageIndex = 1
          TabItem = 'tbxTasks'
          object lvTasks: TJvListView
            Left = 2
            Top = 2
            Width = 860
            Height = 96
            Align = alClient
            Columns = <
              item
                Caption = 'Completeness'
                Width = 93
              end
              item
                AutoSize = True
                Caption = 'Task'
              end
              item
                Caption = 'Notes'
                Width = 300
              end
              item
                Caption = 'Target Date'
                Width = 113
              end>
            ReadOnly = True
            RowSelect = True
            PopupMenu = ppmTasks
            TabOrder = 0
            ViewStyle = vsReport
            OnDblClick = lvTasksDblClick
            ColumnsOrder = '0=93,1=350,2=300,3=113'
            Groups = <>
            ExtendedColumns = <
              item
              end
              item
              end
              item
              end
              item
              end>
          end
        end
        object tsOutput: TSpTBXTabSheet
          Left = 0
          Top = 0
          Width = 864
          Height = 98
          Caption = 'Output'
          ImageIndex = 0
          TabItem = 'tbxOutput'
          object lstOutput: TSpTBXListBox
            Left = 2
            Top = 2
            Width = 860
            Height = 96
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            PopupMenu = ppmOutput
            TabOrder = 0
            OnDblClick = lstOutputDblClick
            ThemeType = thtWindows
          end
        end
      end
    end
  end
  object tbxTabs: TSpTBXTabSet
    Left = 0
    Top = 49
    Width = 868
    Height = 359
    Hint = ' '
    Align = alClient
    Color = clBtnFace
    ActiveTabIndex = 0
    Images = ilTBX
    TabDragReorder = True
    ThemeType = tttTBX
    OnActiveTabChange = tbxTabsActiveTabChange
    OnActiveTabChanging = tbxTabsActiveTabChanging
    OnActiveTabReorder = tbxTabsActiveTabReorder
    HiddenItems = <>
    object tbxStartPage: TSpTBXTabItem
      Caption = 'Start Page'
      Checked = True
      ImageIndex = 17
      Images = ilMain
      ThemeType = tttTBX
    end
    object mnuTBSeperator: TSpTBXRightAlignSpacerItem
      CustomWidth = 699
    end
    object mnuTabs: TSpTBXSubmenuItem
      Options = [tboDropdownArrow]
      object mnuStartPage: TSpTBXItem
        Caption = 'Start Page'
        ImageIndex = 17
        Images = ilMain
        OnClick = mnuTabsClick
      end
    end
    object mnuScrollLeft: TSpTBXItem
      ImageIndex = 1
      OnClick = mnuScrollLeftClick
    end
    object mnuScrollRight: TSpTBXItem
      ImageIndex = 2
      OnClick = mnuScrollRightClick
    end
    object mnuCloseTab: TSpTBXItem
      Enabled = False
      ImageIndex = 0
      OnClick = mnuCloseTabClick
    end
    object jplPages: TJvPageList
      Left = 0
      Top = 26
      Width = 658
      Height = 333
      ActivePage = jspStartPage
      PropagateEnable = False
      Align = alClient
      object jspStartPage: TJvStandardPage
        Left = 0
        Top = 0
        Width = 658
        Height = 333
        Color = 14803425
        object pnlRealBG: TSpTBXPanel
          Left = 0
          Top = 0
          Width = 658
          Height = 333
          Align = alClient
          Color = clNone
          ParentColor = False
          TabOrder = 0
          Borders = False
          TBXStyleBackground = True
          OnDrawBackground = pnlRealBGDrawBackground
          DesignSize = (
            658
            333)
          object imgBanner: TJvImage
            Left = 10
            Top = 8
            Width = 480
            Height = 75
            Picture.Data = {
              0B544A76474946496D6167656D160000474946383961E0014B00F70000F4F3F0
              000000F59E1D1478D300000101030602091100020400010201080F020B140310
              1D010509010407072C4E06264305213A052039041A2E04192D020D171375CD13
              73CB126FC2126EC11168B81168B61063AE1062AC0F5DA30F5CA20F5BA10E5697
              0D508D0C4A830C49810B45790B44770A3F6E0A3D6B0938620937610832590831
              57072C4D072B4C051F361478D21477D11476D01475CE1372C91371C71370C512
              6DC0126DBF126CBE126BBD126ABA1269B91167B51166B31165B21165B11163AF
              1060AA105FA6105DA40F5A9F0F599D0F589A0E55950E54930E52910D4E890D4D
              880D4C860C487F0C477C0C467B0B43750B40720A3C6A0A3A6709365F09355E09
              355D083054082F53072A4A07294906244006243F06233E04182A041729020C15
              0F57990E518F0D4C850D4B840A396509345C09335A082D4F07284606223C051D
              3303111E051C31051B30041627020B13041525030F1A031524031423020E1801
              070C031321051E3404182903121F03101B020A1101060A01080D000203191918
              5B5B595A5A58313130ABABA87C7C7A7A7A786D6D6B6A6A683D3D3C3C3C3B3939
              38E9E9E6D5D5D2D4D4D1D3D3D0C0C0BD98989694949292929090908E81817F54
              545353535251515050504F4F4F4E47474645454444444343434240403F595958
              585857575756565655CCCBC8BCBBB8F2F1EEF1F0EDF0EFECEEEDEAEDECE9ECEB
              E8E8E7E4E7E6E3E6E5E2E5E4E1E4E3E0E3E2DFE0DFDCDEDDDADDDCD9DCDBD8D3
              D2CFD2D1CED0CFCC908F8D8F8E8C8C8B898B8A88BBBAB8B9B8B6B8B7B5B6B5B3
              B2B1AFA4A3A1A2A19F9C9B999B9A98EBEAE8EAE9E7DBDAD8DAD9D7D9D8D6D8D7
              D5D7D6D4CAC9C7C9C8C6C7C6C4C5C4C2C3C2C0100B02B47415A36913935F1183
              540FE5931BD48919C47E17724A0E623F0C52350A412A083120062115044D4C4B
              4C4B4A4A494864636263626162616061605F605F5E5F5E5D5C5B5A7A79787978
              7774737271706F888786878685212020201F1F34333349484828282826262623
              23231616161515151313130F0F0F0C0C0C0B0B0B050505030303FFFFFF21F904
              010000FF002C00000000E0014B000008FF0003081C48B0A0C18308132A5CC8B0
              A1C38710234A9C48B1A2C58B18336ADCC8B1A3478800428A1C49B2A4C9932853
              AA5CC9B2A5CB973063CA9C49B3A6CD9B3873EADCC9B3274B81252581AA54CAA7
              D1A348932A5DCAB4A9D3A7507B021D298960BD73C26045DDCAB5ABD7AF60C38A
              7D3A55E4A5006350782108EEDDB3B170E3CA9D4BB7AE5D986543020A9063C000
              1F25B6301828EF10A15377132B5ECCB8B1E3977901C40B90C1EF0BBF1792A858
              30F05E265D8D1E8B1E4DBAB4E9A591E105D0E0B7F580CB328444C14370113B5F
              A773EBDECD7B77EAD5AE835F1E7043498B0403E10522A6B5B7F3E7D0A377FDCD
              3AB8F5D7032A7C284387A0A74ACAA48BFF1F4FBEBC4CEAD7D3631FA0A1C99603
              0343999F4FBFFE78F4EAF35FB670444B9F00E8D827E080048A865F7E08BE5043
              140504B04A49AA1428E184146E7520820802B14700E590844E009B60B2CB3115
              9668E289375D88A17A33A8814000A888A44A000D0AD4CF27EABC85E28E3CF638
              928A2B5E174314FFB122122E01B07144081010A49C303E4629A5844006191C0C
              41C81140682121C946107EC950840A70D416CD9468A6795F0024A9569D95EAC5
              E04200A088744B921E58A74109120C748E9A8006AA5B9570BA56469121DDC946
              07D70D67057CA9082AE9A48D115AA85F455010C0328926C9A87A22D811802B22
              9D624E3DF490A323A5ACB6CA95A59756FF3041007F02A0E8A7E935212AA9217D
              48906750BA2AECB048C17AA91990DAEA697EBA8E1A923134FE00049903F99388
              3A5C12ABEDB63319DB1A0C306018421D0130A3ECA2CCEE1A522401446019717C
              3A194830DCD66B6F4ADEFA154305E1E687439FE328BB00AED735CBAB20018C20
              64112D10C40F27D9DE2B31B7F90E20830E35608805010198E24800721491AEB3
              B404C04065E95DA6C1096C08C4C9C4306F5B310C1D7050018222F011C02C8D80
              1CC6C8A40E13401A1604394300FCC4ACB4B0150F2086123720B8C1AC907C2C87
              114003304F0024F4BB62644B870D68D34C5081757E326011403A569F9DEBAECC
              04504707C361084300FE88AD77A04D87FFA0C609183ED140006D034D4E005C5C
              60E5DD79EFEDF8944D83F046175EA737C41C013803B2DB05EF1A000226C4B038
              DE8F97EE63D345CCB1000F755F3743C3875F3D722D012820F2E88DD3644B30BC
              F7EE7B3067BA14CDEFBC070FC0F0C49FB90AF1BD3F08562CCC07134B4DCB474F
              BCF3C25BFFFBF46241CF3CF732794F3CF8E2A1EE451F22547E5D092F6E3EB239
              01B4A1039C8CD3744C270DC9D30C4BF224240F00FD43883CEC91107BECCF2B96
              50882566D20C023AC4802D6946001DB240B02430211584C905119241E9A0AE0D
              01C8820C10640472B94F3DCD0AC01F52A03E04D56F2608FB46376648C31A76C3
              1B0158C44A0C11006FD8708638E4A10FFF7F88C300FC908639F44A2C02208D23
              76431A01209F4B16614427FE106FA46009158768451A42518A515962138FF845
              9888D189652C1F9B46E2262B15610D01D003CAD473832D08447628145500F880
              8442BD3026A51008360440C8421A9290DF08802154F289004CE390849C46001A
              F948484A3200902C24D89E120C23665200DD0800BD6222904F66721B01E8E049
              78F80D53423294A3EC4A27BBF14958C26496B514E59ADA049C20158136761843
              D1D4F30213DC9173D649E11B14979E160EE08F30114700B4E1CA424AD21ED833
              09253329C96D5AB2949FDCA4537099495B921293D52C2436A0581494AC828095
              4C272875E91572BE929E2EB1E721CDE9FFC1358AA48DBEA44D03D010B5FC18A1
              4C787C9B0ACF10A7615E897431210413AF21CF79222225DE3C64371DC94D7066
              529C4DD1A721F909197456541B0110474A7848CB8ACE33965C11692149CA1299
              1292A6CF411D6D1030870D2028036A38A1420B7004F5E0607ED681E61403600D
              9766038B28C9A821371ACFA97A149220658A4D5F7A1E93CAF31AEC3C0929FCC1
              5197E2142A5B3D6B4AD28ACFE8E854207D508233BF3505A1762E007760665241
              C081EB289525C508402B5D2A00540A22AA65D5E824136B55AF1E32AB4B612B4C
              5D725579A254A52641D83608CBD57A7AB29C6DADE967EF39D99CFA3324005DD1
              2F0542002B14543D4840000590199C66FFAD403D16408110FC0A5197BC3300D5
              E02C3604D2CE9248D59A8BAD2A721D6B4890228F78B68849F57C175D0048B6AB
              9C056B008A51924006609084552B0076C7BCEAC264BABDABEE754B825EDEA977
              B4FB0CED489EFB3BF3866F7B2C212F745BF2D671044002BBCD0F0F24C007DABA
              A609FF49021D2710E087E6AE252CE52C212F7B92E34632B91D5D880E43428A49
              98838A0D5984218A5B1242B403C4088907C25A4A5AEC72B61A49248934A9C959
              7ED66218EDF8843E426C0EA2A0C4C4283E888AE13B527C0259214366717C63D9
              E10F3B44C4242E4590072262414CC620FA100777474208440CC221FAF8448F49
              2C92B7FE22000D20038266B0023B8080FF590D600306D4E3013B8029A9BD65C9
              31E02961016897CC21B1B000A89A61852CB214D22C08176D98C8DA108224BC98
              F20F1B2D102517B9B43F61AE3C13B9E59004521A14ADB12E11BD6382C8F08894
              A6F2224712E9824C9A20969EA92E5B0D6B46C33A97F442B441165DC354E7F0D1
              DE5DC818BD4898FD91027FA676A2AF05B208329B391D01B042C688390205F411
              8508C8427EA48080BEE2F9C12B59B12B43FD49946E98248226F437198BDC4F78
              571ADBA886724D390D6D34BAD317FC8635E66D486C546386B876F18B631C12FC
              D158D4C108AC40B8B16F72BB721AD5B0B7403A918C90E47BDFAEF437C0411B8C
              8BF35B9DFF8EF54D45F9EE787FDC9212FFDF6E25A6C94D696803BC87BC463570
              E88F669055DFD9A8E835209E72129B191801C04383D343040928213F4E40809A
              53260106F8F4DB2E19EB775DC90D874392D3C665F785D32D107E6F749A5677A9
              3504C25D4430911A84FDB878F1A5E94D2B322481FD46D8E5194A856B63EE159D
              46223B0100B34B03ED2E557B00FC0EF8BCE35A2077EFB300C61E80951FDC90D9
              C8793551D9BF6DE0DDB2C42DF36901905A0CADF617AF08801D14961F0D5461E9
              E981021FE69C1E1D1C20014F77B04BA4B95953522300B5FF248CB1896EAD0F1A
              C3EBF67A0E59AE7842EE5EEA922FBEAC31BD92CA42FEF2D77C1015834B6F5386
              9280D457FE35126908B2265FF9F3F43EFFF8654DC5C7F779F7C4573C0E07AB7C
              0A87C4CC00184500AE203AF5D0400C21D8B61646989E1104C000B1E71A7F7512
              9F767902D06830075AAB26125CC775BE7749ECA77CA16476B9377E6B8712CE67
              4DE6175F86C04AAE440D1B286B44567C92444515087EA1847BE3278211587C29
              18822E757BD9577CD71000FAE03CF0D70BF113804965033D901F50B004F5771D
              0FF07F3CE81703681233E64A3066820F1700F640220CF880C0A75854C8542B78
              7B5FF67D28285F99466F53F749D7C467A6F40D30384F015078E3D7685C288102
              D1862E28104D357EB7977E8A17865D384AF0370B7BD404182203AD131C46A003
              81D81A3A801C00C85BE0761281056AA6FFA45DC5405609784F873585C2E780C2
              1700703868DA60432FF74935C8442BB87C02F74D27185F236848637786293889
              ED278AA3384FD2108B68B889F5E689AE4848A1788615D58285740DDAC00D35C4
              0D33B864EFB7799D87209F17129A10002C80212F5088ADC12FEAB10483938850
              B712D3E74A97150C08C30D190755814685989861BA97101F5769F4D68935B40D
              9F1870E70486BE47484F358F7E0645AC988184840DD6B00D36146FA684522217
              49EC4843EE988B2337909CF88FEF085A6D076308918E768872D58090A0F449D9
              0045060183E6047FC713005E706797623757F022D8287B2AC10B82356E1A4910
              275758A964891D558EDFE48BF4380D38FF999339899038748A84548707210D9B
              788127A18FBF978A85B40D3E594828359145E60DA0D8921B29862A9849406910
              42994B4B7995059195A0659302900D3A39963CE994BA58444C84900A694963D9
              8F94C67B00E091C8100060500223B9223BF00502719202986726F15B6A0849D6
              7044BCB84E01D04E0D7885C2B796A2C6918AF43B9390408EC97C2A6194D7648F
              D86091C38578D6879463270E930099FA28498E6908902999B9549AA76996F3C4
              98E1C59A946708A8594E16997789845971898CBDA45AB4F10B21910A0170005A
              308477991E45A0477CF92D7E591211468B139652E378898AD951AE6956AC2910
              D91412EB85176DF77B8D0496E9C40D01FF8030F93890A1F468254145C20783D8
              59126CC59E0EE29E48194AD55951A1048338742669C58B3A1756B9C94B6FE279
              BD2912E710006FE00373559C325057A260848A981252F792340845DC959899B8
              98B1789FE1B479DA399F5ED87CDDD94DDBC85992940F8ED799E6E9855C079F26
              F19E1BDAA21E5A9F74779D6BF45B09E195AF7851FFC946BB29A001E09B21C187
              7C2002C4599CAE410311204A0E9A8D27A159CE69484D0800169A61183A8A1A9A
              4950944524310955D962F148959FD0880698494174A2B93490E2390C26A19E1D
              0583595A125CBA94570A496FBAA55D1A5F329A4E73FA58FED40C5346654C540D
              635A4D4F3508C708A06E34A021C10826FF83050E65A4AEB101C8210B4B8A9226
              E15DB5B98601C00B531A7CD4596E5D8446B099433D56099560089F301973E8A5
              DC09869F00004BE85230F63F660A5A033976F69009A66AAAE6D048B3D8A69F84
              4A8B50AAA79AAA58085A3028ACC48AAAAA7AA6A01AAA3F848F2FAA121324103E
              A40DD89AADF286939B484853E19100600A0140006FD003D2589C4D10009740A9
              C98984CB2912B1FAA485747BF6D0A956287CBF0A494D7910DD309639D9939F84
              0DCB66AD78479426619993040005A8735857ABF73490D7908258598C8534764B
              29B008E10D057BA7FD36B03DB4B1F97A48FB6A10FDEAAFD380432C9A12D1D043
              263B0D12DB959BF8ADBA19A0CAA8A821FFE15F0CA004FC07A9AD910601400CEC
              7A84CFF4AE0A3B51F21A5FF6DA58993877D780960481A378FA701197ADD3509B
              065B1208FBAAB0CAB10119007C07000E8B8AAE940D20A8ADD370790229B5D9AA
              0D55EB4AF4A9B6546BB502C1B44E3B10505B64298B125B95910811989AB446E0
              0A00C0790057306D3C3B0034202AB510B40F6A120677B48A950FE4389DEBE6B7
              85940D538BAD15694A3814B216F8A19519A2090B005297A9F778982111B64516
              0083EA52A8E4B95D08BB6E9886A684B96BBBB99F84B2D3AAB748E967659BADD4
              D0AD328BA801F5A32321AE04B0004070B87E21062002008CCBA423117706F8B2
              C26680E239B9179A614B295C013019DDFF2A61574B12592B12DF984EA8849BAA
              2B82145B7C6C98A16F08BF5CDB679B99B727610B2BB9822578A83C4AB3F9B18C
              23E15F0140063773B80E1000EE00BD95DA978B0840C0F5811151985D379394AB
              58E2077E28E5A4560ABA6CE7AA22510B92FB924FE50F5A0AB6AC8986790AC14E
              B8C1F3AB78A174C1AF48A3DA688F848552AB863A70540E87B00E855009C5400A
              5581063870B816A0298FA0C0ED3AB48B2844D59448BCC0129F569B28259DDBFB
              4D8DA4B1CA0791A54056ED3B6EF0D8AA603A12CD994B3A9ABA277C7D2D4C587C
              CB0B5C9C5DB9D4C684B5B16687C5C5079132AC1242D4BA2C89BA3BFA4F3D5AB3
              ED53108A0032427B2948D0200F12BD96FF2A93A614A52D9140DD7B8F544CA533
              D93FD2D0C5D5048C64070076A7C727FBC525E5C1220198540997669C8FC14056
              DC10BEE3A60D50B4409D9C7750095AB12C4F9FCC71968CC9AD2C10EB2B009015
              12FDE30D123AB638849B4D730145F0044E000527300528C002DDB10901C00445
              3A9255F02289100E0D9AC47F45492D8B9358D71252470DDF7CB2FBE6AF63D70E
              4C65B28C77CE6D1900ED900C89F60D26D7ADD88093C1A8919DA67001C00D6C3B
              6F3B670D45D4B2F92913EAD9B2E90C6982D5B2DC67A7DBF0CDF9D90C922B58DB
              70CE9727961127B119C4CFFE8C939014D0036DB2F9C9D1FFFCD1D320D05D27D2
              01100DF22C10F42C6FF68CCFDCA0CF71FFDAB2049712C91040DEA00DDB9A4E62
              A90D45240F15C7BF7EECBFF4B303541000EF10005830C4467A016EC031048100
              22C9C0CCD9105FEB122A6911125511E8590C7FEA10E24066A4E610D56A10FF23
              133CB410E83912C88610592D1252A710695D0B5E46115946D6E2506A0C71D605
              91D6659D3F742D12604D11634DBA6495100BB8437EFD108350C6448D5A7F7C29
              3AB00201900B011007553D924450265D500449B0044E400236D0B82481AA9F90
              DAAABDDA8BADD599B0DAB0FD09869063B1DD0E8F6662B1FD09B68DDBB5DDD61C
              E6619FF0652996DA86300CB580123786AA7F1A66B60D00A81DDBAD0D13CFDDDB
              AB94DBB22D56D30DDBD1DD61B4CDD706FF3108625609C1909D2391DC9FB0DCBA
              FD68D9ADDAAD6DDEE8DDDCEB4DDC25D164C19D10F140DCC63D12A410DFD70D13
              A55009BD1AD60501DE2376B0330BA9957DD9347274460A050D82052B9284A633
              E105D234AD67D9B9F0212AC07A2369013E1B000E10E1444BE1246E1F167E1D09
              9E0B901000133004C5D9039803E222DEC0255EE3F371E2D691E2AD1000E8539C
              49001F326E37236EE344DE4FC45B9C290E00A1100066300323590155402B41EE
              42435EE456DE1B9141403C00A93B700501400900E00B01B0069B1D24399007DB
              E58C337EE56CAE4624810F0150DA464A0328D07800000B01E0070C5E283F001F
              2AC9505FC3A16D3EE8B91119CDB811ED4AB44114710ED01011E746E8907E1A91
              210B9A00E716B10F9B4062B920E00B510FE68018D0C0E905B1080714E9A64E1A
              BF7CEAAAAE341FD1EAAEFEEAB01EEBB23EEBB45EEBB67EEBB81E10003B}
            Visible = False
          end
          object pnlRecentFiles: TSpTBXGroupBox
            Left = 10
            Top = 90
            Width = 409
            Height = 229
            Caption = 'Recent Files'
            Anchors = [akLeft, akTop, akRight, akBottom]
            Color = clNone
            ParentColor = False
            TabOrder = 0
            OnDrawBackground = pnlRecentFilesDrawBackground
            DesignSize = (
              409
              229)
            object shpRecentFiles: TShape
              Left = 8
              Top = 18
              Width = 392
              Height = 167
              Anchors = [akLeft, akTop, akRight, akBottom]
              Brush.Style = bsClear
              Pen.Color = 10070188
              Visible = False
            end
            object cmdLoadFile: TSpTBXButton
              Left = 211
              Top = 194
              Width = 121
              Height = 25
              Caption = 'Load File'
              Anchors = [akLeft, akBottom]
              TabOrder = 0
              OnClick = cmdLoadFileClick
              Images = ilMain
              ImageIndex = 6
              LinkFont.Charset = DEFAULT_CHARSET
              LinkFont.Color = clBlue
              LinkFont.Height = -11
              LinkFont.Name = 'MS Sans Serif'
              LinkFont.Style = [fsUnderline]
              ThemeType = thtTBX
            end
            object cmdCreateNewFile: TSpTBXButton
              Left = 82
              Top = 194
              Width = 121
              Height = 25
              Caption = 'Create New File'
              Anchors = [akLeft, akBottom]
              TabOrder = 1
              OnClick = cmdCreateNewFileClick
              Images = ilMain
              ImageIndex = 5
              LinkFont.Charset = DEFAULT_CHARSET
              LinkFont.Color = clBlue
              LinkFont.Height = -11
              LinkFont.Name = 'MS Sans Serif'
              LinkFont.Style = [fsUnderline]
              ThemeType = thtTBX
            end
            object lvRecentFiles: TListView
              Left = 9
              Top = 19
              Width = 390
              Height = 165
              Anchors = [akLeft, akTop, akRight, akBottom]
              BorderStyle = bsNone
              Color = 15791092
              Columns = <
                item
                  AutoSize = True
                  Caption = 'Filename'
                end
                item
                  Caption = 'File Type'
                  Width = 100
                end
                item
                  Caption = 'Date'
                  Width = 90
                end>
              ColumnClick = False
              ReadOnly = True
              RowSelect = True
              SmallImages = ilTabs
              TabOrder = 2
              ViewStyle = vsReport
              OnCustomDraw = lvRecentFilesCustomDraw
              OnDblClick = lvRecentFilesDblClick
              OnInsert = lvRecentFilesInsert
            end
          end
          object pnlProfile: TSpTBXGroupBox
            Left = 427
            Top = 90
            Width = 225
            Height = 83
            Caption = 'My Profile'
            Anchors = [akTop, akRight]
            Color = clNone
            ParentColor = False
            TabOrder = 1
            object lblProfile: TSpTBXLabel
              Left = 8
              Top = 16
              Width = 41
              Height = 13
              Caption = 'Profile:'
              LinkFont.Charset = DEFAULT_CHARSET
              LinkFont.Color = clBlue
              LinkFont.Height = -11
              LinkFont.Name = 'MS Sans Serif'
              LinkFont.Style = [fsUnderline]
            end
            object cboProfiles: TSpTBXComboBox
              Left = 8
              Top = 30
              Width = 209
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 1
              Text = '(Default)'
              OnClick = cboProfilesClick
              Items.Strings = (
                '(Default)')
            end
            object cmdAddProfile: TSpTBXButton
              Left = 8
              Top = 54
              Width = 101
              Height = 21
              Caption = 'Add'
              TabOrder = 2
              OnClick = cmdAddProfileClick
              Images = frmSettings.ilButtons
              ImageIndex = 2
              LinkFont.Charset = DEFAULT_CHARSET
              LinkFont.Color = clBlue
              LinkFont.Height = -11
              LinkFont.Name = 'MS Sans Serif'
              LinkFont.Style = [fsUnderline]
              ThemeType = thtTBX
            end
            object cmdDeleteProfile: TSpTBXButton
              Left = 114
              Top = 54
              Width = 101
              Height = 21
              Caption = 'Delete'
              Enabled = False
              TabOrder = 3
              OnClick = cmdDeleteProfileClick
              Images = frmSettings.ilButtons
              ImageIndex = 3
              LinkFont.Charset = DEFAULT_CHARSET
              LinkFont.Color = clBlue
              LinkFont.Height = -11
              LinkFont.Name = 'MS Sans Serif'
              LinkFont.Style = [fsUnderline]
              ThemeType = thtTBX
            end
          end
        end
      end
      object jspCode: TJvStandardPage
        Left = 0
        Top = 0
        Width = 658
        Height = 333
        object sciEditor: TScintilla
          Left = 0
          Top = 0
          Width = 658
          Height = 333
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier'
          Font.Style = []
          Align = alClient
          OnUpdateUI = sciEditorUpdateUI
          OnModified = sciEditorModified
          OnDblClick = sciEditorDblClick
          OnZoom = sciEditorZoom
          OnKeyUp = sciEditorKeyUp
          OnKeyDown = sciEditorKeyDown
          OnKeyPress = sciEditorKeyPress
          OnMouseDown = sciEditorMouseDown
          OnMouseMove = sciEditorMouseMove
          EOLStyle = eolCRLF
          Indentation = [KeepIndent, TabIndents, IndentationGuides]
          IndentWidth = 0
          MarginLeft = 0
          MarginRight = 0
          TabWidth = 6
          CodePage = cpAnsi
          Caret.ForeColor = clDefault
          Caret.LineBackColor = 16744576
          Caret.LineVisible = True
          Caret.Width = 1
          Caret.Period = 4096
          Caret.LineBackAlpha = 30
          DivOptions.ViewWSpace = sciWsInvisible
          DivOptions.UsePalette = False
          DivOptions.OverType = False
          DivOptions.ViewEOL = False
          DivOptions.EndAtLastLine = True
          DivOptions.ScrollBarH = True
          DivOptions.ScrollBarV = True
          ActiveHotSpot.BackColor = clDefault
          ActiveHotSpot.ForeColor = clAqua
          ActiveHotSpot.Underlined = True
          ActiveHotSpot.SingleLine = True
          Colors.SelFore = clHighlightText
          Colors.SelBack = clHighlight
          Colors.MarkerFore = clWhite
          Colors.MarkerBack = clBtnShadow
          Colors.FoldHi = clWhite
          Colors.FoldLo = 15461355
          Colors.WhiteSpaceFore = clYellow
          Colors.WhiteSpaceBack = clDefault
          Bookmark.BackColor = clDefault
          Bookmark.ForeColor = clDefault
          Bookmark.MarkerType = sciMCircle
          MouseDwellTime = 500
          Gutter0.Width = 60
          Gutter0.MarginType = gutLineNumber
          Gutter0.Sensitive = False
          Gutter1.Width = 3
          Gutter1.MarginType = gutSymbol
          Gutter1.Sensitive = False
          Gutter2.Width = 14
          Gutter2.MarginType = gutSymbol
          Gutter2.Sensitive = True
          Gutter3.Width = 0
          Gutter3.MarginType = gutSymbol
          Gutter3.Sensitive = False
          Gutter4.Width = 0
          Gutter4.MarginType = gutSymbol
          Gutter4.Sensitive = False
          WordWrapVisualFlags = []
          WordWrapVisualFlagsLocation = []
          LayoutCache = sciCacheCaret
          HideSelect = False
          WordWrap = sciNoWrap
          EdgeMode = sciEdgeLine
          EdgeColumn = 4096
          EdgeColor = clSilver
          WordChars = '_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.'
          ControlCharSymbol = #0
          Folding = [foldFold, foldCompact, foldComment, foldPreprocessor, foldCommentPython, foldQuotesPython, foldAtElse, foldHTML, foldHTMLPreProcessor]
          FoldMarkers.MarkerType = sciMarkBox
          FoldMarkers.FoldOpen.BackColor = clDefault
          FoldMarkers.FoldOpen.ForeColor = clDefault
          FoldMarkers.FoldOpen.MarkerType = sciMBoxMinus
          FoldMarkers.FoldClosed.BackColor = clDefault
          FoldMarkers.FoldClosed.ForeColor = clDefault
          FoldMarkers.FoldClosed.MarkerType = sciMBoxPlus
          FoldMarkers.FoldSub.BackColor = clDefault
          FoldMarkers.FoldSub.ForeColor = clDefault
          FoldMarkers.FoldSub.MarkerType = sciMVLine
          FoldMarkers.FoldTail.BackColor = clDefault
          FoldMarkers.FoldTail.ForeColor = clDefault
          FoldMarkers.FoldTail.MarkerType = sciMLCorner
          FoldMarkers.FoldEnd.BackColor = clDefault
          FoldMarkers.FoldEnd.ForeColor = clDefault
          FoldMarkers.FoldEnd.MarkerType = sciMBoxPlusConnected
          FoldMarkers.FoldOpenMid.BackColor = clDefault
          FoldMarkers.FoldOpenMid.ForeColor = clDefault
          FoldMarkers.FoldOpenMid.MarkerType = sciMBoxMinusConnected
          FoldMarkers.FoldMidTail.BackColor = clDefault
          FoldMarkers.FoldMidTail.ForeColor = clDefault
          FoldMarkers.FoldMidTail.MarkerType = sciMTCorner
          LanguageManager.LanguageList = <
            item
              Name = 'null'
              Lexer = 'null'
              Styles = <
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15461355
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlack
                  BackColor = clSilver
                  CharCase = CASE_MIXED
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end>
              Keywords = <>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = '/*'
              CommentBoxEnd = '*/'
              CommentBoxMiddle = '*'
              CommentBlock = '//'
              CommentAtLineStart = True
              CommentStreamStart = '/*'
              CommentStreamEnd = '*/'
              NumStyleBits = 5
            end
            item
              Name = 'Batch'
              Lexer = 'batch'
              Styles = <
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Default'
                  StyleNumber = 0
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment'
                  StyleNumber = 1
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Keyword'
                  StyleNumber = 2
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Label'
                  StyleNumber = 3
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clFuchsia
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Hide command char (@)'
                  StyleNumber = 4
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 16763904
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'External Commands'
                  StyleNumber = 5
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 13408767
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Variable'
                  StyleNumber = 6
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 10089408
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Operator'
                  StyleNumber = 7
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'String'
                  StyleNumber = 8
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clWhite
                  BackColor = clGreen
                  CharCase = CASE_MIXED
                  Name = 'String Not EOL'
                  StyleNumber = 9
                end
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15461355
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlack
                  BackColor = clSilver
                  CharCase = CASE_MIXED
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end>
              Keywords = <
                item
                  KeywordListNumber = 0
                  Name = 'Internal Commands'
                  Keywords.Strings = (
                    'rem'
                    'set'
                    'if'
                    'exist'
                    'errorlevel'
                    'for'
                    'in'
                    'do'
                    'break'
                    'call'
                    'chcp'
                    'cd'
                    'chdir'
                    'choice'
                    'cls'
                    'country'
                    'ctty'
                    'date'
                    'del'
                    'erase'
                    'dir'
                    'echo'
                    'exit'
                    'goto'
                    'loadfix'
                    'loadhigh'
                    'mkdir'
                    'md'
                    'move'
                    'path'
                    'pause'
                    'prompt'
                    'rename'
                    'ren'
                    'rmdir'
                    'rd'
                    'shift'
                    'time'
                    'type'
                    'ver'
                    'verify'
                    'vol'
                    'com'
                    'con'
                    'lpt'
                    'nul'
                    'endlocal'
                    'setlocal')
                end
                item
                  KeywordListNumber = 1
                  Name = 'External Commands'
                end>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = 'rem'
              CommentBoxEnd = 'rem'
              CommentBoxMiddle = 'rem'
              CommentBlock = 'rem'
              CommentAtLineStart = True
              CommentStreamStart = 'rem'
              CommentStreamEnd = 'rem'
              NumStyleBits = 5
            end
            item
              Name = 'CSS'
              Lexer = 'css'
              Styles = <
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Default'
                  StyleNumber = 0
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'CSS1 Tag'
                  StyleNumber = 1
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Class'
                  StyleNumber = 2
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Pseudo Class'
                  StyleNumber = 3
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Unknown Pseudo Class'
                  StyleNumber = 4
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Operator'
                  StyleNumber = 5
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 12624032
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Identifiers'
                  StyleNumber = 6
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Unknown Identifiers'
                  StyleNumber = 7
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 43673
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Value'
                  StyleNumber = 8
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment'
                  StyleNumber = 9
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 16744576
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ID'
                  StyleNumber = 10
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clWhite
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Important'
                  StyleNumber = 11
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 4500223
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Directive'
                  StyleNumber = 12
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Double quoted string'
                  StyleNumber = 13
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Single quoted string'
                  StyleNumber = 14
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 14721024
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'CSS2 Tag'
                  StyleNumber = 15
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Attribute'
                  StyleNumber = 16
                end
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15461355
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlack
                  BackColor = clSilver
                  CharCase = CASE_MIXED
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end>
              Keywords = <
                item
                  KeywordListNumber = 0
                  Name = 'Keywords'
                  Keywords.Strings = (
                    'color'
                    'background-color'
                    'background-image'
                    'background-repeat'
                    'background-attachment'
                    'background-position'
                    'background'
                    'font-family'
                    'font-style'
                    'font-variant'
                    'font-weight'
                    'font-size'
                    'font'
                    'word-spacing'
                    'letter-spacing'
                    'text-decoration'
                    'vertical-align'
                    'text-transform'
                    'text-align'
                    'text-indent'
                    'line-height'
                    'margin-top'
                    'margin-right'
                    'margin-bottom'
                    'margin-left'
                    'margin'
                    'padding-top'
                    'padding-right'
                    'padding-bottom'
                    'padding-left'
                    'padding'
                    'border-top-width'
                    'border-right-width'
                    'border-bottom-width'
                    'border-left-width'
                    'border-width'
                    'border-top'
                    'border-right'
                    'border-bottom'
                    'border-left'
                    'border'
                    'border-color'
                    'border-style'
                    'width'
                    'height'
                    'float'
                    'clear'
                    'display'
                    'white-space'
                    'list-style-type'
                    'list-style-image'
                    'list-style-position'
                    'list-style'
                    'scrollbar-3dlight-color'
                    'scrollbar-arrow-color'
                    'scrollbar-base-color'
                    'scrollbar-darkshadow-color'
                    'scrollbar-face-color'
                    'scrollbar-highlight-color'
                    'scrollbar-shadow-color'
                    'scrollbar-track-color')
                end
                item
                  KeywordListNumber = 1
                  Name = 'Pseudo Classes'
                  Keywords.Strings = (
                    'first-letter'
                    'first-line'
                    'link'
                    'active'
                    'visited'
                    'first-child'
                    'focus'
                    'hover'
                    'lang'
                    'before'
                    'after'
                    'left'
                    'right'
                    'first')
                end
                item
                  KeywordListNumber = 2
                  Name = 'CSS2 Keywords'
                  Keywords.Strings = (
                    'border-top-color'
                    'border-right-color'
                    'border-bottom-color'
                    'border-left-color'
                    'border-color'
                    'border-top-style'
                    'border-right-style'
                    'border-bottom-style'
                    'border-left-style'
                    'border-style'
                    'top'
                    'right'
                    'bottom'
                    'left'
                    'position'
                    'z-index'
                    'direction'
                    'unicode-bidi'
                    'min-width'
                    'max-width'
                    'min-height'
                    'max-height'
                    'overflow'
                    'clip'
                    'visibility'
                    'content'
                    'quotes'
                    'counter-reset'
                    'counter-increment'
                    'marker-offset'
                    'size'
                    'marks'
                    'page-break-before'
                    'page-break-after'
                    'page-break-inside'
                    'page'
                    'orphans'
                    'widows'
                    'font-stretch'
                    'font-size-adjust'
                    'unicode-range'
                    'units-per-em'
                    'src'
                    'panose-1'
                    'stemv'
                    'stemh'
                    'slope'
                    'cap-height'
                    'x-height'
                    'ascent'
                    'descent'
                    'widths'
                    'bbox'
                    'definition-src'
                    'baseline'
                    'centerline'
                    'mathline'
                    'topline'
                    'text-shadow'
                    'caption-side'
                    'table-layout'
                    'border-collapse'
                    'border-spacing'
                    'empty-cells'
                    'speak-header'
                    'cursor'
                    'outline'
                    'outline-width'
                    'outline-style'
                    'outline-color'
                    'volume'
                    'speak'
                    'pause-before'
                    'pause-after'
                    'pause'
                    'cue-before'
                    'cue-after'
                    'cue'
                    'play-during'
                    'azimuth'
                    'elevation'
                    'speech-rate'
                    'voice-family'
                    'pitch'
                    'pitch-range'
                    'stress'
                    'richness'
                    'speak-punctuation'
                    'speak-numeral')
                end>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = '/*'
              CommentBoxEnd = '*/'
              CommentBoxMiddle = '*'
              CommentBlock = '//'
              CommentAtLineStart = True
              CommentStreamStart = '/*'
              CommentStreamEnd = '*/'
              NumStyleBits = 5
            end
            item
              Name = 'EmailMessage'
              Lexer = 'email'
              Styles = <
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Default'
                  StyleNumber = 0
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Header Tags'
                  StyleNumber = 1
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 16750487
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Header Value'
                  StyleNumber = 2
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Highlighted Headers'
                  StyleNumber = 3
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clFuchsia
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Highlighted Headers Value'
                  StyleNumber = 4
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Quote'
                  StyleNumber = 5
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 55769
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'EMail Address'
                  StyleNumber = 6
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 15921664
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Hotspot = True
                  Name = 'Url Adresses'
                  StyleNumber = 7
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Keyword 1'
                  StyleNumber = 8
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Keyword 2'
                  StyleNumber = 9
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Keyword 3'
                  StyleNumber = 10
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Keyword 4'
                  StyleNumber = 11
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Keyword 5'
                  StyleNumber = 12
                end
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15461355
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlack
                  BackColor = clSilver
                  CharCase = CASE_MIXED
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end>
              Keywords = <
                item
                  KeywordListNumber = 0
                  Name = 'Header Tags'
                  Keywords.Strings = (
                    'return-path'
                    'received'
                    'reply-to'
                    'from'
                    'sender'
                    'resent-reply-to'
                    'resent-from'
                    'resent-sender'
                    'date'
                    'resent-date'
                    'to'
                    'cc'
                    'resent-cc'
                    'bcc'
                    'resent-bcc'
                    'message-id'
                    'resent-message-id'
                    'in-reply-to'
                    'references'
                    'keywords'
                    'comments'
                    'encrypted'
                    'newsgroups'
                    'path'
                    'followup-to'
                    'expires'
                    'references'
                    'distribution'
                    'organization'
                    'summary'
                    'approved'
                    'lines'
                    'xref'
                    'mime-version'
                    'control'
                    'also-control'
                    'content-disposition'
                    'mail-system-version'
                    'mailer'
                    'originating-client'
                    'x-mailer'
                    'x-newsreader'
                    'apparently-to'
                    'for-comment'
                    'for-handling'
                    'disclose-recipients'
                    'alternate-recipient'
                    'original-encoded-information-types'
                    'errors-to'
                    'return-receipt-to'
                    'prevent-nondelivery-report'
                    'generate-delivery-report'
                    'content-return'
                    'content-id'
                    'content-base'
                    'content-location'
                    'see-also'
                    'obsoletes'
                    'supersedes'
                    'article-updates'
                    'article-names'
                    'content-description'
                    'organisation'
                    'content-identifier'
                    'delivery-date'
                    'expiry-date'
                    'reply-by'
                    'priority'
                    'precedence'
                    'importance'
                    'sensitivity'
                    'incomplete-copy'
                    'language'
                    'content-language'
                    'content-length'
                    'conversion'
                    'content-conversion'
                    'conversion-with-loss'
                    'content-type'
                    'content-sgml-entity'
                    'content-transfer-encoding'
                    'message-type'
                    'encoding'
                    'content-md5'
                    'fcc'
                    'auto-forwarded'
                    'status'
                    'discarded-x400-ipms-extensions'
                    'discarded-x400-mts-extensions'
                    'x-beenthere'
                    'x-mailman-version'
                    'list-id'
                    'list-unsubscribe'
                    'list-archive'
                    'list-post'
                    'list-help'
                    'list-subscribe')
                end
                item
                  KeywordListNumber = 1
                  Name = 'Highlighted Header Tags'
                  Keywords.Strings = (
                    'subject')
                end
                item
                  KeywordListNumber = 2
                  Name = 'Keywords 1'
                end
                item
                  KeywordListNumber = 3
                  Name = 'Keywords 2'
                end
                item
                  KeywordListNumber = 4
                  Name = 'Keywords 3'
                end
                item
                  KeywordListNumber = 5
                  Name = 'Keywords 4'
                end
                item
                  KeywordListNumber = 6
                  Name = 'Keywords 5'
                end>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = '/*'
              CommentBoxEnd = '*/'
              CommentBoxMiddle = '*'
              CommentBlock = '//'
              CommentAtLineStart = True
              CommentStreamStart = '/*'
              CommentStreamEnd = '*/'
              NumStyleBits = 5
            end
            item
              Name = 'HTML'
              Lexer = 'hypertext'
              Styles = <
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Text'
                  StyleNumber = 0
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Tags'
                  StyleNumber = 1
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Unknown Tags'
                  StyleNumber = 2
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 12624032
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Attributes'
                  StyleNumber = 3
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Unknown Attributes'
                  StyleNumber = 4
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Numbers'
                  StyleNumber = 5
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Double quoted strings'
                  StyleNumber = 6
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Single quoted strings'
                  StyleNumber = 7
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Other inside tag'
                  StyleNumber = 8
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment'
                  StyleNumber = 9
                end
                item
                  FontName = 'Times New Roman'
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = 10526880
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Entities'
                  StyleNumber = 10
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 12632064
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'XML style tag ends'
                  StyleNumber = 11
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 10485920
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'XML identifier start'
                  StyleNumber = 12
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 10485920
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'XML identifier end'
                  StyleNumber = 13
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 15132160
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SCRIPT'
                  StyleNumber = 14
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP <% ... %>'
                  StyleNumber = 15
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP <% ... %>'
                  StyleNumber = 16
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 57343
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'CDATA'
                  StyleNumber = 17
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 56797
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP'
                  StyleNumber = 18
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clFuchsia
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Unquoted values'
                  StyleNumber = 19
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'XC Comment'
                  StyleNumber = 20
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML tags <! ... >'
                  StyleNumber = 21
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML command'
                  StyleNumber = 22
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 15793935
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML 1st param'
                  StyleNumber = 23
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML double string'
                  StyleNumber = 24
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML single string'
                  StyleNumber = 25
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML error'
                  StyleNumber = 26
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 16737843
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML special'
                  StyleNumber = 27
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML entity'
                  StyleNumber = 28
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML comment'
                  StyleNumber = 29
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlue
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML block'
                  StyleNumber = 31
                end
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15461355
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlack
                  BackColor = clSilver
                  CharCase = CASE_MIXED
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 32639
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Start'
                  StyleNumber = 40
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Default'
                  StyleNumber = 41
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Comment'
                  StyleNumber = 42
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Line Comment'
                  StyleNumber = 43
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Doc Comment'
                  StyleNumber = 44
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Number'
                  StyleNumber = 45
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 13421568
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Word'
                  StyleNumber = 46
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Keyword'
                  StyleNumber = 47
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Double quoted string'
                  StyleNumber = 48
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Single quoted string'
                  StyleNumber = 49
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Symbols'
                  StyleNumber = 50
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clWhite
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS EOL'
                  StyleNumber = 51
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 16724672
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Regex'
                  StyleNumber = 52
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 32639
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP JS Start'
                  StyleNumber = 55
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP JS Default'
                  StyleNumber = 56
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP JS Comment'
                  StyleNumber = 57
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP JS Line Comment'
                  StyleNumber = 58
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP JS Doc Comment'
                  StyleNumber = 59
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP JS Number'
                  StyleNumber = 60
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 14737632
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP JS Word'
                  StyleNumber = 61
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP JS Keyword'
                  StyleNumber = 62
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP JS Double quoted string'
                  StyleNumber = 63
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP JS Single quoted string'
                  StyleNumber = 64
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP JS Symbols'
                  StyleNumber = 65
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clWhite
                  BackColor = 2105376
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP JS EOL'
                  StyleNumber = 66
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 16724672
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP JS Regex'
                  StyleNumber = 67
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'VBS Default'
                  StyleNumber = 71
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'VBS Comment'
                  StyleNumber = 72
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'VBS Number'
                  StyleNumber = 73
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'VBS KeyWord'
                  StyleNumber = 74
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'VBS String'
                  StyleNumber = 75
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'VBS Identifier'
                  StyleNumber = 76
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clWhite
                  BackColor = 2105376
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'VBS Unterminated string'
                  StyleNumber = 77
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Default'
                  StyleNumber = 81
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Comment'
                  StyleNumber = 82
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Number'
                  StyleNumber = 83
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP KeyWord'
                  StyleNumber = 84
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP String'
                  StyleNumber = 85
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Identifier'
                  StyleNumber = 86
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clWhite
                  BackColor = 2105376
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Unterminated string'
                  StyleNumber = 87
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Python Start'
                  StyleNumber = 90
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Default'
                  StyleNumber = 91
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Comment'
                  StyleNumber = 92
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Number'
                  StyleNumber = 93
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python String'
                  StyleNumber = 94
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Single quoted string'
                  StyleNumber = 95
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Keyword'
                  StyleNumber = 96
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 127
                  BackColor = 15728623
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Triple quotes'
                  StyleNumber = 97
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 127
                  BackColor = 15728623
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Triple double quotes'
                  StyleNumber = 98
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clBlue
                  BackColor = 15728623
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Class name definition'
                  StyleNumber = 99
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = 8355584
                  BackColor = 15728623
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python function or method name definition'
                  StyleNumber = 100
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clDefault
                  BackColor = 15728623
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python function or method name definition'
                  StyleNumber = 101
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15728623
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Identifiers'
                  StyleNumber = 102
                end
                item
                  FontSize = 0
                  FontStyles = [fsItalic]
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Complex Variable'
                  StyleNumber = 104
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'ASP Python Start'
                  StyleNumber = 105
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Python Default'
                  StyleNumber = 106
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Python Comment'
                  StyleNumber = 107
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Python Number'
                  StyleNumber = 108
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Python String'
                  StyleNumber = 109
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Python Single quoted string'
                  StyleNumber = 110
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Python Keyword'
                  StyleNumber = 111
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 127
                  BackColor = 13627343
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Python Triple quotes'
                  StyleNumber = 112
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 127
                  BackColor = 13627343
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Python Triple double quotes'
                  StyleNumber = 113
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clBlue
                  BackColor = 13627343
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Python Class name definition'
                  StyleNumber = 114
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = 8355584
                  BackColor = 15728623
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Python function or method name definition'
                  StyleNumber = 115
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clDefault
                  BackColor = 13627343
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Python function or method name definition'
                  StyleNumber = 116
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 13627343
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'ASP Python Identifiers'
                  StyleNumber = 117
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'PHP Default'
                  StyleNumber = 118
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Double quoted string'
                  StyleNumber = 119
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Single quoted string'
                  StyleNumber = 120
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Keyword'
                  StyleNumber = 121
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Number'
                  StyleNumber = 122
                end
                item
                  FontSize = 0
                  FontStyles = [fsItalic]
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Variable'
                  StyleNumber = 123
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Comment'
                  StyleNumber = 124
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP One line Comment'
                  StyleNumber = 125
                end
                item
                  FontSize = 0
                  FontStyles = [fsItalic]
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Variable in double quoted string'
                  StyleNumber = 126
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP operator'
                  StyleNumber = 127
                end>
              Keywords = <
                item
                  KeywordListNumber = 0
                  Name = 'HyperText'
                  Keywords.Strings = (
                    'a'
                    'abbr'
                    'acronym'
                    'address'
                    'applet'
                    'area'
                    'b'
                    'base'
                    'basefont'
                    'bdo'
                    'big'
                    'blockquote'
                    'body'
                    'br'
                    'button'
                    'caption'
                    'center'
                    'cite'
                    'code'
                    'col'
                    'colgroup'
                    'dd'
                    'del'
                    'dfn'
                    'dir'
                    'div'
                    'dl'
                    'dt'
                    'em'
                    'fieldset'
                    'font'
                    'form'
                    'frame'
                    'frameset'
                    'h1'
                    'h2'
                    'h3'
                    'h4'
                    'h5'
                    'h6'
                    'head'
                    'hr'
                    'html'
                    'i'
                    'iframe'
                    'img'
                    'input'
                    'ins'
                    'isindex'
                    'kbd'
                    'label'
                    'legend'
                    'li'
                    'link'
                    'map'
                    'menu'
                    'meta'
                    'noframes'
                    'noscript'
                    'object'
                    'ol'
                    'optgroup'
                    'option'
                    'p'
                    'param'
                    'pre'
                    'q'
                    's'
                    'samp'
                    'script'
                    'select'
                    'small'
                    'span'
                    'strike'
                    'strong'
                    'style'
                    'sub'
                    'sup'
                    'table'
                    'tbody'
                    'td'
                    'textarea'
                    'tfoot'
                    'th'
                    'thead'
                    'title'
                    'tr'
                    'tt'
                    'u'
                    'ul'
                    'var'
                    'xml'
                    'xmlns'
                    'abbr'
                    'accept-charset'
                    'accept'
                    'accesskey'
                    'action'
                    'align'
                    'alink'
                    'alt'
                    'archive'
                    'axis'
                    'background'
                    'bgcolor'
                    'border'
                    'cellpadding'
                    'cellspacing'
                    'char'
                    'charoff'
                    'charset'
                    'checked'
                    'cite'
                    'class'
                    'classid'
                    'clear'
                    'codebase'
                    'codetype'
                    'color'
                    'cols'
                    'colspan'
                    'compact'
                    'content'
                    'coords'
                    'data'
                    'datafld'
                    'dataformatas'
                    'datapagesize'
                    'datasrc'
                    'datetime'
                    'declare'
                    'defer'
                    'dir'
                    'disabled'
                    'enctype'
                    'event'
                    'face'
                    'for'
                    'frame'
                    'frameborder'
                    'headers'
                    'height'
                    'href'
                    'hreflang'
                    'hspace'
                    'http-equiv'
                    'id'
                    'ismap'
                    'label'
                    'lang'
                    'language'
                    'leftmargin'
                    'link'
                    'longdesc'
                    'marginwidth'
                    'marginheight'
                    'maxlength'
                    'media'
                    'method'
                    'multiple'
                    'name'
                    'nohref'
                    'noresize'
                    'noshade'
                    'nowrap'
                    'object'
                    'onblur'
                    'onchange'
                    'onclick'
                    'ondblclick'
                    'onfocus'
                    'onkeydown'
                    'onkeypress'
                    'onkeyup'
                    'onload'
                    'onmousedown'
                    'onmousemove'
                    'onmouseover'
                    'onmouseout'
                    'onmouseup'
                    'onreset'
                    'onselect'
                    'onsubmit'
                    'onunload'
                    'profile'
                    'prompt'
                    'readonly'
                    'rel'
                    'rev'
                    'rows'
                    'rowspan'
                    'rules'
                    'scheme'
                    'scope'
                    'selected'
                    'shape'
                    'size'
                    'span'
                    'src'
                    'standby'
                    'start'
                    'style'
                    'summary'
                    'tabindex'
                    'target'
                    'text'
                    'title'
                    'topmargin'
                    'type'
                    'usemap'
                    'valign'
                    'value'
                    'valuetype'
                    'version'
                    'vlink'
                    'vspace'
                    'width'
                    'text'
                    'password'
                    'checkbox'
                    'radio'
                    'submit'
                    'reset'
                    'file'
                    'hidden'
                    'image'
                    'framespacing'
                    'scrolling'
                    'allowtransparency'
                    'bordercolor')
                end
                item
                  KeywordListNumber = 1
                  Name = 'JavaScript'
                  Keywords.Strings = (
                    'abstract'
                    'boolean'
                    'break'
                    'byte'
                    'case'
                    'catch'
                    'char'
                    'class'
                    'const'
                    'continue'
                    'debugger'
                    'default'
                    'delete'
                    'do'
                    'double'
                    'else'
                    'enum'
                    'export'
                    'extends'
                    'final'
                    'finally'
                    'float'
                    'for'
                    'function'
                    'goto'
                    'if'
                    'implements'
                    'import'
                    'in'
                    'instanceof'
                    'int'
                    'interface'
                    'long'
                    'native'
                    'new'
                    'package'
                    'private'
                    'protected'
                    'public'
                    'return'
                    'short'
                    'static'
                    'super'
                    'switch'
                    'synchronized'
                    'this'
                    'throw'
                    'throws'
                    'transient'
                    'try'
                    'typeof'
                    'var'
                    'void'
                    'volatile'
                    'while'
                    'with')
                end
                item
                  KeywordListNumber = 2
                  Name = 'VBScript'
                  Keywords.Strings = (
                    'and'
                    'begin'
                    'case'
                    'call'
                    'class'
                    'continue'
                    'do'
                    'each'
                    'else'
                    'elseif'
                    'end'
                    'erase'
                    'error'
                    'event'
                    'exit'
                    'false'
                    'for'
                    'function'
                    'get'
                    'gosub'
                    'goto'
                    'if'
                    'implement'
                    'in'
                    'load'
                    'loop'
                    'lset'
                    'me'
                    'mid'
                    'new'
                    'next'
                    'not'
                    'nothing'
                    'on'
                    'or'
                    'property'
                    'raiseevent'
                    'rem'
                    'resume'
                    'return'
                    'rset'
                    'select'
                    'set'
                    'stop'
                    'sub'
                    'then'
                    'to'
                    'true'
                    'unload'
                    'until'
                    'wend'
                    'while'
                    'with'
                    'withevents'
                    'attribute'
                    'alias'
                    'as'
                    'boolean'
                    'byref'
                    'byte'
                    'byval'
                    'const'
                    'compare'
                    'currency'
                    'date'
                    'declare'
                    'dim'
                    'double'
                    'enum'
                    'explicit'
                    'friend'
                    'global'
                    'integer'
                    'let'
                    'lib'
                    'long'
                    'module'
                    'object'
                    'option'
                    'optional'
                    'preserve'
                    'private'
                    'public'
                    'redim'
                    'single'
                    'static'
                    'string'
                    'type'
                    'variant')
                end
                item
                  KeywordListNumber = 3
                  Name = 'Python'
                  Keywords.Strings = (
                    'and'
                    'assert'
                    'break'
                    'class'
                    'continue'
                    'def'
                    'del'
                    'elif'
                    'else'
                    'except'
                    'exec'
                    'finally'
                    'for'
                    'from'
                    'global'
                    'if'
                    'import'
                    'in'
                    'is'
                    'lambda'
                    'None'
                    'not'
                    'or'
                    'pass'
                    'print'
                    'raise'
                    'return'
                    'try'
                    'while'
                    'yield')
                end
                item
                  KeywordListNumber = 4
                  Name = 'PHP'
                  Keywords.Strings = (
                    'and'
                    'argv'
                    'as'
                    'argc'
                    'break'
                    'case'
                    'cfunction'
                    'class'
                    'continue'
                    'declare'
                    'default'
                    'do'
                    'die'
                    'echo'
                    'else'
                    'elseif'
                    'empty'
                    'enddeclare'
                    'endfor'
                    'endforeach'
                    'endif'
                    'endswitch'
                    'endwhile'
                    'e_all'
                    'e_parse'
                    'e_error'
                    'e_warning'
                    'eval'
                    'exit'
                    'extends'
                    'false'
                    'for'
                    'foreach'
                    'function'
                    'global'
                    'http_cookie_vars'
                    'http_get_vars'
                    'http_post_vars'
                    'http_post_files'
                    'http_env_vars'
                    'http_server_vars'
                    'if'
                    'include'
                    'include_once'
                    'list'
                    'new'
                    'not'
                    'null'
                    'old_function'
                    'or'
                    'parent'
                    'php_os'
                    'php_self'
                    'php_version'
                    'print'
                    'require'
                    'require_once'
                    'return'
                    'static'
                    'switch'
                    'stdclass'
                    'this'
                    'true'
                    'var'
                    'xor'
                    'virtual'
                    'while'
                    'define'
                    '__file__'
                    '__line__'
                    '__sleep'
                    '__wakeup')
                end
                item
                  KeywordListNumber = 5
                  Name = 'DTD Keywords'
                  Keywords.Strings = (
                    'ELEMENT'
                    'DOCTYPE'
                    'ATTLIST'
                    'ENTITY'
                    'NOTATION')
                end>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = '<!--'
              CommentBoxEnd = '-->'
              CommentBoxMiddle = '*'
              CommentBlock = '//'
              CommentAtLineStart = True
              CommentStreamStart = '<!--'
              CommentStreamEnd = '-->'
              NumStyleBits = 7
            end
            item
              Name = 'Makefile'
              Lexer = 'makefile'
              Styles = <
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Default'
                  StyleNumber = 0
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment'
                  StyleNumber = 1
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clFuchsia
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Preprocessor'
                  StyleNumber = 2
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Variable'
                  StyleNumber = 3
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 10089408
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Operator'
                  StyleNumber = 4
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 238
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Target'
                  StyleNumber = 5
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clYellow
                  BackColor = clRed
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Error'
                  StyleNumber = 9
                end
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15461355
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlack
                  BackColor = clSilver
                  CharCase = CASE_MIXED
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end>
              Keywords = <>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = '#'
              CommentBoxEnd = '#'
              CommentBoxMiddle = '#'
              CommentBlock = '#'
              CommentAtLineStart = True
              CommentStreamStart = '#'
              CommentStreamEnd = '#'
              NumStyleBits = 5
            end
            item
              Name = 'MSSQL'
              Lexer = 'mssql'
              Styles = <
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Default'
                  StyleNumber = 0
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment'
                  StyleNumber = 1
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Line Comment'
                  StyleNumber = 2
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Number'
                  StyleNumber = 3
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'String'
                  StyleNumber = 4
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Operator'
                  StyleNumber = 5
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Identifier'
                  StyleNumber = 6
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Variable'
                  StyleNumber = 7
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Column Name'
                  StyleNumber = 8
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Statement'
                  StyleNumber = 9
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Data Type'
                  StyleNumber = 10
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'System Table'
                  StyleNumber = 11
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Global Variable'
                  StyleNumber = 12
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Function'
                  StyleNumber = 13
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Stored Procedure'
                  StyleNumber = 14
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Default Pref Datatype'
                  StyleNumber = 15
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Column Name 2'
                  StyleNumber = 16
                end
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15461355
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlack
                  BackColor = clSilver
                  CharCase = CASE_MIXED
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end>
              Keywords = <
                item
                  KeywordListNumber = 0
                  Name = 'Statements'
                end
                item
                  KeywordListNumber = 1
                  Name = 'Data Types'
                end
                item
                  KeywordListNumber = 2
                  Name = 'System tables'
                end
                item
                  KeywordListNumber = 3
                  Name = 'Global variables'
                end
                item
                  KeywordListNumber = 4
                  Name = 'Functions'
                end
                item
                  KeywordListNumber = 5
                  Name = 'System Stored Procedures'
                end
                item
                  KeywordListNumber = 6
                  Name = 'Operators'
                end>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = '/*'
              CommentBoxEnd = '*/'
              CommentBoxMiddle = '*'
              CommentBlock = '#'
              CommentAtLineStart = True
              CommentStreamStart = '/*'
              CommentStreamEnd = '*/'
              NumStyleBits = 5
            end
            item
              Name = 'PHP'
              Lexer = 'hypertext'
              Styles = <
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15461355
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlack
                  BackColor = clSilver
                  CharCase = CASE_MIXED
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Text'
                  StyleNumber = 0
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Tags'
                  StyleNumber = 1
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Unknown Tags'
                  StyleNumber = 2
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 12624032
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Attributes'
                  StyleNumber = 3
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Unknown Attributes'
                  StyleNumber = 4
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Numbers'
                  StyleNumber = 5
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 39338
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Double quoted strings'
                  StyleNumber = 6
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Single quoted strings'
                  StyleNumber = 7
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Other inside tag'
                  StyleNumber = 8
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment'
                  StyleNumber = 9
                end
                item
                  FontName = 'Times New Roman'
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = 10526880
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Entities'
                  StyleNumber = 10
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 12632064
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'XML style tag ends'
                  StyleNumber = 11
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 10485920
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'XML identifier start'
                  StyleNumber = 12
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 10485920
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'XML identifier end'
                  StyleNumber = 13
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 657920
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SCRIPT'
                  StyleNumber = 14
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 57343
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'CDATA'
                  StyleNumber = 17
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 56797
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP'
                  StyleNumber = 18
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clFuchsia
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Unquoted values'
                  StyleNumber = 19
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'XC Comment'
                  StyleNumber = 20
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML tags <! ... >'
                  StyleNumber = 21
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML command'
                  StyleNumber = 22
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 15793935
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML 1st param'
                  StyleNumber = 23
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML double string'
                  StyleNumber = 24
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML single string'
                  StyleNumber = 25
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML error'
                  StyleNumber = 26
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 16737843
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML special'
                  StyleNumber = 27
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML entity'
                  StyleNumber = 28
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML comment'
                  StyleNumber = 29
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlue
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML block'
                  StyleNumber = 31
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 32639
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Start'
                  StyleNumber = 40
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'JS Default'
                  StyleNumber = 41
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'JS Comment'
                  StyleNumber = 42
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Line Comment'
                  StyleNumber = 43
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'JS Doc Comment'
                  StyleNumber = 44
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Number'
                  StyleNumber = 45
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 13421568
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Word'
                  StyleNumber = 46
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Keyword'
                  StyleNumber = 47
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Double quoted string'
                  StyleNumber = 48
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Single quoted string'
                  StyleNumber = 49
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Symbols'
                  StyleNumber = 50
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clWhite
                  BackColor = 2105376
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'JS EOL'
                  StyleNumber = 51
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 16724672
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'JS Regex'
                  StyleNumber = 52
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'VBS Default'
                  StyleNumber = 71
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'VBS Comment'
                  StyleNumber = 72
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'VBS Number'
                  StyleNumber = 73
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'VBS KeyWord'
                  StyleNumber = 74
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'VBS String'
                  StyleNumber = 75
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'VBS Identifier'
                  StyleNumber = 76
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clWhite
                  BackColor = 2105376
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'VBS Unterminated string'
                  StyleNumber = 77
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Python Start'
                  StyleNumber = 90
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Default'
                  StyleNumber = 91
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Comment'
                  StyleNumber = 92
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Number'
                  StyleNumber = 93
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python String'
                  StyleNumber = 94
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Single quoted string'
                  StyleNumber = 95
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Keyword'
                  StyleNumber = 96
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 127
                  BackColor = 15728623
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Triple quotes'
                  StyleNumber = 97
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 127
                  BackColor = 15728623
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Triple double quotes'
                  StyleNumber = 98
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clBlue
                  BackColor = 15728623
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Class name definition'
                  StyleNumber = 99
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = 8355584
                  BackColor = 15728623
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python function or method name definition'
                  StyleNumber = 100
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clDefault
                  BackColor = 15728623
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python function or method name definition'
                  StyleNumber = 101
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15728623
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'Python Identifiers'
                  StyleNumber = 102
                end
                item
                  FontSize = 0
                  FontStyles = [fsItalic]
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Complex Variable'
                  StyleNumber = 104
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'PHP Default'
                  StyleNumber = 118
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Double quoted string'
                  StyleNumber = 119
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Single quoted string'
                  StyleNumber = 120
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Keyword'
                  StyleNumber = 121
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Number'
                  StyleNumber = 122
                end
                item
                  FontSize = 0
                  FontStyles = [fsItalic]
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Variable'
                  StyleNumber = 123
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Comment'
                  StyleNumber = 124
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP One line Comment'
                  StyleNumber = 125
                end
                item
                  FontSize = 0
                  FontStyles = [fsItalic]
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP Variable in double quoted string'
                  StyleNumber = 126
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'PHP operator'
                  StyleNumber = 127
                end>
              Keywords = <
                item
                  KeywordListNumber = 0
                  Name = 'HyperText'
                  Keywords.Strings = (
                    'a'
                    'abbr'
                    'acronym'
                    'address'
                    'applet'
                    'area'
                    'b'
                    'base'
                    'basefont'
                    'bdo'
                    'big'
                    'blockquote'
                    'body'
                    'br'
                    'button'
                    'caption'
                    'center'
                    'cite'
                    'code'
                    'col'
                    'colgroup'
                    'dd'
                    'del'
                    'dfn'
                    'dir'
                    'div'
                    'dl'
                    'dt'
                    'em'
                    'fieldset'
                    'font'
                    'form'
                    'frame'
                    'frameset'
                    'h1'
                    'h2'
                    'h3'
                    'h4'
                    'h5'
                    'h6'
                    'head'
                    'hr'
                    'html'
                    'i'
                    'iframe'
                    'img'
                    'input'
                    'ins'
                    'isindex'
                    'kbd'
                    'label'
                    'legend'
                    'li'
                    'link'
                    'map'
                    'menu'
                    'meta'
                    'noframes'
                    'noscript'
                    'object'
                    'ol'
                    'optgroup'
                    'option'
                    'p'
                    'param'
                    'pre'
                    'q'
                    's'
                    'samp'
                    'script'
                    'select'
                    'small'
                    'span'
                    'strike'
                    'strong'
                    'style'
                    'sub'
                    'sup'
                    'table'
                    'tbody'
                    'td'
                    'textarea'
                    'tfoot'
                    'th'
                    'thead'
                    'title'
                    'tr'
                    'tt'
                    'u'
                    'ul'
                    'var'
                    'xml'
                    'xmlns'
                    'abbr'
                    'accept-charset'
                    'accept'
                    'accesskey'
                    'action'
                    'align'
                    'alink'
                    'alt'
                    'archive'
                    'axis'
                    'background'
                    'bgcolor'
                    'border'
                    'cellpadding'
                    'cellspacing'
                    'char'
                    'charoff'
                    'charset'
                    'checked'
                    'cite'
                    'class'
                    'classid'
                    'clear'
                    'codebase'
                    'codetype'
                    'color'
                    'cols'
                    'colspan'
                    'compact'
                    'content'
                    'coords'
                    'data'
                    'datafld'
                    'dataformatas'
                    'datapagesize'
                    'datasrc'
                    'datetime'
                    'declare'
                    'defer'
                    'dir'
                    'disabled'
                    'enctype'
                    'event'
                    'face'
                    'for'
                    'frame'
                    'frameborder'
                    'headers'
                    'height'
                    'href'
                    'hreflang'
                    'hspace'
                    'http-equiv'
                    'id'
                    'ismap'
                    'label'
                    'lang'
                    'language'
                    'leftmargin'
                    'link'
                    'longdesc'
                    'marginwidth'
                    'marginheight'
                    'maxlength'
                    'media'
                    'method'
                    'multiple'
                    'name'
                    'nohref'
                    'noresize'
                    'noshade'
                    'nowrap'
                    'object'
                    'onblur'
                    'onchange'
                    'onclick'
                    'ondblclick'
                    'onfocus'
                    'onkeydown'
                    'onkeypress'
                    'onkeyup'
                    'onload'
                    'onmousedown'
                    'onmousemove'
                    'onmouseover'
                    'onmouseout'
                    'onmouseup'
                    'onreset'
                    'onselect'
                    'onsubmit'
                    'onunload'
                    'profile'
                    'prompt'
                    'readonly'
                    'rel'
                    'rev'
                    'rows'
                    'rowspan'
                    'rules'
                    'scheme'
                    'scope'
                    'selected'
                    'shape'
                    'size'
                    'span'
                    'src'
                    'standby'
                    'start'
                    'style'
                    'summary'
                    'tabindex'
                    'target'
                    'text'
                    'title'
                    'topmargin'
                    'type'
                    'usemap'
                    'valign'
                    'value'
                    'valuetype'
                    'version'
                    'vlink'
                    'vspace'
                    'width'
                    'text'
                    'password'
                    'checkbox'
                    'radio'
                    'submit'
                    'reset'
                    'file'
                    'hidden'
                    'image'
                    'framespacing'
                    'scrolling'
                    'allowtransparency'
                    'bordercolor')
                end
                item
                  KeywordListNumber = 1
                  Name = 'JavaScript'
                  Keywords.Strings = (
                    'abstract'
                    'boolean'
                    'break'
                    'byte'
                    'case'
                    'catch'
                    'char'
                    'class'
                    'const'
                    'continue'
                    'debugger'
                    'default'
                    'delete'
                    'do'
                    'double'
                    'else'
                    'enum'
                    'export'
                    'extends'
                    'final'
                    'finally'
                    'float'
                    'for'
                    'function'
                    'goto'
                    'if'
                    'implements'
                    'import'
                    'in'
                    'instanceof'
                    'int'
                    'interface'
                    'long'
                    'native'
                    'new'
                    'package'
                    'private'
                    'protected'
                    'public'
                    'return'
                    'short'
                    'static'
                    'super'
                    'switch'
                    'synchronized'
                    'this'
                    'throw'
                    'throws'
                    'transient'
                    'try'
                    'typeof'
                    'var'
                    'void'
                    'volatile'
                    'while'
                    'with')
                end
                item
                  KeywordListNumber = 2
                  Name = 'VBScript'
                  Keywords.Strings = (
                    'and'
                    'begin'
                    'case'
                    'call'
                    'class'
                    'continue'
                    'do'
                    'each'
                    'else'
                    'elseif'
                    'end'
                    'erase'
                    'error'
                    'event'
                    'exit'
                    'false'
                    'for'
                    'function'
                    'get'
                    'gosub'
                    'goto'
                    'if'
                    'implement'
                    'in'
                    'load'
                    'loop'
                    'lset'
                    'me'
                    'mid'
                    'new'
                    'next'
                    'not'
                    'nothing'
                    'on'
                    'or'
                    'property'
                    'raiseevent'
                    'rem'
                    'resume'
                    'return'
                    'rset'
                    'select'
                    'set'
                    'stop'
                    'sub'
                    'then'
                    'to'
                    'true'
                    'unload'
                    'until'
                    'wend'
                    'while'
                    'with'
                    'withevents'
                    'attribute'
                    'alias'
                    'as'
                    'boolean'
                    'byref'
                    'byte'
                    'byval'
                    'const'
                    'compare'
                    'currency'
                    'date'
                    'declare'
                    'dim'
                    'double'
                    'enum'
                    'explicit'
                    'friend'
                    'global'
                    'integer'
                    'let'
                    'lib'
                    'long'
                    'module'
                    'object'
                    'option'
                    'optional'
                    'preserve'
                    'private'
                    'public'
                    'redim'
                    'single'
                    'static'
                    'string'
                    'type'
                    'variant')
                end
                item
                  KeywordListNumber = 3
                  Name = 'Python'
                  Keywords.Strings = (
                    'and'
                    'assert'
                    'break'
                    'class'
                    'continue'
                    'def'
                    'del'
                    'elif'
                    'else'
                    'except'
                    'exec'
                    'finally'
                    'for'
                    'from'
                    'global'
                    'if'
                    'import'
                    'in'
                    'is'
                    'lambda'
                    'None'
                    'not'
                    'or'
                    'pass'
                    'print'
                    'raise'
                    'return'
                    'try'
                    'while'
                    'yield')
                end
                item
                  KeywordListNumber = 4
                  Name = 'PHP'
                  Keywords.Strings = (
                    'and'
                    'argv'
                    'as'
                    'argc'
                    'break'
                    'case'
                    'cfunction'
                    'class'
                    'continue'
                    'declare'
                    'default'
                    'do'
                    'die'
                    'echo'
                    'else'
                    'elseif'
                    'empty'
                    'enddeclare'
                    'endfor'
                    'endforeach'
                    'endif'
                    'endswitch'
                    'endwhile'
                    'e_all'
                    'e_parse'
                    'e_error'
                    'e_warning'
                    'eval'
                    'exit'
                    'extends'
                    'false'
                    'for'
                    'foreach'
                    'function'
                    'global'
                    'http_cookie_vars'
                    'http_get_vars'
                    'http_post_vars'
                    'http_post_files'
                    'http_env_vars'
                    'http_server_vars'
                    'if'
                    'include'
                    'include_once'
                    'list'
                    'new'
                    'not'
                    'null'
                    'old_function'
                    'or'
                    'parent'
                    'php_os'
                    'php_self'
                    'php_version'
                    'print'
                    'require'
                    'require_once'
                    'return'
                    'static'
                    'switch'
                    'stdclass'
                    'this'
                    'true'
                    'var'
                    'xor'
                    'virtual'
                    'while'
                    'define'
                    '__file__'
                    '__line__'
                    '__sleep'
                    '__wakeup')
                end
                item
                  KeywordListNumber = 5
                  Name = 'DTD Keywords'
                  Keywords.Strings = (
                    'ELEMENT'
                    'DOCTYPE'
                    'ATTLIST'
                    'ENTITY'
                    'NOTATION')
                end>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = '<!--'
              CommentBoxEnd = '-->'
              CommentBoxMiddle = '*'
              CommentBlock = '//'
              CommentAtLineStart = True
              CommentStreamStart = '<!--'
              CommentStreamEnd = '-->'
              NumStyleBits = 7
            end
            item
              Name = 'SQL'
              Lexer = 'sql'
              Styles = <
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15461355
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlack
                  BackColor = clSilver
                  CharCase = CASE_MIXED
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Whitespace'
                  StyleNumber = 0
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment'
                  StyleNumber = 1
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Line Comment'
                  StyleNumber = 2
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Doc Comment'
                  StyleNumber = 3
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Number'
                  StyleNumber = 4
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Keyword'
                  StyleNumber = 5
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Double quoted string'
                  StyleNumber = 6
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Character'
                  StyleNumber = 7
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SQL*Plus'
                  StyleNumber = 8
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SQL*Plus Prompt'
                  StyleNumber = 9
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Operators'
                  StyleNumber = 10
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Identifier'
                  StyleNumber = 11
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clWhite
                  BackColor = 2105376
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'EOL if string is not closed'
                  StyleNumber = 12
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SQL*Plus Comment'
                  StyleNumber = 13
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Line Doc Comment'
                  StyleNumber = 15
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Keyword2'
                  StyleNumber = 16
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Doc Comment Keyword'
                  StyleNumber = 17
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Doc Comment Keyword Error'
                  StyleNumber = 18
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'User 1'
                  StyleNumber = 19
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'User 2'
                  StyleNumber = 20
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'User 3'
                  StyleNumber = 21
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'User 4'
                  StyleNumber = 22
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Quoted Identifier'
                  StyleNumber = 23
                end>
              Keywords = <
                item
                  KeywordListNumber = 0
                  Name = 'Keywords'
                  Keywords.Strings = (
                    'action'
                    'add'
                    'aggregate'
                    'all'
                    'alter'
                    'after'
                    'and'
                    'as'
                    'asc'
                    'avg'
                    'avg_row_length'
                    'auto_increment'
                    'between'
                    'bigint'
                    'bit'
                    'binary'
                    'blob'
                    'bool'
                    'both'
                    'by'
                    'cascade'
                    'case'
                    'char'
                    'character'
                    'change'
                    'check'
                    'checksum'
                    'column'
                    'columns'
                    'comment'
                    'constraint'
                    'create'
                    'cross'
                    'current_date'
                    'current_time'
                    'current_timestamp'
                    'data'
                    'database'
                    'databases'
                    'date'
                    'datetime'
                    'day'
                    'day_hour'
                    'day_minute'
                    'day_second'
                    'dayofmonth'
                    'dayofweek'
                    'dayofyear'
                    'dec'
                    'decimal'
                    'default'
                    'delayed'
                    'delay_key_write'
                    'delete'
                    'desc'
                    'describe'
                    'distinct'
                    'distinctrow'
                    'double'
                    'drop'
                    'end'
                    'else'
                    'escape'
                    'escaped'
                    'enclosed'
                    'enum'
                    'explain'
                    'exists'
                    'fields'
                    'file'
                    'first'
                    'float'
                    'float4'
                    'float8'
                    'flush'
                    'foreign'
                    'from'
                    'for'
                    'full'
                    'function'
                    'global'
                    'grant'
                    'grants'
                    'group'
                    'having'
                    'heap'
                    'high_priority'
                    'hour'
                    'hour_minute'
                    'hour_second'
                    'hosts'
                    'identified'
                    'ignore'
                    'in'
                    'index'
                    'infile'
                    'inner'
                    'insert'
                    'insert_id'
                    'int'
                    'integer'
                    'interval'
                    'int1'
                    'int2'
                    'int3'
                    'int4'
                    'int8'
                    'into'
                    'if'
                    'is'
                    'isam'
                    'join'
                    'key'
                    'keys'
                    'kill'
                    'last_insert_id'
                    'leading'
                    'left'
                    'length'
                    'like'
                    'lines'
                    'limit'
                    'load'
                    'local'
                    'lock'
                    'logs'
                    'long'
                    'longblob'
                    'longtext'
                    'low_priority'
                    'max'
                    'max_rows'
                    'match'
                    'mediumblob'
                    'mediumtext'
                    'mediumint'
                    'middleint'
                    'min_rows'
                    'minute'
                    'minute_second'
                    'modify'
                    'month'
                    'monthname'
                    'myisam'
                    'natural'
                    'numeric'
                    'no'
                    'not'
                    'null'
                    'on'
                    'optimize'
                    'option'
                    'optionally'
                    'or'
                    'order'
                    'outer'
                    'outfile'
                    'pack_keys'
                    'partial'
                    'password'
                    'precision'
                    'primary'
                    'procedure'
                    'process'
                    'processlist'
                    'privileges'
                    'read'
                    'real'
                    'references'
                    'reload'
                    'regexp'
                    'rename'
                    'replace'
                    'restrict'
                    'returns'
                    'revoke'
                    'rlike'
                    'row'
                    'rows'
                    'second'
                    'select'
                    'set'
                    'show'
                    'shutdown'
                    'smallint'
                    'soname'
                    'sql_big_tables'
                    'sql_big_selects'
                    'sql_low_priority_updates'
                    'sql_log_off'
                    'sql_log_update'
                    'sql_select_limit'
                    'sql_small_result'
                    'sql_big_result'
                    'sql_warnings'
                    'straight_join'
                    'starting'
                    'status'
                    'string'
                    'table'
                    'tables'
                    'temporary'
                    'terminated'
                    'text'
                    'then'
                    'time'
                    'timestamp'
                    'tinyblob'
                    'tinytext'
                    'tinyint'
                    'trailing'
                    'to'
                    'type'
                    'use'
                    'using'
                    'unique'
                    'unlock'
                    'unsigned'
                    'update'
                    'usage'
                    'values'
                    'varchar'
                    'variables'
                    'varying'
                    'varbinary'
                    'with'
                    'write'
                    'when'
                    'where'
                    'year'
                    'year_month'
                    'zerofill')
                end
                item
                  KeywordListNumber = 1
                  Name = 'Database Objects'
                end
                item
                  KeywordListNumber = 2
                  Name = 'PLDoc'
                end
                item
                  KeywordListNumber = 3
                  Name = 'SQL*Plus'
                end
                item
                  KeywordListNumber = 4
                  Name = 'User Keywords 1'
                end
                item
                  KeywordListNumber = 5
                  Name = 'User Keywords 2'
                end
                item
                  KeywordListNumber = 6
                  Name = 'User Keywords 3'
                end
                item
                  KeywordListNumber = 7
                  Name = 'User Keywords 4'
                end>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = '/*'
              CommentBoxEnd = '*/'
              CommentBoxMiddle = '*'
              CommentBlock = '#'
              CommentAtLineStart = True
              CommentStreamStart = '/*'
              CommentStreamEnd = '*/'
              NumStyleBits = 5
            end
            item
              Name = 'XML'
              Lexer = 'xml'
              Styles = <
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15461355
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlack
                  BackColor = clSilver
                  CharCase = CASE_MIXED
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Default'
                  StyleNumber = 0
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Tags'
                  StyleNumber = 1
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Unknown Tags'
                  StyleNumber = 2
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 12624032
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Attributes'
                  StyleNumber = 3
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Unknown Attributes'
                  StyleNumber = 4
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Numbers'
                  StyleNumber = 5
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Double quoted strings'
                  StyleNumber = 6
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Single quoted strings'
                  StyleNumber = 7
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 14745825
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Other inside tag'
                  StyleNumber = 8
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment'
                  StyleNumber = 9
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Entities'
                  StyleNumber = 10
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 14745825
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'XML style tag ends'
                  StyleNumber = 11
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'XML identifier start'
                  StyleNumber = 12
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'XML identifier end'
                  StyleNumber = 13
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'CDATA'
                  StyleNumber = 17
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 160
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'XML Question'
                  StyleNumber = 18
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clFuchsia
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Unquoted values'
                  StyleNumber = 19
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML tags <! ... >'
                  StyleNumber = 21
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = 13684736
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML command'
                  StyleNumber = 22
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 15793935
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML 1st param'
                  StyleNumber = 23
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML double string'
                  StyleNumber = 24
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML single string'
                  StyleNumber = 25
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clYellow
                  BackColor = clMaroon
                  CharCase = CASE_MIXED
                  Name = 'SGML error'
                  StyleNumber = 26
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 16737843
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML special'
                  StyleNumber = 27
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML entity'
                  StyleNumber = 28
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'SGML comment'
                  StyleNumber = 29
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 6684672
                  BackColor = clSilver
                  CharCase = CASE_MIXED
                  Name = 'SGML block'
                  StyleNumber = 31
                end>
              Keywords = <
                item
                  KeywordListNumber = 0
                  Name = 'Keywords'
                end
                item
                  KeywordListNumber = 5
                  Name = 'SGML Keywords'
                  Keywords.Strings = (
                    'ELEMENT'
                    'DOCTYPE'
                    'ATTLIST'
                    'ENTITY'
                    'NOTATION')
                end>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = '<!--'
              CommentBoxEnd = '-->'
              CommentBoxMiddle = '*'
              CommentBlock = '//'
              CommentAtLineStart = True
              CommentStreamStart = '<!--'
              CommentStreamEnd = '-->'
              NumStyleBits = 5
            end
            item
              Name = 'Pawn'
              Lexer = 'cpp'
              Styles = <
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'White space'
                  StyleNumber = 0
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment'
                  StyleNumber = 1
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Line Comment'
                  StyleNumber = 2
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Doc Comment'
                  StyleNumber = 3
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Number'
                  StyleNumber = 4
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 42496
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Keyword'
                  StyleNumber = 5
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Double quoted string'
                  StyleNumber = 6
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Single quoted string'
                  StyleNumber = 7
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Symbols/UUID'
                  StyleNumber = 8
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Preprocessor'
                  StyleNumber = 9
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clNavy
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Operators'
                  StyleNumber = 10
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clNavy
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Identifier'
                  StyleNumber = 11
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clMaroon
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'EOL if string is not closed'
                  StyleNumber = 12
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Verbatim strings for C#'
                  StyleNumber = 13
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 16724672
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Regular expressions'
                  StyleNumber = 14
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Doc Comment Line'
                  StyleNumber = 15
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'User-defined keywords'
                  StyleNumber = 16
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment keyword'
                  StyleNumber = 17
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clMaroon
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment keyword error'
                  StyleNumber = 18
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 11534336
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Global classes and typedefs'
                  StyleNumber = 19
                end
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15461355
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlue
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Visible = False
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end>
              Keywords = <
                item
                  KeywordListNumber = 0
                  Name = 'Primary keywords and identifiers'
                  Keywords.Strings = (
                    'bool'
                    'break'
                    'case'
                    'const'
                    'continue'
                    'default'
                    'delete'
                    'do'
                    'else'
                    'enum'
                    'false'
                    'for'
                    'if'
                    'new'
                    'return'
                    'sizeof'
                    'switch'
                    'while'
                    'public'
                    'stock'
                    'true'
                    'native'
                    'forward'
                    'state'
                    'static'
                    'any'
                    'Float')
                end
                item
                  KeywordListNumber = 1
                  Name = 'Secondary keywords and identifiers'
                end
                item
                  KeywordListNumber = 2
                  Name = 'Doc Comments'
                  Keywords.Strings = (
                    'a'
                    'addindex'
                    'addtogroup'
                    'anchor'
                    'arg'
                    'attention'
                    'author'
                    'b'
                    'brief'
                    'bug'
                    'c'
                    'class'
                    'code'
                    'date'
                    'def'
                    'defgroup'
                    'deprecated'
                    'dontinclude'
                    'e'
                    'em'
                    'endcode'
                    'endhtmlonly'
                    'endif'
                    'endlatexonly'
                    'endlink'
                    'endverbatim'
                    'enum'
                    'example'
                    'exception'
                    'f$'
                    'f['
                    'f]'
                    'file'
                    'fn'
                    'hideinitializer'
                    'htmlinclude'
                    'htmlonly'
                    'if'
                    'image'
                    'include'
                    'ingroup'
                    'internal'
                    'invariant'
                    'interface'
                    'latexonly'
                    'li'
                    'line'
                    'link'
                    'mainpage'
                    'name'
                    'namespace'
                    'nosubgrouping'
                    'note'
                    'overload'
                    'p'
                    'page'
                    'par'
                    'param'
                    'post'
                    'pre'
                    'ref'
                    'relates'
                    'remarks'
                    'return'
                    'retval'
                    'sa'
                    'section'
                    'see'
                    'showinitializer'
                    'since'
                    'skip'
                    'skipline'
                    'struct'
                    'subsection'
                    'test'
                    'throw'
                    'todo'
                    'typedef'
                    'union'
                    'until'
                    'var'
                    'verbatim'
                    'verbinclude'
                    'version'
                    'warning'
                    'weakgroup'
                    '$'
                    '@'
                    '<'
                    '>'
                    '\'
                    '&'
                    '#'
                    '{'
                    '}')
                end
                item
                  KeywordListNumber = 3
                  Name = 'Other Keywords'
                  Keywords.Strings = (
                    'internet')
                end>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = '/*'
              CommentBoxEnd = '*/'
              CommentBoxMiddle = '*'
              CommentBlock = '//'
              CommentAtLineStart = True
              CommentStreamStart = '/*'
              CommentStreamEnd = '*/'
              NumStyleBits = 5
            end
            item
              Name = 'AMXModX'
              Lexer = 'cpp'
              Styles = <
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'White space'
                  StyleNumber = 0
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment'
                  StyleNumber = 1
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Line Comment'
                  StyleNumber = 2
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Doc Comment'
                  StyleNumber = 3
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Number'
                  StyleNumber = 4
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 42496
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Keyword'
                  StyleNumber = 5
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Double quoted string'
                  StyleNumber = 6
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Single quoted string'
                  StyleNumber = 7
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Symbols/UUID'
                  StyleNumber = 8
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Preprocessor'
                  StyleNumber = 9
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clNavy
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Operators'
                  StyleNumber = 10
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clNavy
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Identifier'
                  StyleNumber = 11
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clMaroon
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'EOL if string is not closed'
                  StyleNumber = 12
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Verbatim strings for C#'
                  StyleNumber = 13
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 16724672
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Regular expressions'
                  StyleNumber = 14
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Doc Comment Line'
                  StyleNumber = 15
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'User-defined keywords'
                  StyleNumber = 16
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment keyword'
                  StyleNumber = 17
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clMaroon
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment keyword error'
                  StyleNumber = 18
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 11534336
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Global classes and typedefs'
                  StyleNumber = 19
                end
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15461355
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlue
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Visible = False
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end>
              Keywords = <
                item
                  KeywordListNumber = 0
                  Name = 'Primary keywords and identifiers'
                  Keywords.Strings = (
                    'bool'
                    'break'
                    'case'
                    'const'
                    'continue'
                    'default'
                    'delete'
                    'do'
                    'else'
                    'enum'
                    'false'
                    'Float'
                    'for'
                    'if'
                    'new'
                    'return'
                    'sizeof'
                    'switch'
                    'while'
                    'public'
                    'stock'
                    'true'
                    'native'
                    'forward'
                    'state'
                    'static'
                    'any')
                end
                item
                  KeywordListNumber = 1
                  Name = 'Secondary keywords and identifiers'
                end
                item
                  KeywordListNumber = 2
                  Name = 'Doc Comments'
                  Keywords.Strings = (
                    'a'
                    'addindex'
                    'addtogroup'
                    'anchor'
                    'arg'
                    'attention'
                    'author'
                    'b'
                    'brief'
                    'bug'
                    'c'
                    'class'
                    'code'
                    'date'
                    'def'
                    'defgroup'
                    'deprecated'
                    'dontinclude'
                    'e'
                    'em'
                    'endcode'
                    'endhtmlonly'
                    'endif'
                    'endlatexonly'
                    'endlink'
                    'endverbatim'
                    'enum'
                    'example'
                    'exception'
                    'f$'
                    'f['
                    'f]'
                    'file'
                    'fn'
                    'hideinitializer'
                    'htmlinclude'
                    'htmlonly'
                    'if'
                    'image'
                    'include'
                    'ingroup'
                    'internal'
                    'invariant'
                    'interface'
                    'latexonly'
                    'li'
                    'line'
                    'link'
                    'mainpage'
                    'name'
                    'namespace'
                    'nosubgrouping'
                    'note'
                    'overload'
                    'p'
                    'page'
                    'par'
                    'param'
                    'post'
                    'pre'
                    'ref'
                    'relates'
                    'remarks'
                    'return'
                    'retval'
                    'sa'
                    'section'
                    'see'
                    'showinitializer'
                    'since'
                    'skip'
                    'skipline'
                    'struct'
                    'subsection'
                    'test'
                    'throw'
                    'todo'
                    'typedef'
                    'union'
                    'until'
                    'var'
                    'verbatim'
                    'verbinclude'
                    'version'
                    'warning'
                    'weakgroup'
                    '$'
                    '@'
                    '<'
                    '>'
                    '\'
                    '&'
                    '#'
                    '{'
                    '}')
                end
                item
                  KeywordListNumber = 3
                  Name = 'Other Keywords'
                end>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = '/*'
              CommentBoxEnd = '*/'
              CommentBoxMiddle = '*'
              CommentBlock = '//'
              CommentAtLineStart = True
              CommentStreamStart = '/*'
              CommentStreamEnd = '*/'
              NumStyleBits = 5
            end
            item
              Name = 'SourceMod'
              Lexer = 'cpp'
              Styles = <
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'White space'
                  StyleNumber = 0
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment'
                  StyleNumber = 1
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Line Comment'
                  StyleNumber = 2
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Doc Comment'
                  StyleNumber = 3
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Number'
                  StyleNumber = 4
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 42496
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Keyword'
                  StyleNumber = 5
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Double quoted string'
                  StyleNumber = 6
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Single quoted string'
                  StyleNumber = 7
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Symbols/UUID'
                  StyleNumber = 8
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Preprocessor'
                  StyleNumber = 9
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clNavy
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Operators'
                  StyleNumber = 10
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clNavy
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Identifier'
                  StyleNumber = 11
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clMaroon
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'EOL if string is not closed'
                  StyleNumber = 12
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Verbatim strings for C#'
                  StyleNumber = 13
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 16724672
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Regular expressions'
                  StyleNumber = 14
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Doc Comment Line'
                  StyleNumber = 15
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'User-defined keywords'
                  StyleNumber = 16
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 33023
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment keyword'
                  StyleNumber = 17
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clMaroon
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment keyword error'
                  StyleNumber = 18
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 11534336
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Global classes and typedefs'
                  StyleNumber = 19
                end
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = 15461355
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlue
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Visible = False
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end>
              Keywords = <
                item
                  KeywordListNumber = 0
                  Name = 'Primary keywords and identifiers'
                  Keywords.Strings = (
                    'bool'
                    'break'
                    'case'
                    'const'
                    'continue'
                    'default'
                    'delete'
                    'do'
                    'else'
                    'enum'
                    'funcenum'
                    'false'
                    'for'
                    'if'
                    'new'
                    'return'
                    'sizeof'
                    'switch'
                    'while'
                    'public'
                    'stock'
                    'true'
                    'native'
                    'forward'
                    'state'
                    'static'
                    'decl'
                    'functag'
                    'Function'
                    'Plugin'
                    'Handle'
                    'String'
                    'Action'
                    'Float'
                    'AdminId'
                    'GroupId'
                    'any')
                end
                item
                  KeywordListNumber = 1
                  Name = 'Secondary keywords and identifiers'
                end
                item
                  KeywordListNumber = 2
                  Name = 'Doc Comments'
                  Keywords.Strings = (
                    'a'
                    'addindex'
                    'addtogroup'
                    'anchor'
                    'arg'
                    'attention'
                    'author'
                    'b'
                    'brief'
                    'bug'
                    'c'
                    'class'
                    'code'
                    'date'
                    'def'
                    'defgroup'
                    'deprecated'
                    'dontinclude'
                    'e'
                    'em'
                    'endcode'
                    'endhtmlonly'
                    'endif'
                    'endlatexonly'
                    'endlink'
                    'endverbatim'
                    'enum'
                    'example'
                    'exception'
                    'f$'
                    'f['
                    'f]'
                    'file'
                    'fn'
                    'hideinitializer'
                    'htmlinclude'
                    'htmlonly'
                    'if'
                    'image'
                    'include'
                    'ingroup'
                    'internal'
                    'invariant'
                    'interface'
                    'latexonly'
                    'li'
                    'line'
                    'link'
                    'mainpage'
                    'name'
                    'namespace'
                    'nosubgrouping'
                    'note'
                    'overload'
                    'p'
                    'page'
                    'par'
                    'param'
                    'post'
                    'pre'
                    'ref'
                    'relates'
                    'remarks'
                    'return'
                    'retval'
                    'sa'
                    'section'
                    'see'
                    'showinitializer'
                    'since'
                    'skip'
                    'skipline'
                    'struct'
                    'subsection'
                    'test'
                    'throw'
                    'todo'
                    'typedef'
                    'union'
                    'until'
                    'var'
                    'verbatim'
                    'verbinclude'
                    'version'
                    'warning'
                    'weakgroup'
                    '$'
                    '@'
                    '<'
                    '>'
                    '\'
                    '&'
                    '#'
                    '{'
                    '}')
                end
                item
                  KeywordListNumber = 3
                  Name = 'Other Keywords'
                end>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = '/*'
              CommentBoxEnd = '*/'
              CommentBoxMiddle = '*'
              CommentBlock = '//'
              CommentAtLineStart = True
              CommentStreamStart = '/*'
              CommentStreamEnd = '*/'
              NumStyleBits = 5
            end
            item
              Name = 'container'
              Lexer = 'container'
              Styles = <
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlack
                  BackColor = clActiveBorder
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlack
                  BackColor = clSilver
                  CharCase = CASE_MIXED
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end>
              Keywords = <>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = '/*'
              CommentBoxEnd = '*/'
              CommentBoxMiddle = '*'
              CommentBlock = '//'
              CommentAtLineStart = True
              CommentStreamStart = '/*'
              CommentStreamEnd = '*/'
              NumStyleBits = 5
            end
            item
              Name = 'C/C++'
              Lexer = 'cpp'
              Styles = <
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'White space'
                  StyleNumber = 0
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment'
                  StyleNumber = 1
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Line Comment'
                  StyleNumber = 2
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 9474192
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Doc Comment'
                  StyleNumber = 3
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 224
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Number'
                  StyleNumber = 4
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clOlive
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Keyword'
                  StyleNumber = 5
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Double quoted string'
                  StyleNumber = 6
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Single quoted string'
                  StyleNumber = 7
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Symbols/UUID'
                  StyleNumber = 8
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clFuchsia
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Preprocessor'
                  StyleNumber = 9
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Operators'
                  StyleNumber = 10
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Identifier'
                  StyleNumber = 11
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clWhite
                  BackColor = 2105376
                  CharCase = CASE_MIXED
                  EOLFilled = True
                  Name = 'EOL if string is not closed'
                  StyleNumber = 12
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Verbatim strings for C#'
                  StyleNumber = 13
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 16724672
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Regular expressions'
                  StyleNumber = 14
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Doc Comment Line'
                  StyleNumber = 15
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = 13421568
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'User-defined keywords'
                  StyleNumber = 16
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clLime
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment keyword'
                  StyleNumber = 17
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Comment keyword error'
                  StyleNumber = 18
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clDefault
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Global classes and typedefs'
                  StyleNumber = 19
                end
                item
                  FontName = 'Arial'
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlack
                  BackColor = 15461355
                  CharCase = CASE_MIXED
                  Name = 'LineNumbers'
                  StyleNumber = 33
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clYellow
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Ok Braces'
                  StyleNumber = 34
                end
                item
                  FontSize = 0
                  FontStyles = [fsBold]
                  ForeColor = clRed
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Bad Braces'
                  StyleNumber = 35
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clBlack
                  BackColor = clSilver
                  CharCase = CASE_MIXED
                  Name = 'Control Chars'
                  StyleNumber = 36
                end
                item
                  FontSize = 0
                  FontStyles = []
                  ForeColor = clGray
                  BackColor = clDefault
                  CharCase = CASE_MIXED
                  Name = 'Indent Guide'
                  StyleNumber = 37
                end>
              Keywords = <
                item
                  KeywordListNumber = 0
                  Name = 'Primary keywords and identifiers'
                  Keywords.Strings = (
                    '__asm'
                    '_asm'
                    'asm'
                    'auto'
                    '__automated'
                    'bool'
                    'break'
                    'case'
                    'catch'
                    '__cdecl'
                    '_cdecl'
                    'cdecl'
                    'char'
                    'class'
                    '__classid'
                    '__closure'
                    'const'
                    'const_cast'
                    'continue'
                    '__declspec'
                    'default'
                    'delete'
                    '__dispid'
                    'do'
                    'double'
                    'dynamic_cast'
                    'else'
                    'enum'
                    '__except'
                    'explicit'
                    '__export'
                    'export'
                    'extern'
                    'false'
                    '__fastcall'
                    '_fastcall'
                    '__finally'
                    'float'
                    'for'
                    'friend'
                    'goto'
                    'if'
                    '__import'
                    '_import'
                    '__inline'
                    'inline'
                    'int'
                    '__int16'
                    '__int32'
                    '__int64'
                    '__int8'
                    'long'
                    '__msfastcall'
                    '__msreturn'
                    'mutable'
                    'namespace'
                    'new'
                    '__pascal'
                    '_pascal'
                    'pascal'
                    'private'
                    '__property'
                    'protected'
                    'public'
                    '__published'
                    'register'
                    'reinterpret_cast'
                    'return'
                    '__rtti'
                    'short'
                    'signed'
                    'sizeof'
                    'static_cast'
                    'static'
                    '__stdcall'
                    '_stdcall'
                    'struct'
                    'switch'
                    'template'
                    'this'
                    '__thread'
                    'throw'
                    'true'
                    '__try'
                    'try'
                    'typedef'
                    'typeid'
                    'typename'
                    'union'
                    'unsigned'
                    'using'
                    'virtual'
                    'void'
                    'volatile'
                    'wchar_t'
                    'while'
                    'dllexport'
                    'dllimport'
                    'naked'
                    'noreturn'
                    'nothrow'
                    'novtable'
                    'property'
                    'selectany'
                    'thread'
                    'uuid')
                end
                item
                  KeywordListNumber = 1
                  Name = 'Secondary keywords and identifiers'
                  Keywords.Strings = (
                    'TStream'
                    'TFileStream'
                    'TMemoryStream'
                    'TBlobStream'
                    'TOleStream'
                    'TStrings'
                    'TStringList'
                    'AnsiString'
                    'String'
                    'WideString'
                    'cout'
                    'cin'
                    'cerr'
                    'endl'
                    'fstream'
                    'ostream'
                    'istream'
                    'wstring'
                    'string'
                    'deque'
                    'list'
                    'vector'
                    'set'
                    'multiset'
                    'bitset'
                    'map'
                    'multimap'
                    'stack'
                    'queue'
                    'priority_queue')
                end
                item
                  KeywordListNumber = 2
                  Name = 'Doc Comments'
                  Keywords.Strings = (
                    'a'
                    'addindex'
                    'addtogroup'
                    'anchor'
                    'arg'
                    'attention'
                    'author'
                    'b'
                    'brief'
                    'bug'
                    'c'
                    'class'
                    'code'
                    'date'
                    'def'
                    'defgroup'
                    'deprecated'
                    'dontinclude'
                    'e'
                    'em'
                    'endcode'
                    'endhtmlonly'
                    'endif'
                    'endlatexonly'
                    'endlink'
                    'endverbatim'
                    'enum'
                    'example'
                    'exception'
                    'f$'
                    'f['
                    'f]'
                    'file'
                    'fn'
                    'hideinitializer'
                    'htmlinclude'
                    'htmlonly'
                    'if'
                    'image'
                    'include'
                    'ingroup'
                    'internal'
                    'invariant'
                    'interface'
                    'latexonly'
                    'li'
                    'line'
                    'link'
                    'mainpage'
                    'name'
                    'namespace'
                    'nosubgrouping'
                    'note'
                    'overload'
                    'p'
                    'page'
                    'par'
                    'param'
                    'post'
                    'pre'
                    'ref'
                    'relates'
                    'remarks'
                    'return'
                    'retval'
                    'sa'
                    'section'
                    'see'
                    'showinitializer'
                    'since'
                    'skip'
                    'skipline'
                    'struct'
                    'subsection'
                    'test'
                    'throw'
                    'todo'
                    'typedef'
                    'union'
                    'until'
                    'var'
                    'verbatim'
                    'verbinclude'
                    'version'
                    'warning'
                    'weakgroup'
                    '$'
                    '@'
                    '<'
                    '>'
                    '\'
                    '&'
                    '#'
                    '{'
                    '}')
                end
                item
                  KeywordListNumber = 3
                  Name = 'Unused'
                end
                item
                  KeywordListNumber = 4
                  Name = 'Global classes and typedefs'
                end>
              AssignmentOperator = '='
              EndOfStatementOperator = ';'
              CommentBoxStart = '/*'
              CommentBoxEnd = '*/'
              CommentBoxMiddle = '*'
              CommentBlock = '//'
              CommentAtLineStart = True
              CommentStreamStart = '/*'
              CommentStreamEnd = '*/'
              NumStyleBits = 5
            end>
          LanguageManager.SelectedLanguage = 'SourceMod'
          FoldDrawFlags = [sciBelowIfNotExpanded]
          KeyCommands = <
            item
              Command = 2300
              ShortCut = 40
            end
            item
              Command = 2301
              ShortCut = 8232
            end
            item
              Command = 2342
              ShortCut = 16424
            end
            item
              Command = 2426
              ShortCut = 41000
            end
            item
              Command = 2302
              ShortCut = 38
            end
            item
              Command = 2303
              ShortCut = 8230
            end
            item
              Command = 2343
              ShortCut = 16422
            end
            item
              Command = 2427
              ShortCut = 40998
            end
            item
              Command = 2415
              ShortCut = 49190
            end
            item
              Command = 2416
              ShortCut = 57382
            end
            item
              Command = 2413
              ShortCut = 49192
            end
            item
              Command = 2414
              ShortCut = 57384
            end
            item
              Command = 2304
              ShortCut = 37
            end
            item
              Command = 2305
              ShortCut = 8229
            end
            item
              Command = 2308
              ShortCut = 16421
            end
            item
              Command = 2309
              ShortCut = 24613
            end
            item
              Command = 2428
              ShortCut = 40997
            end
            item
              Command = 2306
              ShortCut = 39
            end
            item
              Command = 2307
              ShortCut = 8231
            end
            item
              Command = 2310
              ShortCut = 16423
            end
            item
              Command = 2311
              ShortCut = 24615
            end
            item
              Command = 2429
              ShortCut = 40999
            end
            item
              Command = 2390
              ShortCut = 49189
            end
            item
              Command = 2391
              ShortCut = 57381
            end
            item
              Command = 2392
              ShortCut = 49191
            end
            item
              Command = 2393
              ShortCut = 57383
            end
            item
              Command = 2331
              ShortCut = 36
            end
            item
              Command = 2332
              ShortCut = 8228
            end
            item
              Command = 2431
              ShortCut = 40996
            end
            item
              Command = 2316
              ShortCut = 16420
            end
            item
              Command = 2317
              ShortCut = 24612
            end
            item
              Command = 2345
              ShortCut = 32804
            end
            item
              Command = 2314
              ShortCut = 35
            end
            item
              Command = 2315
              ShortCut = 8227
            end
            item
              Command = 2318
              ShortCut = 16419
            end
            item
              Command = 2319
              ShortCut = 24611
            end
            item
              Command = 2347
              ShortCut = 32803
            end
            item
              Command = 2432
              ShortCut = 40995
            end
            item
              Command = 2320
              ShortCut = 33
            end
            item
              Command = 2321
              ShortCut = 8225
            end
            item
              Command = 2433
              ShortCut = 40993
            end
            item
              Command = 2322
              ShortCut = 34
            end
            item
              Command = 2323
              ShortCut = 8226
            end
            item
              Command = 2434
              ShortCut = 40994
            end
            item
              Command = 2180
              ShortCut = 46
            end
            item
              Command = 2177
              ShortCut = 8238
            end
            item
              Command = 2336
              ShortCut = 16430
            end
            item
              Command = 2396
              ShortCut = 24622
            end
            item
              Command = 2324
              ShortCut = 45
            end
            item
              Command = 2179
              ShortCut = 8237
            end
            item
              Command = 2178
              ShortCut = 16429
            end
            item
              Command = 2325
              ShortCut = 27
            end
            item
              Command = 2326
              ShortCut = 8
            end
            item
              Command = 2326
              ShortCut = 8200
            end
            item
              Command = 2335
              ShortCut = 16392
            end
            item
              Command = 2176
              ShortCut = 32776
            end
            item
              Command = 2395
              ShortCut = 24584
            end
            item
              Command = 2176
              ShortCut = 16474
            end
            item
              Command = 2011
              ShortCut = 16473
            end
            item
              Command = 2177
              ShortCut = 16472
            end
            item
              Command = 2178
              ShortCut = 16451
            end
            item
              Command = 2179
              ShortCut = 16470
            end
            item
              Command = 2013
              ShortCut = 16449
            end
            item
              Command = 2327
              ShortCut = 9
            end
            item
              Command = 2328
              ShortCut = 8201
            end
            item
              Command = 2329
              ShortCut = 13
            end
            item
              Command = 2329
              ShortCut = 8205
            end
            item
              Command = 2333
              ShortCut = 16491
            end
            item
              Command = 2334
              ShortCut = 16493
            end
            item
              Command = 2373
              ShortCut = 16495
            end
            item
              Command = 2337
              ShortCut = 16460
            end
            item
              Command = 2338
              ShortCut = 24652
            end
            item
              Command = 2455
              ShortCut = 24660
            end
            item
              Command = 2339
              ShortCut = 16468
            end
            item
              Command = 2469
              ShortCut = 16452
            end
            item
              Command = 2340
              ShortCut = 16469
            end
            item
              Command = 2341
              ShortCut = 24661
            end>
        end
        object pnlCallTip: TJvPanel
          Left = 408
          Top = 110
          Width = 187
          Height = 16
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          OnMouseLeave = pnlCallTipMouseLeave
          OnPaint = pnlCallTipPaint
          BevelOuter = bvNone
          Color = clInfoBk
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Visible = False
          OnClick = pnlCallTipClick
          OnMouseMove = pnlCallTipMouseMove
        end
        object pnlACTB: TJvPanel
          Left = 408
          Top = 81
          Width = 96
          Height = 27
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          OnMouseLeave = pnlACTBMouseLeave
          Color = 15461355
          TabOrder = 2
          Visible = False
          OnClick = ACPanelClick
          object bvlSpace: TBevel
            Left = 25
            Top = 3
            Width = 3
            Height = 20
            Shape = bsLeftLine
          end
          object cmdShowConstVal: TFlatButton
            Left = 72
            Top = 3
            Width = 20
            Height = 20
            Hint = 'Show Constant Values'
            ColorFocused = 16245198
            ColorDown = 16245198
            ColorHighLight = 8623776
            ColorShadow = 8623776
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B1A1C1B1A1C1B1A1C1B1A1C1B1A1C1B
              1A1C1B1A1C1B1A1C1B1A1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              1B1A1C3AC0F732BDF63AC0F74BC8F961D1FB88E3FE94E8FFF1FBFD1B1A1CFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B1A1C33BDF625B7F533BDF646C5F85C
              CFFA86E2FE94E8FFF1FBFD1A86AA1B1A1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              1B1A1C3AC0F732BDF63AC0F74BC7F960D2FB88E3FE94E8FFF1FBFD1A86AA1A86
              AA1B1A1CFFFFFFFFFFFFFFFFFFFFFFFF1B1A1C4BC8F846C6F84BC7F958CDFA6A
              D5FB8CE5FE94E8FFF1FBFD1A86AA1A86AA1B1A1CFFFFFFFFFFFFFFFFFFFFFFFF
              1B1A1CF1FBFDF1FBFDF1FBFDF1FBFDF1FBFDF1FBFDF1FBFDF1FBFD1A86AA1A86
              AA1B1A1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B1A1C94E8FF94E8FF94E8FF94
              E8FF94E8FF94E8FF94E8FFF1FBFD1A86AA1B1A1CFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF1B1A1C94E8FF94E8FF94E8FF94E8FF94E8FF94E8FF94E8FFF1FB
              FD1B1A1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B1A1C1B1A1C1B
              1A1C1B1A1C1B1A1C1B1A1C1B1A1C1B1A1C1B1A1CFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323EDBFFFFFF323EDBFFFFFF323EDBFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              323EDBFFFFFF323EDBFFFFFF323EDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323EDB323EDB323EDB323EDB323EDBFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = cmdShowConstValClick
          end
          object cmdShowVariables: TFlatButton
            Left = 50
            Top = 3
            Width = 20
            Height = 20
            Hint = 'Show Variable Items'
            ColorFocused = 16245198
            ColorDown = 16245198
            ColorHighLight = 8623776
            ColorShadow = 8623776
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004900004800004C00004800004800
              004800004900004900004CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000488B8BFF8585FF8E8EFF9A9AFFA7A7FFC5C5FFCFCFFFF5F5FF000049FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000498888FF8080FF8888FF9595FFA6
              A6FFC3C3FFCFCFFFF4F4FF2424EC000049FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000498B8BFF8888FF8B8BFF9797FFA7A7FFC5C5FFCECEFFF5F5FF2626ED2626
              ED000048FFFFFFFFFFFFFFFFFFFFFFFF0000499797FF9797FF9A9AFFA1A1FFAE
              AEFFCACAFFCFCFFFF5F5FF2626ED2626ED000048FFFFFFFFFFFFFFFFFFFFFFFF
              000048F4F4FFF5F5FFF5F5FFF5F5FFF5F5FFF5F5FFF4F4FFF5F5FF2626ED2626
              ED000049FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000048CFCFFFCECEFFCFCFFFCF
              CFFFCFCFFFCFCFFFCECEFFF5F5FF2626ED000048FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF000048CFCFFFCECEFFCFCFFFCBCBFFCFCFFFCFCFFFCFCFFFF5F5
              FF000048FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004900004800
              004C000048000048000048000048000048000049FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              4D45364D45364D4536FFFFFF918C84918C84918C84FFFFFFC9C7C3C9C7C3C9C7
              C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D45364D45364D4536FFFFFF918C8491
              8C84918C84FFFFFFC9C7C3C9C7C3C9C7C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              4D45364D45364D4536FFFFFF918C84918C84918C84FFFFFFC9C7C3C9C7C3C9C7
              C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = cmdShowVariablesClick
          end
          object cmdShowFuncs: TFlatButton
            Left = 28
            Top = 3
            Width = 20
            Height = 20
            Hint = 'Show Functions'
            ColorFocused = 16245198
            ColorDown = 16245198
            ColorHighLight = 8623776
            ColorShadow = 8623776
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A63586A63586A63586A63586A
              63586A63586A63586A63586A6358FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A63
              58FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B1A1C1B1A1C1B1A1C1B1A1C1B1A1C1B
              1A1C1B1A1C1B1A1C1B1A1CFFFFFFFFFFFF6A6358FFFFFFFFFFFFFFFFFFFFFFFF
              1B1A1C3AC0F732BDF63AC0F74BC8F961D1FB88E3FE94E8FFF1FBFD1B1A1CFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B1A1C33BDF625B7F533BDF646C5F85C
              CFFA86E2FE94E8FFF1FBFD1A86AA1B1A1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              1B1A1C3AC0F732BDF63AC0F74BC7F960D2FB88E3FE94E8FFF1FBFD1A86AA1A86
              AA1B1A1CFFFFFFFFFFFFFFFFFFFFFFFF1B1A1C4BC8F846C6F84BC7F958CDFA6A
              D5FB8CE5FE94E8FFF1FBFD1A86AA1A86AA1B1A1CFFFFFFFFFFFFFFFFFFFFFFFF
              1B1A1CF1FBFDF1FBFDF1FBFDF1FBFDF1FBFDF1FBFDF1FBFDF1FBFD1A86AA1A86
              AA1B1A1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B1A1C94E8FF94E8FF94E8FF94
              E8FF94E8FF94E8FF94E8FFF1FBFD1A86AA1B1A1CFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF1B1A1C94E8FF94E8FF94E8FF94E8FF94E8FF94E8FF94E8FFF1FB
              FD1B1A1CFFFFFFFFFFFFFFFFFFFFFFFF6A6358FFFFFFFFFFFF1B1A1C1B1A1C1B
              1A1C1B1A1C1B1A1C1B1A1C1B1A1C1B1A1C1B1A1CFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF6A6358FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A63586A63586A63586A
              63586A63586A63586A63586A63586A6358FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = cmdShowFuncsClick
          end
          object cmdShowIncItems: TFlatButton
            Left = 4
            Top = 3
            Width = 19
            Height = 20
            Hint = 'Show Items in Includes'
            Color = 16245198
            ColorFocused = 16377557
            ColorDown = 16245198
            ColorBorder = 13530146
            ColorHighLight = 14716743
            ColorShadow = 14716743
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2764E12764E113
              3270D4B280A96500A96500543200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F93D3
              1F26A70F135393B2F02764E12764E1133270D4B280A96500A965005432005432
              00FFFFFFFFFFFFFFFFFFFFFFFF8F93D31F26A70F135393B2F02764E12764E113
              3270D4B280A96500A96500543200543200543200FFFFFFFFFFFFFFFFFF8F93D3
              1F26A70F135393B2F02764E12764E1133270D4B280A96500A965005432005432
              00543200FFFFFFFFFFFFFFFFFF8F93D31F26A70F135393B2F02764E12764E113
              3270D4B280A96500A96500543200543200543200FFFFFFFFFFFFFFFFFF8F93D3
              1F26A70F135393B2F02764E12764E1133270D4B280A96500A965005432005432
              00543200FFFFFFFFFFFFFFFFFF8F93D31F26A70F135393B2F02764E12764E113
              3270D4B280A96500A96500543200543200543200FFFFFFFFFFFFFFFFFF8F93D3
              1F26A70F135393B2F02764E12764E1133270D4B280A96500A965005432005432
              00543200FFFFFFFFFFFFFFFFFF8F93D31F26A70F135393B2F02764E12764E113
              3270D4B280A96500A96500543200543200543200FFFFFFFFFFFFFFFFFF8F93D3
              1F26A70F135393B2F02764E12764E1133270D4B280EEE0CCEEE0CCEEE0CC5432
              00543200FFFFFFFFFFFFFFFFFF8F93D31F26A70F135393B2F0D4E0F9D4E0F9D4
              E0F9133270D4B280EEE0CCEEE0CCEEE0CC543200FFFFFFFFFFFFFFFFFF8F93D3
              D2D4EDD2D4ED0F135393B2F0D4E0F9D4E0F9D4E0F9133270D4B280D4B2805432
              00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F93D3D2D4EDD2D4ED0F135393B2F0D4
              E0F9133270FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF8F93D38F93D38F93D347496993B2F0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = cmdShowIncItemsClick
          end
        end
        object pnlAutoComplete: TJvPanel
          Left = 408
          Top = 6
          Width = 245
          Height = 74
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          Movable = True
          Sizeable = True
          Color = 15461355
          Constraints.MinHeight = 4
          Constraints.MinWidth = 4
          TabOrder = 1
          Visible = False
          OnClick = ACPanelClick
          OnResize = pnlAutoCompleteResize
          DesignSize = (
            245
            74)
          object lvAutoComplete: TJvListView
            Left = 3
            Top = 3
            Width = 239
            Height = 68
            Anchors = [akLeft, akTop, akRight, akBottom]
            BorderStyle = bsNone
            Columns = <
              item
                Width = 199
              end>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            OwnerDraw = True
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            ShowColumnHeaders = False
            SmallImages = ilCodeExplorer
            SortType = stText
            TabOrder = 0
            ViewStyle = vsReport
            OnDblClick = lvAutoCompleteDblClick
            OnDrawItem = lvAutoCompleteDrawItem
            OnKeyDown = lvAutoCompleteKeyDown
            ColumnsOrder = '0=199'
            Groups = <>
            OnMouseEnter = lvAutoCompleteMouseEnter
            ExtendedColumns = <
              item
              end>
          end
        end
      end
    end
    object dckCodeTools: TSpTBXMultiDock
      Left = 658
      Top = 26
      Width = 210
      Height = 333
      Position = dpxRight
      object pnlCodeExplorer: TSpTBXDockablePanel
        Left = 0
        Top = 0
        Align = alBottom
        Caption = 'Code Explorer'
        DefaultDock = dckCodeTools
        DockedWidth = 206
        DockedHeight = 180
        DockPos = 2
        FloatingWidth = 161
        FloatingHeight = 128
        TabOrder = 0
        OnClose = pnlCodeExplorerClose
        OnRecreated = pnlCodeExplorerRecreated
        DefaultDockedHeight = 180
        Images = ilTBX
        Options.ButtonBorders = False
        Options.Close = False
        Options.Minimize = True
        Options.MinimizeImageIndex = 3
        Options.RestoreImageIndex = 4
        Options.TitleBarSize = 20
        object tbxExplorer: TSpTBXTabControl
          Left = 0
          Top = 26
          Width = 206
          Height = 128
          Align = alClient
          Color = clBtnFace
          ActiveTabIndex = 0
          TabPosition = ttpBottom
          TabVisible = False
          ThemeType = tttTBX
          HiddenItems = <>
          object tbxCode: TSpTBXTabItem
            Caption = 'Code'
            Checked = True
            ImageIndex = 18
            Images = ilMain
            TabPosition = ttpBottom
            ThemeType = tttTBX
          end
          object tbxProjectFiles: TSpTBXTabItem
            Caption = 'Project Files'
            ImageIndex = 19
            Images = ilMain
            TabPosition = ttpBottom
            ThemeType = tttTBX
          end
          object tsProjectFiles: TSpTBXTabSheet
            Left = 0
            Top = 0
            Width = 206
            Height = 102
            Caption = 'Project Files'
            ImageIndex = 19
            TabItem = 'tbxProjectFiles'
            object lstProjectFiles: TSpTBXListBox
              Left = 2
              Top = 2
              Width = 202
              Height = 100
              Align = alClient
              ItemHeight = 16
              TabOrder = 0
            end
          end
          object tsCodeExplorer: TSpTBXTabSheet
            Left = 0
            Top = 0
            Width = 206
            Height = 102
            Caption = 'Code'
            ImageIndex = 18
            TabItem = 'tbxCode'
            object pnlCodeExplorerBorder: TPanel
              Left = 2
              Top = 2
              Width = 202
              Height = 100
              Align = alClient
              BevelOuter = bvLowered
              TabOrder = 0
              object trvCodeExplorer: TTreeView
                Left = 1
                Top = 1
                Width = 200
                Height = 98
                Align = alClient
                BorderStyle = bsNone
                Images = ilCodeExplorer
                Indent = 19
                ReadOnly = True
                TabOrder = 0
                OnAdvancedCustomDraw = trvCodeExplorerAdvancedCustomDraw
                OnClick = trvCodeExplorerClick
                OnDblClick = trvCodeExplorerDblClick
                OnEditing = trvCodeExplorerEditing
              end
            end
          end
        end
      end
      object pnlCodeInspector: TSpTBXDockablePanel
        Left = 0
        Top = 158
        Align = alBottom
        Caption = 'Code Inspector'
        DefaultDock = dckCodeTools
        DockedWidth = 206
        DockedHeight = 145
        DockPos = 158
        FloatingWidth = 161
        FloatingHeight = 128
        TabOrder = 1
        Images = ilTBX
        Options.ButtonBorders = False
        Options.Close = False
        Options.Minimize = True
        Options.MinimizeImageIndex = 4
        Options.RestoreImageIndex = 3
        Options.TitleBarSize = 20
        object jviInspector: TJvInspector
          Left = 0
          Top = 47
          Width = 206
          Height = 108
          Style = isItemPainter
          Align = alClient
          Divider = 100
          ItemHeight = 16
          Painter = JvInspectorDotNETPainter
        end
        object cboInspector: TSpTBXComboBox
          Left = 0
          Top = 26
          Width = 206
          Height = 21
          Align = alTop
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 2
          Text = '(None)'
          OnChange = cboInspectorChange
          Items.Strings = (
            '(None)')
        end
      end
    end
  end
  object tbxSwitcher: TTBXSwitcher
    Theme = 'Default'
    Left = 770
    Top = 4
  end
  object JvInspectorDotNETPainter: TJvInspectorDotNETPainter
    CategoryFont.Charset = DEFAULT_CHARSET
    CategoryFont.Color = clBtnText
    CategoryFont.Height = -11
    CategoryFont.Name = 'MS Sans Serif'
    CategoryFont.Style = []
    NameFont.Charset = DEFAULT_CHARSET
    NameFont.Color = clWindowText
    NameFont.Height = -11
    NameFont.Name = 'MS Sans Serif'
    NameFont.Style = []
    ValueFont.Charset = DEFAULT_CHARSET
    ValueFont.Color = clWindowText
    ValueFont.Height = -11
    ValueFont.Name = 'MS Sans Serif'
    ValueFont.Style = []
    DrawNameEndEllipsis = False
    HideSelectFont.Charset = DEFAULT_CHARSET
    HideSelectFont.Color = clHighlightText
    HideSelectFont.Height = -11
    HideSelectFont.Name = 'MS Sans Serif'
    HideSelectFont.Style = []
    SelectedFont.Charset = DEFAULT_CHARSET
    SelectedFont.Color = clHighlightText
    SelectedFont.Height = -11
    SelectedFont.Name = 'MS Sans Serif'
    SelectedFont.Style = []
    Left = 740
    Top = 4
  end
  object ilCodeExplorer: TPngImageList
    PngImages = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001BB4944415478DA8D93BF4B425114C7BF2F10955AB41FFF
          414B2ED5524DFD1C0A92D008310DA440A2A5ADADA0B67E0C39B4440445923FCA
          088B5C2497B0966869129A23C1A6D2F4E5EDDCFBAE5959F40E7C3997F3389F7B
          CEB9E72900EAB6572CEFF861FEA5671BB90CA94CAAF95E318592D9F4C27DCD87
          DD351B870CD2F19A5494612681EC1B606A2E58033034B40BC87F950980C7BF25
          F91453EA344F66B40CFC55593F1DAF48250170FB96A1E61F100DEF41AF552002
          E0F2CE237C10C06FB3F8CB6425DD0230E1F2D0ED41786777642BEF604C255FA2
          6E8AA43771E66DBF3E86606E7120B4BFCE018B0230EE1CC6712C81C9990D2834
          836AB2AA2583FB9288E59F8E616AB22372B8CD019B02E0B077E1247E03B76F49
          DCC2CA6591242A21C06715142B642F606C1CC25134C2010101181B6EC5692203
          3E0BED059848E2FBC3CA0579BB56C55BEE12466B2F557C5E05D8079B114F66C1
          6741F56B63F832030DA40A483E9786D9DA83D869AA0A18ED33E12C55C0B873E4
          73E12A09DAD2A9B22DE025778B7A6B27B59CE6805585626D04D1FF7ED53D8890
          3BE10003A983C4F7DEAA333F4FBA23251519E0DE28617A8CFF9D7C38AAC218D3
          99F3BB7D000FD0FDF43A15E96F0000000049454E44AE426082}
        Name = 'PngImage0'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001E04944415478DA6364606060EA2A15F8CB8006CABA3F68
          03A9DB40FC9B010F60046AFE9F57B9064362527B08C8106720F30410FF02E2FF
          40FC0F4AA31A9099DB8461002B8F16D81042AE021B90915D09E5822C6082D20C
          0C6C7CA6F85CF51DE41AB0016969E94026D0504656B0C21F6FB7322C5AFB049F
          D719AEDCFE5DB468C3D7996003521283E1127F7F3C6098BFFC2C434EC91C0626
          56019C06405DE301362029D6192EF1F5F55186953B7E30A467E432FCFFF70BEC
          9DFFFF405EFEC3F0FDE57A060E512FB0BA39F356830C28031B901805F1EB9F6F
          F719166F78C390969AC4F0FFFF1FA0B7FE02E95F10FADF1F862F2F7731708BDA
          32CC5BBC1BA4790350CB4AB001F1A1AA60035EBD78C4B0FDF04F068897FE825D
          00B11D18A8FFFF31BC7B7E8C4150DC9861FEB26320032601253AC106C4FA0B33
          7CFEF28561C3DE9F0C49B1AE700DA028877903C47EFBFC02C3A6FD3FE1B603F1
          1AB001EED66C0C3B8FFE02BB2231CA02915680DE4078E50FC38BA7F7C0EAA0B6
          7701F153B00120B5BE0EEC0C22528640B55F2001F71FE10A98418BD63E86D9BE
          0A88CF02F12D4620A10534E42A03910068403F90EA05E267E084044AB5406C08
          C4A0B81422A01FE4BC03407C141CAFA0A40C4BD240CC0E350C1F00E5DA5F30CD
          608DFFFFFF67A00400002523F54AE46FB5C10000000049454E44AE426082}
        Name = 'PngImage1'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D45000000000000000973942E0000011A49
          44415478DACD92BF0EC15014C6BF1BC49F92B05236B5EAC01B489078023C83C5
          683448584C7D1082C41B58EC62C4C66410A9D4FD9356B557108B93DCE49CDCEF
          FCEE777A4AF063103B29571A969DAF9613D21F8D9DBAD7ED90BF0158DEBE9764
          49582EBD937F0BF0B997026A54CCD4417A4C7A164267D1B1EC915E03AA54385F
          AF0582D06BD304299538404D67B86677D8CB01BE66DBABAEBFDF026F3E9F9F1A
          1FD30BE049D779D9DA6C30F73A6073CF0C43148100100E038904A0AA40280468
          9A036852C0420A180E81DB4D00E2712099047239201A050A850F00830170B900
          9188783D9502B25901CBE7712C16D1DE6E1DFBFE6FC01C5CAFE245D6C420CC41
          2CC647A82BCA53B3CF817BF75E011D0A53C9DABFF913A57107AF47671129B526
          6E0000000049454E44AE426082}
        Name = 'PngImage2'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D45000000000000000973942E000001D649
          44415478DA8D923F481B511CC73F67EE482E896228B460D54DDDAA51E950972E
          852A3888E052843A587451B0523B38894324856297947629DD5AEA62C5282E52
          3A15259BA048C1491B301A3D25C65CAFEFDDE969FE90E6C13BDE7BF7FB7EDEF7
          F77B3F85CA8655B0578A160F9FF4BA41BFD6BE2BB36FE6ADE9C9717B3FB59A44
          533D647326A7E719627D8DAEFEFF80F17E22039FF06A2A17972647C63973CBA3
          30BF501E206D0F7FDBE35E28C8ECE20BD7FB74EF07FEA40DF6536996861FDCA4
          502AEFA12FBFB92B00A180CEEBAFCF9D747A6224D3671CA44E888FB496070C7C
          DEE64E8D9F1ADD276C8F08F17B4E440D0E4FCF481E1BAC8F759606740B715C2E
          44FE720C3D8AA2AA557CFCF1D28DE9BC3FC1C6ABAE62C053294E24C4D742696F
          E7F1BB0D74AF865AA590FB6B11DF9AA1A36E82CDA9AEFC22168AE52F251CB6CF
          C3919F7804C01480C4FEDBEB17C807D862C328643A518140618AC4AF7A48B975
          682DC762CEC6E301AF17AAABA1BE1E340D9A9B495D397AB6B3C34A4940340AA6
          E9008241A8AD8546D175BA0E2D2D15002211C864C0E7736E0F85A0A1C1813535
          71D8D6C6E0EEAE6B3F0F60D7403AC8669D1BA54842A403BFDF4EA147D4E2B6B8
          C881EC6555CC5C890091144B143F7BB94EAC68FC038B53A40D6A0198BD000000
          0049454E44AE426082}
        Name = 'PngImage3'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D45000000000000000973942E0000012649
          44415478DA6364A01030C21866AEBEFF61EC53BB3733B6F44C84F36B4AF2190F
          1F3FF93F32388861F9DA750CB696E68C441B30A3AF0B6E1B4833C8101878F2EC
          292351061C3B798AE1E19327708D078F9E008BA318800BC84849FFA7BF019E0C
          0CFF41EEDF0E2465A56548F3820750F3F6F3E72146181A9266008A6690948101
          F10680357FF902D108035C5CC41B00F2F7B6E9D3211C6666060676760686B838
          30176408280DC000282D8034A32424B001DDDD0C0C7FFF420CE0E16160101060
          608888403104A459E7D953861D50BDA80674743030FCF8C1C0C0C1C1C0C0CBCB
          C0202808D429CBC0606303374417A8793B923ED43000B9E0D72F06064E4E880B
          4086C8C981C30214A0600D8CA8018FE20250DCB300F11F2C0A809E62D882A41E
          C3007201009598B91108B679F30000000049454E44AE426082}
        Name = 'PngImage4'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D45000000000000000973942E000000CD49
          44415478DA6364A0103052CD80DB7646FFD125550F9D2368018A01200DE834FD
          0CA06A20CA4849FF27A4F1C9B3A78C580D00697E7CAE12A7C67FC2B10CF2F25A
          D80D2046F3DA6E4D86A2298C980680343F7C780DAFB3419A4100A70177D61900
          ADF9CDC0C8C8CAC0C8C6CBC0C821C4C02CA0C4C0C8CC01B71DAF01B797C933FC
          FFFB03AC81895D9081895B94815950838191958738036E2D9660F8FFEB13D076
          3E06260E6106262E310616612D301F9BFFF1BB8003E8024E3106662175B80B90
          431FAB01C4C63D5603C80500DB4170118757988E0000000049454E44AE426082}
        Name = 'PngImage5'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D45000000000000000973942E0000010849
          44415478DA6364A0103052DD8088E4ACFFC8FC7F1F5EE3D4BC6AED6A464674CD
          2BE64E43110B0B0EFD9FD03C0545E399C37B19AEEC5A8F6A00B266192969B82B
          AC2CAD184006789D798130E1E26186B00707315D00D3FCF85C259C1F9E7D9078
          03D03563350449334A2082343F7C780D67804546A430AC52B0076B3E76FC18C3
          93674F310DB8B3CE0018ECBF191819591918D9781918398418A2EB888C059001
          B797C933FCFFFB838191998381895D9081895B9421BAF12B0351B10032E0D662
          0986FFBF3E016DE76360E2106660E212638869F9495C2062B88003E8024E3186
          E8A62FC41B80CBAF286901572C1002A014098B0598660C03D0F3013A00E50B64
          CD24B90017000003C9A1112D6C5DF20000000049454E44AE426082}
        Name = 'PngImage6'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D45000000000000000973942E000000FD49
          44415478DA6364A01030227364A4A4FF83E827CF9E32926C00483348634472D6
          FF23DB3732D878FAE3D4B462EE3446AC06202B22D615280614945580D93D93A7
          32B07CFF8C5723CC029C063C3F9A8355E33FE1580679792DEC06202B7C7CAE12
          ABE6B5DD9A0C455318B11BF0F0E135BCCE066906019C06DC596700B4E6370323
          232B03231B2F0323871003B3801203233307DC76BC06DC5E26CFF0FFEF0FB006
          26764106266E510666410D0646561EE20CB8B55882E1FFAF4F40DBF918983884
          1998B8C4185884B5C07C6CFEC7EF020EA00B38C5189885D4E12E400E7D820909
          5FDC83522B2C35129DE661005933860120494206206B26CB05E80000262E7B11
          CAE21A810000000049454E44AE426082}
        Name = 'PngImage7'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D45000000000000000973942E000001AE49
          44415478DA9D934D2804611CC69F7766D67ED0D6DA5AB2B2471F07923D717156
          0E5272512BAD70A05659072739ACF620DA102951425C2472931C49392894523E
          B77CEC67ECEEEC78E72D6B66ED36F21CA6DEF9BFCFEFFDBFCFFC87402D296B4D
          A021A2347A0F82D0093C12291191F807E6DA2A34413F80A176F83A96A1D709F8
          4C8A788BC631B9D70F4C6FA3B36740655A5F9A254A80E4DEBA4589A508133BBD
          994D63AD0B780E45F1F81AC2AEBB366F170CD0BD71031B05580A8D18DD74B182
          B7650EC1500C4FAF61ECF7D5A1BCCCAE32DE3DDC930CA063E51256B30966A381
          B6DD47CDF308D30C5E223104DFA3381C74427A0A3063DADA0587A3460D90EF2F
          ABBBD10F41E0B078349C39C969F7E064A4890164F3B6BF1A9E0051015888CD33
          2730EA75103882545AC2FEC5381ACA3C38F536414C86D826D92C2B27407ED4FB
          8EC153804801678F53EC0BB0A2E2F47C00392489BE5405953C7781B75481E88A
          FE06B85A2D859408831498C119ACE04C3608D61AB6CE75FF5F80EB350724F103
          84375080059CD106BEB832D38132FD9C00ADB9FF36D3C994BEA751F367C996D2
          FC0B2017B5004AF3BF3AC8D61705EBB711E06389720000000049454E44AE4260
          82}
        Name = 'PngImage8'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D45000000000000000973942E000000D649
          44415478DA6364A01030A20BC84849FF7FF2EC292349068034C10496AF5DC710
          191C045760E3E98FA169C5DC698C18061C3B798AE1E193277045078F9E6098D1
          D7C540C835040DC00560061334E0F1B94A148DFF846319E4E5B5C83300A4796D
          B72643D11446E20D78F8F01A5C0CA419044832E0D1E9420646660EB8EDA41B70
          329781919507BF013043406900064069E1DE56470616612D0646363EACFEC730
          003921DD5D67C0C0C429C6C02CA40E770172E8E334001F80698E48CEFA0F4B8D
          44A7791840D68C610048929001C89AC972013A0000B78EA911E9057155000000
          0049454E44AE426082}
        Name = 'PngImage9'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D45000000000000000973942E0000009C49
          44415478DA6364A0103022732E4FEEFF0F634FDBB683A13DD38741C02F979128
          03409AA51C9DC1EC347B5B86B9F35B1838F51C19CA83EC19269C7BCB88D7005C
          9A6100648840C34130BBA1A18181E1DC1A460C03AE4C9EC0B0E6ED079C9A7DF4
          A4E0622641697043B01AF071D314B0C2FE736FB06B0601520C68D87C15A2E9EC
          6A84E7470D18F206A0A74474F03045FD3F4E039034E334801400008FD8E911B3
          F1F64F0000000049454E44AE426082}
        Name = 'PngImage10'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D45000000000000000973942E000000D949
          44415478DA6364A0103052DD8088E4ACFF8434AD983B8D11AB0120CDC89224B9
          0059B38C943441573C79F69411AB17409A1F9FABC4A9F19F702C83BCBC167603
          88D1BCB65B93A1680A23A60120CD0F1F5EC3EB6C906610C069C09D7506406B7E
          333032B23230B2F13230720831300B2831303273C06DC76BC0ED65F20CFFFFFE
          006B6062176460E216656016D4606064E521CE805B8B2518FEFFFA04B49D8F81
          89439881894B8C8145580BCCC7E67FFC2EE000BA80538C8159481DEE02E4D0C7
          6A00B1718F9C6648CE0BE8A91523291332003DA9539C1B01E0E96C11917CB871
          0000000049454E44AE426082}
        Name = 'PngImage11'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D45000000000000000973942E0000011149
          44415478DA6364A01030C21866AEBEFF61EC53BB3733B6F44C84F36B4AF2190F
          1F3F09E7DB5A9A330E4203280E03AA1AE0C9C0F01FE45E1620FE8343D376A85E
          0C033C809AB79F3F0F31821128FD0768040B0B42819A1A83273737C30E6C0660
          68460620317575867786860CD1B76E611A00D6FCE50BA6469866A038483308C4
          000DC0F002C8DFDBA64F877098991918D8D9191878791918646418185859C14E
          871980D5056003BABB1918FEFE8518C0C3C3C02020C0C02027C7C0C0C909773E
          7E033A3A18187EFC6060E0E080D82E28C8C0202B0B314C5595E1AD810143EC9D
          3B70E7638601C805BF7E416C046902190272011717D80B5EC0D0DF8E16F0282E
          C016F73005404F316CC112ED14A7440013066E11B46AACF20000000049454E44
          AE426082}
        Name = 'PngImage12'
        Background = clWindow
      end>
    Left = 650
    Top = 4
    Bitmap = {}
  end
  object ilTBX: TPngImageList
    PngImages = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003A24944415478DA35526B4C1C65143DDFCCEEEC837D4077
          6181852D2F6D283F96258B96D89A144D346DF547D558111B509A629BB4D50613
          0D3E6A62B4B16935449AA62E21C5C4F8CBA4312116284213A5A6E15124259B16
          2B6C60C185CD5AF6318F6FC73B264E723399FB7DE7CC39F75CD61E0A41E07C7F
          533CFE83AC28D220D093E6FCAA299F47AD28628FD90C8BA681298AB7DA661BF1
          DAEDBBFBD6D6BEFF8BF38E6500ACADB1717FE3EAEA8F1D2D2D6EB3C582FEE161
          6590B153194DBBB2DB64C29344602670593E3FFAF4C183C1C75A5BF17B24A27F
          76E7CED088AE77B20BE5E589CE5DBB3C85172F823386446F2F0627269408E727
          FD26D3B77B45D151C9F9AD3DA150635D4F0F4C0D0DB0DEBC8999FE7EFDC8F4F4
          7976CEE3D93E1B0C1608DDDDC8B9DD903637F1F7C000BEBB7D5BFE4D14CF3D2B
          08879FAAA909D7767440AAAA82A6AA285A5DC51F434378796A6A94D5FA7C5D6F
          28CA3727EAEA24F3A143503D1EB0540AB1EBD731138DEAFED252D670E000AC3B
          778267B3702612581C1BC399B9B9F824E74759A0B8187A3E7FFC18E75FBFE5F7
          5BC4E66670970BCAA34748CCCEC241405720009ECBA12093C1D2DDBB78776121
          7E8BC034C31116A03F6ED3C4455DEF3A09F4BDEA765BCDD5D5106D3640D7613C
          3AC9E694C4523C8E8FEFDF8F4F71DE46ED71E38CB5902FCE3954BA506432BDF7
          BAAA7EF184A230381C10280552074E6F5592F0E183075BA3B2FC820BF8951138
          6D10BC190E1B7B005DD35C95B23CBA6F63A359A2196C5122692A13455B40964A
          C8EA5432295F8BC54EE480012781FF34088E363541CBE71D814C66F2A5F5F590
          9BC02B74B041952102C16A456161213C54D564772216932F3D7C785A05AE1877
          D86BE17059453A3D7C64652558BEBD8D756A26A814922C78BDD0489DB11F4E8A
          B8B8A8087E221A8E46E5CB4B4BA7EF1109FBA0BE7EB66D793958994EFF07FCC7
          980C81EFEDD881414549B65AAD05CFD8ED5286D6DA49563CD4F7399DF8797E5E
          39158D76B1FE8A0AF5ED58CC9424DC269548AB3B4F523FC966E333A9D42BF592
          F4F8199FEFF23E8F473254D9095CE3F763736D0DCF8D8FFFC29A7DBEC859CE3B
          5F4C26599608260DB02CC7E752A93689B1F152418097B163C7CBCAFA9E0F042C
          4EB221D34E7C3A3D9D8B6C6DBDCF2AC8A75B10AE7DA4EBED56C6582F81E753A9
          76E21AA36F5452848C22B603DDEF54557DB5B7A4C4727E7151BE9A4AF5D2965C
          6075144F86B2366BDAE739550DAF67325F12F886318AFF096C74AED03049513B
          44B17341D37EE2C025E3CEBF5360904783687D980000000049454E44AE426082}
        Name = 'PngImage0'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002664944415478DAA5D2DD4B14511806F0676676BE7546DD
          5114D90D33570B8CB2B4502393C00C0CBAB2AB208CD0D59B882E820AF1422248
          2F2213A2AEA43FA0885222592C14D2840CD60233365B4C575D77D7D9D90FE774
          BCE84245943A70E08573F8F1F2BC2F4308C1FF1CE62FC01CED07AC14203A009E
          034C5A33F441E401DB0656E2E7F55CB5D728D03C81C5E44472F4F2F13D005470
          B03908C7EFBA8AB23BEEDFA9E3D65809D76FFBACC8FB667977C0260DECBA7DEF
          42A3E788B7B51AEE831A5E0C2FA0B3F383B5E6BBB80320D19659464034D16D18
          4AC70D6FB578F24C19BEAFB1F4D9C6E0CB69BC7A3DF33BED6BCADF0E24D20041
          1552E9C7F575FB2BBCDE1AC41427C603402414C1D8DB297CF32F4E40166F9277
          8DC35B01192BE62D3D47696B6F3D6154D697E3CD570726676D9873B3F8F1693A
          1E5B8AF74157BB682E1132D4B0650AE58F46AA2A5CB56DD76A10B09D78EA03C2
          E138C8CC4744174293E01C5E9AC918047E235890A1739B01EE70DFF8A9D3078E
          15D55663702603F3211A45C2843E3F8174343A1A59575A2065F8A1A834681564
          C0BDA5838A7E05D164379F9B77D55553A90A0545980BB130441B65FC2F7CFE12
          0C0743A4079ADE0B498D6D0736425C270CD5CF3282FC30A7B8B834ABB40C4B09
          051CDDA3922C138B81206683C9115B50DBC9F37D53DB8134AD33343ACACC4C30
          428FA86B2D86C7C35882133193419E4E608696B1B46CFE24032EF7CE804C2F2B
          D285922FD16EBAB20BF34B78673E56130ED85612A9D8AA653FCB957707048506
          A6B9C1F29D92AE5D51F30CC4932CCCA8659127997B04366A07FDCB4ACD9CA23E
          E064A93065B37EBB4F3AB409F8D7F307512226F08CD8ACF60000000049454E44
          AE426082}
        Name = 'PngImage1'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002554944415478DAA5D24D4894411807F0FFCCBCFBEEFBB9
          BA7EACAB2DEA524224E6A2255A445DA2340823E81074E85C79883EA888F09297
          820ED1EA26095A5DA2A02E1EEAD02150102B23E9A0AEF4B1C916ED47B9BCBBEB
          BEEF3458119AA1D4C0339767E63733CF3384738EFF19E417206F8D8CD4F8CDD6
          2FF1F968325938099FF721DC26C065C0AD018607A02AC07440D7C0FB8B9602E6
          968875B567AF52A2129CB93C8AD9B7D60D9479BBC1944F90D700E8CD11EB624F
          87D2B93B808F5319F40E4EE2FE93B9D78E5BBD00557FB42AC09A0762EDFB1BAB
          3A0E86A0B8288206C7F8D81CAE0C450BF114C228F29C85A4597F0548EB501BF2
          ECDAFA86EA966D7B1AE12931D11400BCDC42DFBD181E8F655E396EED1854E319
          0C01DC5C0E6CBF2326C544969ED3FD252782A13A43F357A22140B06F93839793
          295C7FF02D959897FA506A748B1B582B00EE1FA19A4DA27861DD57D622F96A60
          E82E1CDD01D4152FA077388391193ACA073C6D4B8103CF01073F836C3035D22F
          7B8A767ED5D66181C9A2AB407BBD83F7B13C9E4E62C28E28A195001D39E77885
          5F3B1DAAF7954E5BA5989B270894731472797C7857C8E6B3F41674769E87E5F4
          52A0737C237110AEAD2EDE55190C602AE14656A47CA68D74228F44CA9E7138EB
          122B87E1A25C00CB8AD8F962D65BE5AB3544E1E2690A430114496CFC9C4336CF
          8620D12E71C3D4E213459BFF00E8A137965C51AD104D87E9B261672D24537694
          1349FC463A2896FEAED14A00391CB5D4F24A45531932694B9C8ABB60EC92C84C
          8352AC0AD023B10997AA6EB63989DB0E3D0589DD5E4C3862235B03F0AFE33BD3
          A20AF0F35827A10000000049454E44AE426082}
        Name = 'PngImage2'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002214944415478DA85535D4F1341143DB36DB7B422B8489B
          10160D155163A9080F109AF8A0C617FD1FFA93E47FC08B443456F123D4D81681
          D81A2D6D9A942DB2AD6D69BBDD1DEFAC76DD5042EF6492C9CC9C33F79E399771
          CEE18EADD40BCE9984A03F089F47B6F70CB38376E704E02696638F98FB3E7313
          24521B5C1D9FC2A58B63907D7E889B169D5B9685161154EBC7D0F43256620F58
          1FC156FA258F4CDEC0E591711B24B1BF77C49A738B484C9834F5DF4728690758
          9ABBCF1C82B75F36F8ECD52881434E369224E1C9B32B587B7E60676051FAA669
          A06B76F1AB5A4141FB8978EC2163C9BDD77C74388C697A9DFD7B95D178FC5475
          C8D6578B4E1646B7838ED146A1FC036D43077B4775DF8E2C62745871003DB000
          BAD782C4A40CBA246A453F44E93007B6BD9BE0F3B3CBF078BC7DE0D3846BAB05
          58A6490406EACD2A72C51DB04C769B476716715608A09BC81695CA10B3DEAC21
          5B4C13412EC9A3D716CE04BB35E8454F8B5A4347369F02FBBCFFDE26F079E581
          1AD80434441947D532F2A55DB08F5F37F975750E0AFDFF200D6C2169501AC815
          F6D068694283041F9215FB1B7B420E8A1A3932F33D89F81DF28130D2A79D577C
          321CC144688A1C289D0B6E9CD4F12D9FC6DD9B2BFF9D28E2436693ABE1698494
          09F8E5A13EA045E21DD72A5477160BB7E2FDBD2022B9FF86CBDE20996A0C01EA
          46D15042F166AB61ABAE9170F7E6CFE94611A29D95910B64598BAC2D419C3358
          0804FC985197D8E9CCFE0046B23878D9FB9FFF0000000049454E44AE426082}
        Name = 'PngImage3'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000021F4944415478DA8D536B4F1351103DD3B70D29606921A1
          F5C14312A81141131203F18BAFE8FFD09F24FF0323F19906D4182AD80A0DD27E
          68B1D6F4256D9547BBDD1D67B7B469D7069D9BCD6EF6DE7366EE9933C4CCE88C
          F5ADE7EC1DF040696820B240DF276870B91C980C2E104C419D041BF1B76CB7B9
          71DEE3C339A71B0EBB139AA6E2E8E41007D5228AD53C6ECF3DA09E04EBD1971C
          F45FC6883700A7C3654E048D3594CA79A4B27BB839B3445D04EF63AF38E01F43
          60F8122C52F659F1FBA88ADD541437A6170D128AED85D9611FC044701A56AB0D
          FF13E55F25C492112C5DBF47F471E70D4F06AE62D033646C3E7C1C30DECF9633
          6D40E73F9625CAE26B7A1BC7B5226873F70387C6E760B7397A02CC843A81A6AA
          2855724867E3A02FC94F0681395A4073352C62EA9DA91E96914847852011E1D0
          C47CCFBBEA249D60A31B02D61F5DCC4426068AC4D778F6CA425BC0B3345859FE
          6694DF501521A82099D906BD93FECF8CCDA3BF6FF09F1AE8E5AB6A4308EA288A
          27B2F9246863E7357BFAFC461B899AFE2059660D5A77571A75D4951A523F92F2
          5D691A29BCB9CA531743F00D8CB441168B058F9E5CC0CAD37D010A9855C9AE48
          F6060A0739640A292CCE8A0F5A565EFBFC82C747A78464580EB338924E2DCCED
          ECAAA6B72F8FEF857DDCBA7687FE1AA6F0D62A8F0E05E1EDF7198344A7047A05
          27F563FC94812A947392F96EF72C74863ECE64B5C32DD368B736CDA588683521
          50354532DFEF9AC63F30883870DA7DE8DE0000000049454E44AE426082}
        Name = 'PngImage4'
        Background = clWindow
      end>
    Left = 680
    Top = 4
    Bitmap = {}
  end
  object ilMain: TPngImageList
    PngImages = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002B74944415478DA7553CF4B1B41187DA3319B35668945C1
          5051F026081E8AE2C1AB624DFC11D3A4869C7AE9C54B0F8AE40FF0E6A9476F82
          C62851A2220A4285C49B3F483516C1A2089E24D568CC6663B2BBFD66655B1BE8
          C0C7FCF866DEBCF7E61B160E870F060606DE01D0A9A1B231C6FE995755554110
          04B6B7B757989999F9C2B6B7B7150210F09FC641CDD034CDE8AD562BD2E934DC
          6E77926D6D6DC983838362B95CFEB381F7E6D8083EAFAE062DA25C2CA2CEE1C0
          F9F939868787936C737353F6783CE2F3F3B3B119268079187801A3833AC95149
          8264B7237D7686919191045B5F5F9709495414C5B80916CBCB213AC041C03D10
          04E4E6E65014453842213828CF258C8E8EFE0528140AD089A67E7B0BAD54029A
          9BA1912C9D473E8F5F0B0BE03225BF1F6F5A5B71727C0CAFD79B606B6B6B320D
          449918A0A606CAE222945C0EB56E37B4C747B0F67694F6F7917B7880ADA101F2
          F535DE0683383D38C0D8D85882ADAEAECA3410654257AFAE70777A8A5A498216
          8F4371B950373505796505A5B636480496999F47A3C7839F04E81D1A4AB0583C
          2E7B7B7AC4ECEE2EB80F6A6F2F9C4D4D78DCD8804A1E0844F7E9E202D6BE3E08
          8D8DC82793B090A4EB96167CE41EC488C1FB8E0E317B796998277477A39ABCD0
          C8691C1D211F8BA1D0D505A9BF1F3A5DC07D11C8E01F373708068309B61C8D1A
          1272F48CBCEA0CF7B971361B58368BA7D959947D3ED83B3BA19237FC12A9BE1E
          A9C3438C8F8F2758746949FE1008880FA4C9A8BC8A222ADEDF83111BCE4A5555
          232751217D3F39796110894464BFDF2FDEF38DC4E075C91AC5C49F969ED50436
          00C8E4542A855028441296970B8140C0962763CCCFF4BAA4F55755C9E79C85D3
          E934007C3EDF3E9B9E9EBE9B9898A82FD12D3C6902981FA972CEC34112767676
          303939F98DE4D93FB95CAECF94AFA1A456F9952BBF385FA3B06432993CC9FEFA
          1BC9DFC7A91CC8F1AC0000000049454E44AE426082}
        Name = 'PngImage0'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002AF4944415478DAA5936948545114C7FFF7CDBCD95EDAB4
          B9A46398363993B49961A4442B125A0A62D886841646411B511FA25090822888
          C88AA2D010CAFA906D96044994A4994AB42264B984B6D3CC9BF7DEBDEFDDDEB4
          40412B5DB8DCDFF9707E977BCEB984738EFF5944DA1503AE0356D501913A6155
          9CA04487262A80A08189149A5D033799986CD82860683E77EC90631005FFBF09
          ACA640908BBDDE988A3953FDF157EE3D7EFBD70283A8A36067950B32924A5664
          A4E2D0F50EA3F941573E71ED8A4EE40CB2A839077E2AB06A50ACEA7429CA7262
          D57CBF3F2F2509BBAFB5A3B1F9F11A22E94749DCC16459A3C693400FCB7171A9
          EF7B01872A062DA1528F2F72EFB6DC346756B41B5B1BDAD170A36BA76067E590
          CC67F9AA260D64CC1819557FE1F92D366859E460D25B2AE8504828C590B48AAC
          CCD882F5B3A62121C28AF2C6369CBFD6BDDF22A89B982B043829887BB3B7BC6C
          45DA0E511471A0FA4E93F85E9AAD723ACFE1D18F17667B3D4513274314551C68
          6AC1B9FADE33C4D09633A74C99E3AB20B26CC2F8A4F1C33B0EAF5BEA38DD7A9B
          1FA9BDDB3FD63B74D8DABC34577AD438048C57A8696D475D5D5F83CED442EE52
          3E6AB6204C09E032055125D32DD4AA556D583DB3342F351DA7EE3762526C3C92
          233C78C75FE2D2C3FB385B3BD8493FB01CB8582F17180CB3B086D9522E3290D1
          C59950159E9D32D37E79FBB205C42D46E0A3124088BCC3CDEE47A8AB7EDFADBF
          D1E75B9C7A97D9CBF0EC8170F30CEF7094B0241B9C11BB658476A9A82C7AEE94
          D84428F880CEFE5E5CAC915F077BB01092DC1ABEED5BD20FA3ECCD5FFC192815
          3626E52AFB72F322F1622080AB277920F8D4566048F255DD21E39702DFA2C22F
          C48411B638D6E65F3938E659835B7BD532A494B8E46A6A26FF56909AB3FC2B72
          58046B251945B7B01EFB0E2A287B746708D4F607C1FF7EE74FDBAE6191399823
          450000000049454E44AE426082}
        Name = 'PngImage1'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000038F4944415478DA4D936B4C9B5518C7FFE7BDF46D5F5A7A
          83ACB5ED3636DD0693C2480CB08A18A21817C56CBAA8732682249B615E624844
          17C57DD9F093972F66899921CE0DE30733CDCC128D9841183A30BA12A5B8AE30
          2F40476FB4EFBBBE774FDD127D92F3E59CE7FFCF3FE7F93D045B1B40380B16A7
          035CD92986F4C1FA86BAA75B76DE1D0ED4D4D88A4AD18CA7E285D98999E9FCA5
          D208F1628A07077581F6D32215033016C0DE6CDDF160CD9981DE035BF6471FC7
          0636449F5958D051400E176F8CE3FD2FDE552646A73F32AF33478C3FCDDB0675
          1503A3B5E919FF85E181014FBB783F2C8D40B0D921EB324A720936C60697C385
          243F8F91F1615C7873FC53E527EBE02D834DF5BEC803C2EC4BAF3CB1B9DBDF03
          D6C6C257E58547F020954E6125BF4CDB18B00C0327712361CDE183C913D6CCD0
          AF478D344E10F7BD2DC722FBACB71EDEB907073B9E849D08106D225449452299
          0261A99C27D035035009AEFC368FB1F4280A0B8B99C5936B8D64CB73B184BDB3
          BC4DD841705FB81DAD8E3638325E2C5ECED27C16589E856E1A58CBE5309B98C3
          C5C91F008789867D1CE6DEB93244A2AF77CA794171B09BCAA86DE21170D780BF
          EE45FCE322CC12A1FF6842966F22BB9E479993C10A3C4422A22EC6E08FCF7F3E
          4F5A86BBB4ABF175AE943150DBCA20D2C3C3E9B341A2BF5C5CD690FA4A829AA7
          49180E0E1F8B60CC0EB7DD8DA04FC0D4C8F834697EA34BF92B5FB21557D54A62
          84F632F035132A60291F40EAB4816282724293DCB9A71AA16D1ED44A1104032C
          4EEE3F3545A2473AD372C0A85D592A20D4481B3A0428284333753A1182D5091D
          CBD30AC2BB5CE8D8BB1DC94B1948690BD1BBDC38DB3F768E8463DBBFDCDCBFF5
          515E10D0DCBE1159350F5993293EFABF09E41B3A3249058DBB36A246F4219352
          902DAC636D3E6E4EBE3DF322616C425BDB50ECFB877ABB8488F30EAC482B904C
          09BAA5C3A41CDA580E4EA10A2E54C3A139B13BD886CB7F7F8717BA5FBD262594
          7B480512315CFDDEE10F7B5F3EF4C8F3582DE6905373504D05A66582A3310462
          875FF0A3C1558F64F1173C75E85975E1EC523F25EC1302C283B20A47583C3D78
          FCF081BEC7FA489AA50CD05DB153A1831511E12A7B61E0DBE4790C1E1D52139F
          2D1EA317C76FA14C0D884780A52B54A4BDD6D4131D0C7607FC42C44EAA3D5515
          1D425210D77EFCDD3C77EAEB25E5AA51118FE276FD6740C78435B972B701556C
          9FDDCBED669CAC5F53554BCBEA69E4F10D7D1BA3278BFFD53F3F7A68527AC8DA
          EB0000000049454E44AE426082}
        Name = 'PngImage2'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000038F4944415478DA4D535B6C1B55109DB5D7D95DAF5DDB9B
          B5B18D1D3FB4A1D0081421011F6978544AD3002A546D916805EA275245C20701
          44DA22447914BEC80721A22D08CAAB1212A248F90085E22284F22835696CF7E1
          E0C44D6CB5B11D1C43D66BEF2EC74520AE34BABAF7CE9C3973662ED3DEDE4EAD
          65180699A6C9C11ED034ED1E5DD7395C37AC56AB69C16A341A465B5BDB6FD827
          E1538351B3D924E65F005CDC8A8B67545535789EBFE4743A199BCDC6721CD702
          572B95CA9F5851B88671FE1096F90F80619820B2BE54AFD7E7FC7EBF8E84219C
          6FB02CDBD09B4D5D073B411064045F2F97CB05BC3D8CE0E3607391F1F97C02E8
          8ED46AB57C381C6691C50DE74BA15028026401A0BAD562514BA5526A7D7DBD03
          8C849595957994F308628E328140A06F6D6DAD37180C2E6E6C6C04BDB29C714B
          D2D6542633A5A9EA94E8703410D4E9F37AB7AD57AB53F0DD04C61C4A6AA26C93
          916579040C72D8159CE723D1E8839389C4892D9AF6EB1E22578965AD9F349B65
          311C9694787C78219BFD11DADCB9BABA9A44A93D8CC7E3392A495206A2381545
          11937373454FB1786AAFD0B6632024BF535D28D88EE8E6ABD3449FFB0381EE70
          28F468A150B80A0D6C28CFDD0238827A97B47ADD1A5794E00F93935F1E50D5DC
          634EE1BB1DB707EF6F24737450D37F3FC5F3BDDB0706AE37356D38954A2D82B5
          1B9AFCC120FB21E89007A2251A8B05666666BED85C2EE7B619C6C74F12ED4F42
          FAF788AECC7B3C7D6F1D3B76EDA773E75E482412CBA0EFAA56AB15C6EBF5BEE2
          72B9D2F013E3B198FB4A367B756961E14C07D1E63EA2891251F05BA2670549FA
          E0F8F8F85D274E9EDC9B4EA72FB7FC5102CBA0EF87D0CF24586C69EDBCC311CB
          CDCE8EEF24E230353FE789E21F11F50C0E0D5DBCC5E7DB3D3636E642527F3E9F
          CFA23B5DAD36EE045204F3508590C2E56CF6338FAE579F26EAEA26FABE48E47B
          8368F7BDFDFD5FF32CCB2F2F2FEF82FF6D68E735EC1203FA0E8CED61CCC02FE6
          3F9336DB6B9AEA7D1CF7D01E513CB354A988CF99E650D16E1F7D6D6484507FF7
          F4F4742762B683C52863B7DB5B637A077AFB78B1587CD78EA9EB07952E59DEF7
          7C24F2E9E2850BF494AEBF9D76385E1C1E1CA489890982DF4124BA0106A71951
          14A9F561C0C0056BDC4DF497170AF528CAEB873B3A5EAE9F3D4BFB0DE39BAF88
          9E606DB63ACF710C023741AF1ADCF4FF03DCB4AD160B450D83E9EEEC1CDDE574
          1E60CF9FD7DF8498EF13EDC3DF58B30B0261060820377FF1DFE204E494094038
          230000000049454E44AE426082}
        Name = 'PngImage3'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000038A4944415478DA6D535D6C9355187E4E7FD69F6FFDF9D6
          8E75D5B1F56F946DB51336E204644620110513259BC4AA41F1028DD1BB5DE8BD
          9A708126CC1063A259B9D8B85018CC1F36166CC804B7405391D276FDD9DCD659
          BEAE5BF7ADEDD7F6FB3C138231F1BD38EF49CE39CF79CEF33C87C0ED0708815C
          AF825CA3842092832D2ED6E76A36ECB598190301419AE3F3B1B9D5A9786CC58F
          42E50794AB55F0254092E8EA43002815758D4EF6B323CFBB4E74D9753029CA10
          F26B9044112A8311D98A12B7E7787C7729E25F8870031464F10140DB3940A81A
          ED9E8691D7DFD879C0C82FC0A62BE0A9EE3644A36194CB023A3ABCF86DE62EA2
          9C1CEBAC0DFEA19940787AE915A8E41982C7BFD6989A0C677C27F71DDF69AEA0
          D392835A2BC1EE74A3582CD04B24305A068944147CBE82D09201332B2A9C3B1B
          38BF1CE3DE228ABA33077A4FF48E6DB38A8A779E26F076B763B34451824C461E
          CE453ACAFE014B466218BCBA81BBCB1A4C0C4E1C2566B77F68F7DB077DFD8E05
          B0CABFA0D59BD0D9B90D7A7D2DFEAFE693315CBFC56138E9C0D4371363C4DA73
          29B1BBAFBBE5AC8F41AD9E0A15BC87546A090E6713DADA5C50E55720121932A2
          1CABD91C5A9AAD286D54F0EED01A021742CBC4FADC2FD95DCF36B21FEFCFA2DD
          EB815AAD01C7E510BC130797E5804818CC561B24964583498FD6D666FC199FC5
          27E37A4C4EDECF91C6FD37B33DBD0676E0990CDA9F7C024CADEE01579EC78DCB
          5710A912ECDDB30BD606336A6A94286C14100E05713A5087F1493E47B6F40452
          877DAEADA7FA1918590612158E148BA85CBB0685D309381C8FDEBF29220D0DD6
          57780C8CE47161646E99E85C57860FBFD7D9F7AA2B890EB7012D3617C4A9EB10
          757A283D9EFF08B8797E3E15C79D301571D6818B83C19F0974A32FEC3BBEE3E2
          A11D69D98B5D0C5A6522244180DCEBA5C6E191A584A675B3C723518CDE5CC58F
          7F3461FCCBE96304A6AB8C768BF1AB931FB98FBD6449C29C9F85DCB31D0EBB03
          A5421112442AAC16A9641CC246151C5F83B198095F7C3A3BBABEC8BD46D07403
          28C16276D59FFFF0FDFA3DDB7511B0354578A923D1E83D08151AE5762F42C110
          EEAF1324C40E9CFA3C339DFE3DFD3254E23C8DF2AF94A49CF2D458B48FB1A7FB
          8EB2FD87BA05D4ABF21005FA99241172150B4E60F0D32D15868773A36B73D90F
          40F80450C6BF002A86764D0D44F5910687F64D9B5DD165AD97ABE90EA433D552
          3251B9BD182B7C4BE97E4F3D2EA094A7AA96F13761B07E790BCE8FC600000000
          49454E44AE426082}
        Name = 'PngImage4'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000029E4944415478DA95934D48545114C7FFEF636C46925466
          E8835C9819B58976B5189B20A468339B5AD4424B8328102C883E5666981A8189
          9B8432D34AB28C1C0D375A4D6A61D02859929A582F457B63A5C3CCE8FBEEBC37
          6F20CC822E9C77EFE5F1FFFDCF39F75EC6300CEC28ACE93874C0EB65009DB62B
          0EC3FEB01CCB48AAC2B43C7ED63E3E32768A3101171B7B23578EE6A5E13F46E1
          D5CE6F4D0FBAF758800B0D2FC5CAA2DD9E159DC95587991A052D388E36946A51
          7587D0DCF63CDF029CBB1514AB8B7D7F00F4A458B7D7141C4B7A8214570584BB
          FF02245D0D5A68C94C68C11240A228BC1C10024FFE02301BA6D9AE86EDAC5148
          0AFD20719CA663E501A1A76305C0F2B4CDA1AAC022B9CB8E4409D21270BCA25D
          E8EE5C06B01C93627B262D649E82DC631F87C1730E189BB7A2A0A2E74BDFF20C
          B4DF9A65A66C8A63B138229F868035D960FB2BE14875229A5786FAB2DA19A5ED
          D15E0B70BE21285615F93CAA9EA85D21B14C6A7D15303F3106F5551D64793D5C
          CC0878870B9ADB0D36D4BC345F3EBDCB0294D407C5BA133ECF22A52953AD8A0D
          D2E9B8A2E139CCF7DC41467C0069EB64A438235892A2B87D33736E7B57BFDF02
          1CB91E149B4B7D9E3835474A9641E2C8B480D8400B5CAC8CD58E496CF4E75217
          3F430CBCC7E834B0F6DDC46B0B70B82628369E26403C01D06C404C9C4534F410
          7C641699FC04B2FC5BE8120998E91AC5E048AA92FD61F8850528A8EB0B379578
          DDD6516989F4CD7E808E2DBAB000A5B711E9D1412A2D0C9773117CBA82B6D694
          7046C39B4413F75DEAFA5E7D727FA642D612E56F5E1ED5BC7E4E0E91F151A485
          6EE027B62137834E834FC5A491859CC16B52AC766AA7057079CF94BA376CF2D3
          23D10CFB411B0CAC576398F7F78768A8BCDBA8C9799AA3B029DCD9A983637943
          F75BF3BFBEBDF70BF9489EA14FC8F91A0000000049454E44AE426082}
        Name = 'PngImage5'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002484944415478DA95936D48535118C7FF771B1256A3A95F
          1AC220B237633346B2408B661A74AB55245B33422968F5250982A24F91D587A0
          24187E0882A41C259898F3C34A82282A6990504424F486D7EAF6A2D25AEBEEEE
          F69C7BCE687021EC81877BEF39E7FF3BCFF99FE74A8661E05FB1BE715D3A186C
          A9CA64B3F9D271E74267D99D54F28484A6C1106C8E418BF2DBF821A44FF65FBB
          9E50DBA21129A303363155A09C6F07FC7EDF7B09CDC38691922D7AA925097C48
          769D3F1C38BABB635FF9B44A0041C811614935B071ADEFB5097874D90A087838
          E448C3776CD8BA173F7F00F622E017E059061CDCE29B3001C3DD1CC0DC90242A
          51D8B26D1570EA42020DF21EA81FA9023B1FD734A096E6224D0270A54BC64B5A
          70F5B1D5C498EB06C21D61A89FFF1EC104AC2083EBBC6F4DC0B963322EDE033E
          9DB5022EF5F4A3FD402B149557C74227439757B32ABC5326A03326A3EF2990D8
          2F762093F294BF69E1D72743D8B9A311952E97055E53B37AD60444DB64DC7D05
          C4A3B40BB858D339207E3C0C5B2E0B7689CC9ACC4C1E0B9C0EA8331ADE3D1F79
          63029A4332C62781D3217EC7052666106A9D1CBDE7C4937D3FEC53501F71237E
          8BA0BDE5DD26604D50C6E42CD0B989DF845EE0C7D0849855A2894CDF5450D7EA
          46EF4809C01390C11A351A2080C121A60742AC1B5CCCC65E0C28A8DDE5C6C068
          09A0C22BC351066CF67200EB035D1859F4833D594C0C2958BADD8DD48322C07F
          26860A5F0F160731A77846F7B9921AE27E7B1A53A3B799E99594F52217CD8D62
          C634E51803D885B08A72DE7F00E88FC0973F88B600D1CEC63B44000000004945
          4E44AE426082}
        Name = 'PngImage6'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002F54944415478DAA5D35B4814511807F0FFCC99BDEF6618
          242651A6059ABA5D280B2C8AB02890148D1EA28B04696505153D1405114446F7
          7A2BEAA5B7A07A2BACEDFA509021BBA50FB59A8ADDBC6BBB3BEBCE9973FA6666
          8BDE3BB3CBCE0EE7FB9DEF7CDF19454A8960FEED7B256B4B6BF3FD46460520E8
          999080A44BA15F673837A6C9D5FE7450EB7DDBFD22D9BFAD5AB180154D5179E8
          441835F969045D5E1834D1B027031A899A0230FA6FE163A9499C89A4F0F0FE30
          7AEE942936B0EA40A7B9BB79815A5790464E4E087A86000A3638AD2B2858035C
          14EDF510303A82936D09445EA4C4E79B25CC06AAF6C7786373296B9893C6B450
          103A2DCFB9F3CD104453C008F0133039368CCBEFDD686B1B11D1EB85FF020BD9
          9642028201706B75C3C9828B6C2694BED70524274770A95DC313026237E639C0
          EA9618DFD154C6B6164D21E4F7658BE5AC6E01562616A6522DA61213B8F85E45
          E4E990885EFD07D8D55CCEB6CDD7E1F178F07708617DB280B4EBA127C6D1DAEE
          B3818E3FC0BA83315EDB58C116FAA7C0A5335950A4496908EAA7490051D09809
          AE73448666A0E3659F7877A5C801361D8EF2C5F56136D023C053D40245B1EBC0
          B35BB1F69F36148C4E3278A7337872682B1FE3E2F5856207A83912E5C53561A6
          C713D85B99445E9E8A644AC1946551B0E655F0E98B81966B5ECC5C1A826F1683
          EC8A8B97E7B3C0E663515EB03ECCD8C0044E6D48E1D60389B5CB555486DDD075
          C0E753D0D593C6DE1B7E88D921C85C15EECF71F1BC350BD41290571D66B2771C
          072A47B1E9A00F47B71BD859A751DA40C0A3203E90C1E547B9180C04900CA8C8
          E98D8B67E7B240FDF1189F5655C1CC9E51ECA9F88ED3B7DDA85B63A27A85865F
          BA028F4BE2EBA089075D05E8CC04304C359A35D42D9E9ECD16B1E1C407396363
          39F4AE71EC2BEDA33DD3B1930A1D61CD7E895CAAC4CF09890EBD046D032AFAA8
          36853FBAF1F87491F32E142FB9FB6AD9D6CA9572E2972CF77F4330E042C6A036
          0ABB217480249219EA827B2E7A130CBA5094BE48B4F3D39B864536F03FE337D7
          7696F0C488ACF10000000049454E44AE426082}
        Name = 'PngImage7'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000003024944415478DA8DD27B4853
          511C07F0EF7D6C73BBDBCA9A1195A295410F8B2CCDA0C75C3E08B2173D50234B
          23498449054169442B08C234F30F69A044F6474905155148D143A2BF724A9AB6
          7433CB996B865B5BEE7167BFAB484D213A702E17CE399FF3FBFDCE8FC9CCCC84
          34E47205789E494C5C94B037362E616D2814E4BABB3ADB2D96F67B7DFD03AD1E
          8F1BA1500853072301A2286286569DA2D7A757CE8D5FB731002DFCFE51FC1A19
          C417EBABB6878FEE975B3FF53D62184C07F47A3D542A45CAE1C2E2C7B2F95B75
          514214E6E980315AEC778AB07EFC0C77D7DD80B9AE326FC0E1BCCBF35C246030
          E897ECC8C9B9916830A68DCA38C4CD02583A2DD20CD286211FD0DDDA8BEEC717
          FBEB1BEAD7701CE78C004A4B8E54ECCA379EFF245F819902A0A40B38160813E0
          A7944745609890EFAF1B61BE6C3CEAF8366C8E00AE5557DE5F9D797067A75F87
          7078E2304FB9D22F42E1894DD16AC061798306D311B3E5FD87A31140CDD5AA07
          A9D9F939C3F218FC1C057C8189DBA5A1E0018D0298AD053ADEBE41ED99A2FAF6
          8EAEA22929145FDC5350725A485809313811B248374B159751342A19D584E6D3
          DB8DB87CAECCE81A72D54400195B0CC9DB72B63766E4952E65A8C261F14F041C
          216A0ABFA3D38E864BA7ECCF9BEE24F32CFB638CF4B149203D3D1D5AB57A5B7E
          41E1BD651BB2654A41395E07E9C9C7E863EBE983EDC33B743F7BF23ECDDC705C
          1E0E36BB69CD43334010939595451D26359266CFA6CD9B2F2D4E5AB34813AD1B
          EFBA81BE5EB4BC68B6B301BFF758D989E5B143B7602DBC72F6ABDD67F212E09F
          04A4C1B22C544A658C4623ECD0A8B5A9C16080FBE674B65A7B6C4DFB7B7A920E
          57ED6E5E6070C1EB62D092DB52F1D5367241FC1B90C96410046132338A20088F
          CF07EFE0204E5A2C506A51BEFE80C234A33019EEF01C34EF7F5131641BA99906
          4891300C3B0EB8BD5EB81D0E18DBDAE0A726E13528DF7A50658A3EB40A23A20E
          6F2B2CD7FF09780818262097002501BF689F40C8AE22B589498AC7CB9BAEBAFF
          02F611A022407A3A171095B890A966783E6CFF18ACFD0D88FE4AEF6AF8538F00
          00000049454E44AE426082}
        Name = 'PngImage8'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002AA4944415478DA85925D48145114C7FF7767EE7E6956BE
          44051141BD0551F412F850424FED4305268520F5520F11043EF95C116121D943
          50513D6450BA309864E1A652ACF981EDE6B0BB66B695BA3AEBEECE8EB365B3ED
          4C6777564A09BD70987BEEDCF33BF7FCCF615B6A1F7DF5084C89CBC96B7009DD
          70B0257007609964009C0290A77DD1616422F905D3FEEF74821D3DDF956F6DAE
          11EFB67FC4C3E7915E7556BB07AFF80C0E14505C7C1DC0A146C9E8BAEFE3BFC9
          1F8BA4D1EE974D7F772C9855B4EB6078890A577E4DC08106C968B9EAE33359A0
          C20D6CAE00E2F10C3AFC610C0C7C0AA849BD1582A38F5EA4FD17B0F7B4643435
          FB783C452F352811033655011B0936F73D8DBE5EB9107C1BEBCF29D9DB109904
          B7D35C01D85327190D977CFCF3026052D58CD90904FA6EA804AA5C803A9FC1FB
          3761233A3A11CCA9FA0D4AD2471772E004D87152326A1B7D7C9200306D00B32B
          B68DCE3C5EA09A4AD3E716101B92AD6FA1891E4355EFC0EBED61DB4F48C6C17A
          2A214D8165C08A45BE6996D8F078804A7AD18F948A2F23B2A18CCBEFD8D6E392
          B1BFCE16D161DA01AB019655DE7232914AD473504232E6C64241B6AD08A017CC
          6B04F837D0FA0B102850A0C0C50515897014E94824984FA5DBE076779434A821
          0DD2395B83650118D13875C2415DCB2A8B981A0A17121F6263BF54ED2665A289
          7564218A603BA90BC72EF8B8B6640B565C4EAA93FE2199C8223618B5A64622C3
          3FE7536DA4FC53709E2F0955144610C076D54BC6A9CB3E9E2FD833225270725A
          C768601CD1C1C888AEA8ADE0E22B0A5260D125C1516E8F6503769F918C8B577C
          BC089D9ED230148859C30139A427D2B768F23AE171EA2575ACF2F0AC06EC3BF7
          227FB6E9B0F8DA2FA3BF6B7C509BC93C00C7132A3E678F6E51DA3500D5471ECF
          BA5C422631996CA1C34E3A544B81CBAD5807F007697B62F8A11F0DBD00000000
          49454E44AE426082}
        Name = 'PngImage9'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002184944415478DA6364C0022C8D8CE4ED5859377CFCF8F1
          D98C1B37BC19F0004674011755557B6F7DFD0D69B36609743B3B9F6D387FDE84
          68033CE5E4EA7352521ABCB2B31918FEFF6768B4B77F76FCDBB7AA4F82821B8E
          9F3BF711A7014027F31BFFFFBFA1ACA2C241565F9F81E1DF3F08FEFB97E1F195
          2B0CDB376FFEB0E1D8B109DB1F3D6AC430C05D5151DF5A56F64071559500172F
          2F03C39F3F608DE834C8A0CA850B0FDCE3E50D40760DA3B78C4C7E777DFD044D
          595906866FDF2036FFFE8DC020037EFD02D36F9E3C612858B162DBD2A74FBD51
          BCE0292D5D94101CDC1B6667C7C070F326DCF90C3F7F423483E8AF5F19183E7D
          62B8F9E00143F6FBF7C57BEFDDEB4309447B595933074DCD9D659999025C972F
          3330BC7FCF70888585814F4C8C410DE83AAEEBD71918CE9C011B36F5E1C3CFB3
          5958142F5EBFFE162516F4353585AD7978D6576465D9CA7EFECC50377FFECD4D
          3F7E9448BF7A1510EAE7979CE0E9C9C0B06811C3E3A74F1962DFBCC93DF8F8F1
          1446062CC05D4EAE292F2AAAF6F4B56B671B366D02A703533D3D63772EAEF995
          C9C9BA5C0B173264DDBDBB77FAF3E72E580D00015B4545B77FDFBEC91C7DF972
          1E720A0D9396BE506066263065EE5C86DC070FB8701A800B00A33DBEBFB070C1
          A31933184AFEFEB525D90010687177BF1F2221A1107EEA942F590680D24E6564
          E4848255AB92C932001816FA61C2C217765CBCD84B96012010AEADBDF5F6870F
          0B013022EF2EA8A406040000000049454E44AE426082}
        Name = 'PngImage10'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002334944415478DA636420003C8C8CE66B28F23B5CBEFF31
          60EFB97317D1E5190919E06B64B47FD3D65E87854B8F7E58BC6C5D01D0908544
          1B606F64E4CFCFC03061E3E6760506415D8693FBF6304CE899B4E0E1A77F05C7
          CF9DFB88D3006723A378473385096E2E3602A6364640554C50CCC2F0FAF95386
          AEF6B9178EDE7C910034E422860111B6FAF30B12AC13CCAD7418189858809819
          AC114C43F95FBFFD6658386FFB87153B2F05A3181061A7D7DF9E2C5BA0A0A2C8
          C0C0CC0AC1204D601ACA07B9849D81E1C197EF0CF5F57B36C30D703032B22FB6
          7B73C0C71CA4408081819587818105A892990D8841340BC4C3D2D20CFBAE3231
          4CEC3FBA78D38153857003921C75EECF8D7BACC0C002D420AFC7C0A064C070ED
          0537C3D533CF1942D51E3130FC6760F8AA60C83077C9C3CFF3969C29BF78FBF6
          02A0B6EF60032C81B6B7383D3DE0A4FD8381C1369C61D309568605B34E6DBEF3
          EAF306594ECE82ADD315745F4B9A30B4561FBCB9F5C8ADC23B0F1EEC026AFB0B
          8F054F23A3FED5C9370AB8DD2219A62CFBF679E6C2935957EEDD5B0594FA054A
          07D53D6E0EED0D7B379FBAF1B0F0F9AB577731D24163A0F2F9BA0C0183A5F78D
          189A5B7704DC7CFC780BCC066094EA7FFAF2C5FCF4AD5B8B414EC69A1267C4C9
          FC0FAA8E61080EDC34EDF0B56B7930CDC40046A0FFE573DD981FBCE654F9DC36
          79B7C9CB376F6E11AB196680FDC47AE303EDBD1736AF3F743A9014DBE10614A6
          010DE83B987EFED6AD59A468867B41829775E589EBF7A3D143981800007F2BDA
          9FC5A945A10000000049454E44AE426082}
        Name = 'PngImage11'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002924944415478DA8D935D48145114C7FF7766D775D7DC1E
          829E8CA8C8C40253105B1F928260D9428AECE32102310DCD4CA1871037632D42
          830CA342893EAC70212A4CD32CFAA497C21A13CA8A2228D3876A6BC6DDD88F99
          9DCEDD99B52D0BBA7087CB3D737EE77F3E2E43EE7640D70141C82B595D3C909F
          BB686E4CD5E2F8CBD2931F068882283C7A322A312CD90684A348733A1BAE9D6B
          3EEA29C8C2FFAE8E1BA321C696EF801E0A23CDE1A8BFDCD9D85E5A347FC68F71
          8A1A274DAA6E9C550D70A403C7FB9E2B0C7915404C6796B8BED37FBAE9D406D7
          82DFBD19DF0C1115D0C899279700388093BD230A9B555CBB7F4E66A64B644296
          C7ED5A9693351BD198361D59A5F3AAC2C528C8998750D48490D94E8056BFA4B0
          EAB62BE1C60AB74DA55B5909214C0EA2C012004110F0F6E317BC7C3F81862D25
          80D546700362B703FBCE0E2BCC77E696E22D5F93F9AF427DF81A44CFD030CA3D
          85B0D8330C40DC0078CF13A0A973506EA9723B930E2A19A3249167215A817793
          DF70FDAE84AAF52B20581D88A42868EEFE03C0ABCC9D79916204B2588057E301
          5CBD23A17E936B06E0C08514008F1C331D132A685B4560EC5320A1A06EB30B4C
          7418DD3053F05D4C017043241540672B574080FE7B126AB9028BA9C0041CBC44
          006FD7A0ECAB743BA7A2290A3443014FE1350106EE4BD855460A08902C623A01
          0EF71060F7B13EB963CF3AE7F7304DB46644E77D8E98803704B8F940424DD9AF
          14E226A095032A8FF4CA5D7B4B9D811F33531039602280DB0F25546F24806002
          C866CB00DAFC4F1556D3DE1F3C51BF3683FC11D14D806A02A88D63E3410C510D
          EAB6728065BA885C414BF748882D2C3BF46265517E367FC21ACD2E6F117FB1C6
          0B171090A730F95946EED26C1A6D3171AFD3A0329AFDE1C7CFC67E02D0ED691C
          22EC9F8C0000000049454E44AE426082}
        Name = 'PngImage12'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003694944415478DA85936F4C137718C79FBBB677F6DADED1
          425B09466CA0059B62DF2CCD7069441395F0469D09095B242221932C10899218
          37D88812FF049ACC17C3AAE09B8A8999028E90098505B7447C41CC661D1892C9
          7FC39F56919DD75E7FEDED398C2F74317B924B9EDCDDF3F97D7FCFF37DA802A7
          13946412F8540A343A1D2C511400E6EF2285B9244946BFDF1F70B95CD5C3C3C3
          15F178FC364DD340E1BFD4FF014451E44A4A4A429D9D9D8742A1D0425B5BDB5E
          2C9EE0380E4C26D30700AD16561042E271501405645986FCFCFC6FB0F09C0EDF
          5756565E9D9A9AFA2A3333535505595959FF05ACB22CC8A2B8213D9D4E6F6B69
          6919AFA9A9B1747474C8EDEDEDE51919197D8220C0FCFC3C58ADD68F0050819C
          4880C7ED0E74757535A8B0D6D6D6B170385C8CD2F566B3390B15E45A2C162755
          880055AA5696EDD80356E2B85903CA5B7BF3C67AFCC489DFEAEBEA0A46464620
          180CDEC9C9C9198846A3654545453BDD6E77F6E0E0E002E5C8CB039B565B7DD4
          6CFE3A4D08735D924E6B63B17EC660B87029146ACC7338E89BA1101042528585
          851A9BCD067ABD1E868686A49E9E9E2394DFE3A96DDCBAF5F2CCE2A2B83B1613
          FA69FAEF61421E96EFDA55BEA5AA4A27AEADC1CCF3E7B0C3EB5521303D3D0DA3
          A3A37F6034180C865FA9EE03076633351ADBFEBEBEE2330CF36393D1F8E984D9
          0CEBB5B5F0DAEF8727E130AC2E2F2B38F4A567939393737373D7799EBF158BC5
          D21B63FCE5F0E17FB6D9ED6CFDFDFB1D2765F94BD7D292A58161FAB65754F8BE
          DDB72FBBF9DEBDE8CFE3E34D904C8E302CFB4C1DA75A88BD00A3D108D441B7FB
          F2798FA72E1B1B371689C03551AC9FE53863D0EB3D3D118924CFC6E39F83DDFE
          408793529DA7D168DE073872733739093966E5B81D8F25A98BD76A3FB9525A1A
          F02A0ADB3B30209F27A42AA1D777ABC6C24AA011805780E8EAEA5B80D3E1800C
          3C3DC13090A0E9921FF6ECE9B711A2FCF4E8D164752AE5195B59895E148452BD
          A244546B27F10ABCDD0E2BEBEB6052012E0418D0342F509E6FF3E6EFBBCBCABE
          6BEEEDFD3DF0F2E5A96B2C7B373B1AE59B78FE3304FCA90228D5E2EA8EA09A4D
          683AAA0001D8205843401EC71DBBE1F375723333F293A74F5F5908B19D1584C0
          5F2CDBA80348AB004585E043A7D31BFB4239D148986D7CC51DE47C2C1BAC49A5
          BE80C5452A68325D7D2C080D0C21127C24FE05AA259539E16FB64F0000000049
          454E44AE426082}
        Name = 'PngImage13'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003204944415478DA6D935948155118C7FF33E3B999628B51
          56AE8486A2664546D88318155C2DBD5989E243644A942DB43DF4122D44104104
          62D26A65172FED7B4824F410954699E5C5445BBD4ADA6DD3BB9C3933A773EF99
          A28706BE390F33DFEFFCBEEF7C47E19C03D98AC6BE233AC0616A3AFC1B17E43B
          C8CAF2338913FDE6301BC4D3812E9BEA6CAD39F172D4F5CDC4589D4155C661B4
          60981B4A18B060CC1163424C8601E8FA88AEEFCD2BC8CDDC57959C3496400181
          FBE7006E6E3EE839D6E9796C46DA48C05023FCC33FFAF27A835BC200B33289AB
          8E6980A713F7BCE3B13F7B16E84C1FB85F87A62850A309FA5A8770D83D883519
          0128F1B3D1DDF405E9577A1509A84A6141C738ED7ECF6CDCB645A1557D0C36E2
          078236C0D0848506165430CF9789CA491C25B99DF8E8F419694D3D11B284AAE9
          B46B491C7910791ACB17CF42F07B37542E9299067055405470C584363111976F
          74C0AED520BA6588A53A3F92308055C7D36E7B02791E7914158579200AFEFBE8
          26D078B903F3C90144B99EB1B4660B105C1F4F7B1DB9A4CDDC830AFB5CD85499
          60880443083211BA21654EB9DC5832A501634E5F63E92E0BE0DB90403F942E26
          6D7407CAEDD920AA4C34449260803260540F5782C6E637284EA88776EE16CBFA
          53C2486D22FDEC2820ED811D282BCA112DB300228222D94FC52A485C7CB8D8FC
          1A2549F5C0B93B2CDBF941027E6C49A203258BC873DF36AC2ECC117F4A6D3F93
          80903E0D951001B85CAFE148390E76E10E9B73E1BD0478B726D32F6545A4CD5B
          8BB2C24C04842E35A5BACE65F3421053185C75BD4269EA0904CEDF66F3CE5B80
          A1EDC9F46B59317932B41EABEC59F051AB790240FF05881EDCBCD429000D18BD
          7897CD3FFB4E020677A550EF8A42F2C8B319E5CB331030E5CE61032B3968195C
          6F7A838AF43AFCBA749FE59DB2009F76A6D2987545C4F97021A2E232A1280C4C
          28842274948C99D2461098C78D4D8E27E8A8BBC7F24FBE9580BEDDE97CC6A1B5
          F0F65378BC5C5C35B1BD1860981CE199B2565300A7C6AA884D8944CB86462C6D
          70CBBBD0BE6C7CEFE4D2C458E12ECA34FE1E21172F5318C8E0E1A07A68AC55F5
          C5F5FE9FD56DBF927F030F75C6F005AE74590000000049454E44AE426082}
        Name = 'PngImage14'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003354944415478DA8DD37B4853511C07F0EFDEDBDDEE75CE
          B0EC613E2A4BB3345BB5654F2935880C841E5219549021984591D08B2CB0202A
          FF88E8FD32C1B20C8BCA4A938A5956A256963D4CCDCDB979B7B97BDDD6BD5B57
          8A60F54F077E700EFCCE07CE8FEF11190D06042002451269C94953F747C7244D
          91282895DB65E75B9BEA7B1ED4DC2FEBEC361703220F84CEBF9768BA5E8FF030
          6D7ED6F29525BA71F3555DB41B0AB11C2E868598F781EB7D83B20BC79EB7BEFF
          B84CE8B7FD03CC49352E5ABB6EC3ED1863AED2F4A511CA101364A33D103909F4
          B547228C34C0F1BA02A74A7757F758EC4BFF010AF3F39E65ACDF6D7C6AEE84C6
          D786683D870AAE0C49929988789B82F70E2D081F89D6AA12EE46E58DD581002A
          82804B17AE0E70713334666F3526C492E81099516BAB4384340A7AD92C30B641
          B87A12E16C6CC0C593076ED12E6679105079BB86F38C1C2FE926CBF04A510B27
          CD43CE6B400FB2F8E6B16256E8342CE1B6E1E3E317387F6C67B3D96A4B11EE71
          7F80F26B955EE5E44479FB8F2A7874767C1DB0A2DDF10D4A90182E1F89E1FE61
          88F366E2739D09678EEF69B2D32E7D10B0BDA0B0232B7FEBD8C62E1328CE0B4F
          E4204A3A4A31573B074B3DE9B0B858C8C423F0E4CA3994975FBE087F2037E809
          B1D1D1878E9E38B52B7EDE42D4BCBE0B87B40D2FA56F31961F8358570212E252
          D1FED484E2A202C6D7FD3D2D1C681002015EC88E7D28416289443ED768A8DD51
          B4CF183669223AFA3F23444D811172C0B362B09D1678F84170EF5A78FBD5B3F7
          EA3AADB97E210F7E01F83404A80802013FAF8D8A8CBC9495959D91983C43A620
          4838E87E34BF31E1D1FD3BEE9C8569AA82C3EB25E29652946CACFA70B3D5B948
          0951D7D7218050AB21934AE1743A114291D91445E6902415C3300C6FE9B5B678
          BDDED39B4787151DD91A95A94E97C3EDD6E1E0A68677D5CDB6C556E0FB1F8065
          5968346AD0B463683652A1FCBF0BD380F0CC50D4EF5845C4515B9231E00AC581
          BC176DE79AFA16070124A9417F3F0DA970E6791E81C0AFCF639088E1E6FD110B
          7478B877852A5E579882BE360532D73CABF82F60B6548C00E7471F302A4D879A
          9D39DA494D8C1A79E5BDD7FF1B8000B0C27E008820E4386EF14124CC60EF4FBA
          957898A8D28B2B0000000049454E44AE426082}
        Name = 'PngImage15'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003564944415478DA45935B6814571CC6BFB3BB676FC9B8D9
          64601315AC0F16F421B4F4411F5A493504A3265E4A76B3D94402497D2A06FA54
          B09496BC172A454413B2AB31D2220A823E68D494964A84988269BA593497BD34
          668C8E6627BB73D933E39931C181C3393387FF37BFEFFB9F432CCB427777EFE5
          03079B626258242E462D58262C007C0B840FFE01C47927A8104654A691870F26
          B2A3A3C963C4163877EE57F5CC996F7C33997F31B53405EAA1608C97D9427C66
          F6CC87A669D82E6C45DB974770777C025D5DF12B8EC0F07052EFEBEBA53F0EFD
          84DFDD3F23541382A202E58A85B201A87C941941B9B8862F5E7D8A891FEEE1AF
          E9499C3CF1D56D47E0E2C561FDF4E93E7AE1FA79DC288DC01F109CBFAA1A2F34
          3801F7512A0372454393F919525FFF823F261F211A8DDE72042E5D1AD1FBFB4F
          D1C9C7B390DFACA12112C252F6356A041FAAAA28F2F937D8B6BD1686B40C6355
          42E3B1364C4DCFA07353606424A51F3F7E94DEBFAFC04B5DD8B9731DB3B375A8
          AB5B47B04A4176B11EDB766B101F5E03FE7E0CD7B703C8BBFC88B7B5BD17181A
          4AEA8944079D4BBFE5799B0887192489221034E0F532C82FBDD81221F02C3E05
          CB6551DB7C0833CFB38847639B0229BDA727463399FF400881284690CB2D4010
          42080482585ECEA33ED28035C383DC6B05FB3E6EC03F4F9E22DE95D8B470553F
          7CB8992E2C2CC23419DC6E0F5C5C88F1B56E1808FAFD20A68AF45B113945C091
          3D06E4174BE88875DFDA68E3A81E8DB6D3747A0EF6238A220A8502AAABABE1F3
          F9B1B2B28286FA3AAC143DC8AF6AD8DF2822937EF6812099BCAAB7B61E740818
          631C3B00555539891BF6BE699AF05360A158835CD18F96DD16A47C1EB178CFA6
          8531BDBDBD8566B339A7C0CF914BA5123C1E6EC5E5724E6055C08BFF154EB346
          B0775700B9F979C4131B02A9D46F9CA089CECD651C0BE17098774142301804A5
          14B22C43ACDD82423180F95513873E1150582AA0B36B2383B1B19B466BEB7E8F
          24BD7470193379FB282A950A0C1EA26D89E925CC2BB590B4103EFF681DAFB885
          931DB13B8EC0C0C0778BBDBD891D9AA6F282F71914F9B9A7D4CB6DB8A128EBA8
          E6347A851F6FDDE034218C8FFF89C1C1B3438E802084F74622F5DF7BBDBE30BF
          7515D3B478802E270FFB0ADB39D864766BDD6EDE5E8BD017CB85AC2C4B83EF00
          A55BCDC3587809830000000049454E44AE426082}
        Name = 'PngImage16'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003B94944415478DA5DD37D50D3751C07F0F7EFB72746C32D
          1EB7B830869D66773649CC54B8A5963D8002921DC274489AB4A414545AE75084
          0E2C889208EA284AD07890720AAC526B0AE55DC27151A4E42109E610DCDCDCF3
          C3EFD777E4755DDFBBEF7DFFFABEBE9FEFE781429A0CB38BA5B8087068B0B40F
          160B0B9B373EFE91A59D3CF084A343031BC1E3FF0A2E0FA028802F00DC1E80E6
          80BA07CC25C05E0248C859869B375C09F189277BAA3B1542AE102FECCEB93C7C
          E9622E446103A0E8FF01EBA4416015A1CF82E5026673A3625EE263ED65C79659
          A52370FA5D48B0ADC4C6BD2F4FFED86FCC46A8A80F7CFE7F808CE820904242D7
          C36A15273DFC44A0A3B4953315358C9A311DEE7A1CD811A7C512EF5A649768A6
          8CE7CF64618EB80F1EEF3D604338C0200936CB37CB173E757FFBFE6398905CC2
          FB6387E0F7B3707B494A5C16BC26D742C9C9804ABBCB7CE6C2B759A0B9DF83C3
          23402679FF0E72573CBEAAB1B5F8B3D0B1B09FF1F1F52A04FC34D980CBEB85C3
          E3C28CD30C4D4231D2252AE4EBB43386EEAFD410CDE9A6908EF5CF2D4E6DF8B4
          B0493A1E3A88F7AEBD0526C001E3A3E1F679E122A17AFC01D8DC764C3B6EA374
          51055E8ACAC7B683FB6C5D86EE026A7969B2A9F38D8E189924067D36036A27F7
          C3E971C3E76766C30F46E0F2919324CDEE75A27C4135B63F5A00B3DD86174B0A
          6F53B29D713D0F0A6317AE90274BF372B204751365488FD88248410C7C8C1F01
          8601C3B030D94C38FC5B150E29AA30A0BFE2D5FF6430DD74B8FFA0B089D47592
          8958B624B9A74157B3B4E5D611BC1E5D8E5EE3394CD96E816269840BC3919AF2
          0CB60FA9A199BF1BF5959FFFD2DBDBB116D173A7286473C075D1489C9FF4DD27
          C547D61CB77E84AC9057905A9CD96B324DD483A15891286AABA1E65466ED8D4A
          EC7C681774876BFB8D177B5622444AFA4A459A82D4511E9170AA6D4F4BEA49E7
          51AC0B5121BB7C73E3D5F12B3B40FA452A95BFDB7EA0A5A871F20368E20AA1A9
          D09E1B1CEE5F0D01019043EE9372458AA35ABAF69DC8F981398D67F91B905BA9
          6E1EBDF67B1E48BF3C209B57775CDBAC693235401DB30DF9157BF47F4E8FAFE7
          71F904D844800020BE4FF2615BD197AF5E160EE2497A3554EFE4116064168895
          C9EB5A4B9A357AF3093C1D9A06D5C182A33396BF360787EB5F4020101CE82AEA
          2A552E4A86F58E1D293AE51757C746B7C047BE208BAB3FFFB6B12032320C4323
          23487B33A3DE61B76AFE01B60647996C0A6B940B945F2BA48BF9D38E194A3F78
          BAE9AEDD4A72C0835028AA4E533C5F182B96B1C3D7470367872EA8D900D3161C
          EDBF01DF1D97423220D4500000000049454E44AE426082}
        Name = 'PngImage17'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000030C4944415478DA5D535B4B1B5110FE4E36C966B3D94D54
          BC44AD15DA42417C69A19642A1A8C5062F1145547CEA4B9F2AF441107F807FA0
          7FA2DE2A5410D4870AB16F2AA8580DD2D20B5EAAC62456DDDC76F774CEAA453C
          CB6167F79CF966BE6F66D8C8C8C872241279EC72B9B86559B06D1B8C315CAF9B
          B658740FB22CB3C5C5C5CCE8E8E83B363F3F9F6D6A6A9253A914F460105E8F07
          B79700E59CFF7F7BBD5E6C6E6EA2B5B575892D2C2C18757575CAEAEA0A1EDCBF
          874020804C368F60511112272728E4F3A80C87E19365140A050744DC89C7E3E8
          E8E85862B3B3B3C6D3860625914C21A006605304CBCC43D7349C2693C89B268A
          09CC4D0016A54F3CA1ABAA9341341A8DB199994F467B7B87F2EB98E328C5C05C
          36AA3C0708FDDC81C419787131B2E49492242732DC6EA8A5A5F8BAB585CE6B80
          C6C66665797D1792ACA3B42C8412CF29FC87FBB0033AECABA89610D03090A36F
          B5B616F1ED6D7476760A8019E3E1937A65797B05951561DCF58771963E477975
          35144ADB14BC8916170212887583425757578C4D4F4F1B2FA31125BE9B42DA00
          34CB05BF9DA4CB79AA21D9A44B92B408F8FD943DA54FEF502884F5F575F4F4F4
          08808F4643E485B2F17B1F6EF871572F47919403CF9EA340D1DCD99C438193A3
          4D8272D2422F2BC3C635C0C4D4A4D1D3FC4AD9DD3B857156A046B1A0A9792807
          7B603647269743962AE2ABAA02A7929A9445A0A2C201E8EDED8DB1F1F171E379
          F333E5FBE10FC86E195A1A384DFFC59D2039E94118D434798AEAA30673B4A06C
          345D7728F4F5F5C5D8D8D898D1D5D6A6C4BF1DE1CCF242A2D655F9314A7D12A4
          8B2C6CC9058B34E0C49B11504194B3A6061B6B6BE8EFEF8FB10F9441CBA37A65
          7F270E896A1E0A96C1E39260653360D4DE66490992C4DD47CA8B1636C9D6A9B1
          D60860606020C6A62626338DD116DF6EFA0F34B782628F06173D16B729E5CB39
          A089720414B6453B441404407777F717363C3C9C1C7C3B58645974681660DAC2
          919C045F31495743746972676B24EADCDC1C8686863E3355555F87C3E13774EE
          A143FBE6148A51160EB7FFD1762712890B9AE0F7FF003F2084A9D7FABF200000
          000049454E44AE426082}
        Name = 'PngImage19'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002FC4944415478DAA553EB4B544114FFCDDD757DEE5D4514
          41F3858A4645F940112D2D2C4D54CCAB5FA292B090402135B2328412538AE84B
          FF419406A1AC8F347B691454646A5A5A498524A8957BEFEEEAEEDE57B377B7B4
          CF0D73EE993367CEEFCC9CDFB92421A9F9C38E8CF804A7A8AA920CC82A15C5A3
          DDB6E4B525C5BBEFF5C984212BB3F30BA4BABEDB9AD75815F46D911E9200170D
          72522D7AD72EC9636FDE7388802110F8DADD6B25A5D577F8909C0256587540A7
          03149A81D1E9A1120A4823549A4DA1E2D6746A1FEA825DE787B9874F05B2A7E2
          165FDF54C8E66F0DD41C6EB7E5E7B216141A1E416D860613308C0C5591B53384
          A8189C1251DB3C2C906CEE36DF72A1982DDAC9E2CFE833F7D3440C4A4B0FC2F2
          7C0C0EFB0A8C29A908D81207D125C26050D13B2EE2D8E92181645674F117CF17
          B1C5A91B00C3432378F6721CA9C16148B7DC80216A06364327620E37C1B1B60E
          A3AF8A9E0905479B460492C6DDE55B9BF7B32569A6BF0043F787313EF309B991
          9148785003F8FF822BEB26C28F9C824BB0C168007AA628C0B92702D9C5DDE35B
          CFEE63CBD23700FAFB0729550CCA4A0A617D3301076F834F7222189309925344
          904146EF244175CB9840B655F6F097CEE4B3E5199B0106E07048E0B832889EC2
          C3E952B4EC32ADAE06F08E414DEB0B81A4549AF9B6C6DDECA1CC7F6F40880EC5
          C507B0F47A0A768B158149B1608C26880E270550609ED6E1C4E5570249ACECE3
          DB1B72592ECB44E95269208199B2303DF705B97189889CBC0226841631AC0D61
          A527E1E45728800AF38C1EB5ED6F05125F35C8773664B35CE606C0C7D9390C3C
          1E85FFF71F28B75F456084050BA1D711CCD5C1695946908F82FE595FD4764C09
          24A66A88BF5697CE7239C19ED76AADC8D0B59E3EDC0E5B4F17D62DAB6032F3A1
          8B8E85486974D7C03CED87EA8EF702493E3E6ADD9BB73D28CA28D37E27345ED5
          0AA5096D26C53FC4A3ED02A4F535CA0E819E28F86CF1C3A3D1591B0929E89A0F
          088F88B6AD49AABB65656FEF2BDEBF904EED525088870EB7B86D3D43B0B6B448
          DCEFFE9FF11B62DA7CD5CBA0EB920000000049454E44AE426082}
        Name = 'PngImage18'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003514944415478DAA5D3FF6B55751CC7F1E7FDB2FB65F7EC
          EBD9E6EE144BDD269B5E28CD10BCB51544D660CED442FAA5CC515ACD24694511
          51848205AD3C9BC2C2B40CB76B1036A21162B58869A9BBDC3BAF33E7E67273BB
          3BDBDCEEEEAEE7DE73EFE9DC7307FD01BDE1C38137E7F3E0CD8BF7C7A4691A26
          D3C7E8550C16FD93D430CAC47F956E99F59393F296753FF4FAB37D47478685D0
          E5AB4293290D380ADBDE5A56EDAE2FB4A5F47F352DA5F7B4F41D9396B94B0A93
          452016BEA53635FCEC79B9D92D46AF9CE54BC9F9BB016C78E1AFD9C6FD6B739F
          285171DAEDA87A2F6E58FA4C3A62B75A99094F20070FB3B1A6145BF610C4BBE8
          38E41A3280C7DF0C4D373696173C737F12BBC341228971E209B03920361765F4
          C2412A1E74E2CC9F04A593EE5379E1EF24F34E0378B42928EF7AA952DCB64A25
          47C866410155D527D0238944620CF77E4165D51C25F7E96AF224BF9E2FE7953D
          B5ADCAC49D570DA0665F507E71F76A71477912973333413AC36854E55A8FC4F2
          8A69CA2AB2E06E2B97FE5CC2A18B47F8E1AB99CF951BFE7D06506B0055E27395
          2A0E3D837425F410FAFFF89AC292011D70C19D638C05A02BDC822FB9952B9F7D
          2B4DF5075F3380C7DE4803D5E2F615F7B0DBAD28AA851BBD9D08797E56AECC83
          EB2D8CF5CF325ED0C6E4AA9DB45C3071F1D34E692A14CA009B0F04E4DAED1ED1
          792FC1DD8419757294BABCD36C5C3301FD2718F44FD1B6D042EAE1BDC6960C8C
          ABF41D39234D041781FAE6805CFEA44794071556082AAEF910BB376B14FCFD01
          E1F33FD29BFF2EEDB18F08CA1A6555665C28F44B3E692CB00834BC1D9097D478
          C4D2F928FB37CDD2FBCBF794BA1D68F238B1B893071A7671EA278D4FBA6D94AE
          CFC69A52B87ECC27DDF62F025BDF09C8A2D723BA17623C551CE4E08712F575EB
          A9AD7B1AA17819D9E6081DE7E27CE32F22E1B661D71486DB7DD2ADBE4560DB7B
          4159D8B0562C9E9DE2919C9B1C3E6EE1C0DE22D6ADB1301F49602541CF351B67
          87963262B6225814464F9C691DBA7C35B3073BDE0F4404AF47708E4CF2FCEA71
          A2AA9D7C570A5B56669DAD669501399773D3CBE9D1732DC84A30D6DE71F4E6A5
          D01E03A8F6FABA3C5BD66D72CCCFA5BC4BE7C8CDC922A66F63329579931692DC
          9EB733A814F14FD46C5E189F4E043A7F6B8ECC448E1BC0FFA97F0138229E43E8
          E6B8EA0000000049454E44AE426082}
        Name = 'PngImage20'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003614944415478DA2D934B6C546514C7FFDF7DDFB977E6CE
          74983A1D0B332284329494980A3ABE161A52A123959890B8306E88894880B890
          B0415DB820CA460D0476B6B8D0D4B071834409B131D6405B603ABCA653A796B4
          90CABDA5F3BC2FCEEDF44BBE9CEFDEE4FCCEE37F0E0B474E231292B0B45495E2
          9BBB2EA4DFEC1B088B8293D1AB7E46B3208B3C3CCF47704481C1731C8C575458
          4A549C1D2BFEC574ED6B841511D692D9BDE1C05BA5662E27A53860A8DBC4CEF8
          1C423207D7675004E0B16523116518BED18907C924B8E952833D93397F2AD597
          D92DF81E5BFF5CB43791D4389D0762620B09AD0659083270716781C7D4BC885C
          BA8A95D8F3988B3F0B6176C662AF1E9AACD577F4A9EB15602061E145A30C4516
          D070191C8F03631E78CFC1F9F1381693DD48CE4D434008F52D19D46E952CF6DA
          B1A2B594EE89C45DE08D8EC7D8DBB348000E3EA5DDB41D7C33CC90CFD998AEC7
          714F4F61A355066BF278B26903AC1B0478E570C16C65B3066FFA7841367164EF
          0A3495A7E80CF58683FC271C8E7FD0C2A2AC619AEB845C29E3494D417257171E
          5D23C04B0410FAB246B5E2A2C735F1DD311791B008D7066CD7C52F975BC8F502
          A3375514590CF64C05A92E1DEB3677E09FDF08B0EB50C154FBB3C6C25D0FD1FF
          97299A0743A7CE3B6DE9B410E0B43CFC342E61251186F25F059F0DA8984202E7
          86A9893B3F2E989DB9AC21376CD2D8074712F20C103846972C69CF9355A92F92
          C1A17A670E27074318773B70F687B2C57A3F2A9A6FBF93360E644C88AA0C1FE4
          401E2291782150A1FD1D402FCD4A18FBF3013ECF2B98F0633837F2AFC5B2078B
          E6D0BB29E3D37E17926680FC21F1C1D4D193C3DAA19F68616492C7E52B0BF882
          00935E1467472A6D407E28651CEDF7290303A41C24A10DA0195A7D0725B86E0B
          C3530C57AE2EE2CB41997A10C5990BF3CB6CEBC1DBE6BE7D5D0470A18663A835
          DB310347210091B32211C06960E426C31F571FE1E45008B7A5184E7F5F6AB24D
          1FDE32F383EB8C13AF4BD08D18694FF27944F0D7B2A04BAB425234F0F35D861F
          472B7EED5A71A6A1EA76E1FAFCDF2CFDFE446DFF7B9DEA577B749AC008025FAA
          62B514C6D6CA58CDC9C6C5591EDF9E29FABF9FBAB80DF0CA4CD11BCCD83A7A69
          FBEE9E9777C4EB8E28480836D75F6D5ADB72812A9405473B515A1685B15F0BD7
          1F4EDCDF43802AAFA9780A931E4E2EFCA288FE0000000049454E44AE426082}
        Name = 'PngImage21'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003164944415478DAA5935B4853711CC7BFC7CD944C9D439D
          1710CDDB74EABAE8C26433223368560F7981A07A8BA2085CD1432845615162FA
          500811F51408FA20685824E1A50BD86639C41B5B3A6F6D0EDD7097E3762EFD3C
          81D1B37F382FE79CEFE7F7E5FBFBFE195114B19BC36C03AAAB4F81E739882287
          CDCDA03A2A6ACF4D952AF5AC429190C8F33C7EFF76AE3B1CF6772CEB7F268A8C
          956559FA5F80D3E9FC0710040E7EBFEF4A61E181B6BABADABD5AAD16F1F1F108
          06430458C38F1FE3E8EA7ACB8D8D7DBE2B8A421BCF8BDC7F009FCF77A5B2F278
          A7C9D408994C46E25878BD3E8206110EF3585BDB205818AF5E3D477F7FF71D99
          4CFE640750596928CCCF2F34B7B43C8A76BBD7E1F17810191985E4E424020731
          3FBF44C06882710463D0DADACC9BCDDF745EAFD72201F47AFD8BA6A67B572B2A
          8E626A6A16050559B0D91669AA9F04212426C6A1A8683FE6E6163131B1845FBF
          66D0DE7EAFDBED76D74A00A3F1DCEAC58BD7526A6A8EC16E774861E6E6666076
          76011C27A0B8389BDEAF6074D44A40110B0B7394C74BAFCD36AB90000D0D9742
          656527229392626130E8B0B8E882521983CCCC54300C83A5252786867E626B8B
          271716CA2280AF5F4778ABD52C9700B5B517427ABD31D2ED76422E679097978B
          438734C8CE4E2340044D5F464FCF074C4E7E27077EC4C525617878909F9AFAF9
          1770F2E4696755D5F9649F6F832CF3A8AB3342AB2D90C20B853802666266C686
          8E8EE794CB0A01541818E8DD5C5E9E8F9300870F97BE3618CE5C562894A8AF37
          42ADCEC4CACA1A05F582ECB2686CBC8EACAC74381CABB87FBF857AE1C2E0605F
          1F15AB46026834EA92F4F41C737979B5FCE04135743A2D3A3BDF90F519B21C86
          4A950693E9062C9671F4F6BEC7C8C847C16E9FD693F68B04282929A61D6F9A34
          9A23AD45453A6A65082ED7F63604698D2C1BA05053A40D4C4C5808F4F9215D83
          66D28A1240AB2DD9AEB13C1008DECAC8C86DC9C9296694CA04CA234C9D0F9170
          BBF7AB989EB692ABE9C7247E40DB090882801D4020E0A787A569C1D28808D96D
          8522B13A3A3A661FC77154694F6063C3F589BE3D25F1A8740B69BD3B80DD9C3F
          ED74CAF002392F490000000049454E44AE426082}
        Name = 'PngImage22'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003014944415478DAA593DB4B545114C6BF9933171DC71A6D
          C44B2A520F9A1896E00DAC0145121FA217497D14EA41BA106489E27817F1522A
          2511F4223E25F8202A0496B7319304E9414C4A6DD41985D0741C67C6993DFBB4
          CE39957F400736EB9CBDD7FA9D6F7F6B6F95288AC8CACA1DCACEBE764BAFD3F8
          831C08F2200D0E9106683D28D2BB1804E89331A60E3068E66C9353EBEB5F0B55
          12A0A6A64DACACBC07739401217A0D28157E4A96EA0515A015284279BCDE132C
          7C5AC1DBA121F4F7B7AA6440434357B0B4B44C1D131B0EE3993338F1D39F88E2
          0F90002AD250B5460DE874C0E1AF7D2C7CFC82F71FA6786F6FA32003ACD60E56
          56562EC4C79F459831FC1F80A42220291715889E0007077BD85ADFC5D8D8286F
          6B7BFA17D0C9CACB1580D168548A034A31E30A4852A2D3026E1701369C04183F
          05343676B1D2D2722131D184D05083BCD760F014C008E0978C213F7CEE436C6F
          6C616C7C9CB7B63E51004D4DCFE42D24254540ABD5FFB14B2425D250C9F18451
          3708E639766177D389D1D171DED252A5009A9B9FB39292DB82D12890F39CFEC8
          E5C8A5F6910152E414556A3502FE13F8BC20C0286F6E7EAC00DADBFB5851D14D
          C1E170529B3C5053A22817294AA4B3C0684F5EAF0F2653048D73989D9DE0F5F5
          8F144047C74B969F5F2CD8EDDF919A9A08B339524E0E907BD468E8F521703876
          3130308CCCCC6C24245C80CD36C1ADD6870AA0B3B39F592C3704A773934E652A
          26276D484BBB8494948BF0F9FC0809D1C36E7760707018C9C9A9888E3E8FF9F9
          295E57F740017477BF62797905C2F6F60F4A4822E00B141717223FFF3A8E8FDD
          7480B4D8D9F989E9E979C4C6262032320A8B8B365E5B7B5F01F4F4BC66595916
          DAC206E2E262C8A03164645C457AFA6552E08346A3C5DEDE3ED6D6BE213C3C12
          068309CBCB9F797575A502E8EB7B235A2C45585D5D2179D17416F4926F100441
          3651AD167074E486C7E3A2791D29326069690E55557795BB505171672627A720
          F7E8C8259ACD2684858549B74E6EA5B42E75C5E572C1EDF6D09C8A8C856A66E6
          DDF2C8C8F01519F03FCF6F930CAAF04A32912C0000000049454E44AE426082}
        Name = 'PngImage23'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000034F4944415478DA6D536D4C5367147EDE7BFB714B6DA9B1
          75B2206E262E912F3F7EE82F2B860C8C0E2830DC022124137F354E3131C1FF44
          8DD1C5444835513AB339671A60A15BFCD8FE212C5B32C6326354588088D4AFD9
          4B5B69EFE7EBB9059668766E4ECE7B93F73CCF799F730EABAD6DC58A699A861D
          3BB65E6E69F9E433FAD539E71418186356B4C5E3777E1C1BFBADCDE170982B39
          6CCF9E96E523472E97435D5DCDD089138743F81FEBED8DFE128BFDB0CFE57269
          16701EA0AAAA1AA2E8862078A0282A6A6B77C5BABBC39F0A826015416E2CBB1D
          172E7C7B6B78F84E9DD329E9AA9A04E78B16C06E0210214901A4D30A55B0EFDA
          B163075B05C1625097932D20272E5E1C8CC76203F55EAF844CE6190118164055
          BE1449B2E1F1E3276B3A3AC283C78F8783A408967C05C08D48E4FB3FFAFA4E87
          4A4AD6CFE5721A2C12160C065D5EAFB7A3A4E483469F6FF5A6B2D2CA0D8DCDF5
          8228EAA48A462FA564466E3A111FBECB27FEFA7DEE7526333933333B2CA75E5D
          61070E7C7E2A1C3EDA5D515989EC6206A3E30FB071733924078340EC8C71589F
          4A1853F71FA16263310A3C5E4C4E3E44B43F72899D3BF7D5CCE12FBB36688A82
          F944027FCA0CBEF7D723A771C80A475A65500DEA101701791ED5AB64C84C41A0
          30809178FC191B1A1A9243A150613A99C23F8997F8E6F91ADCCF16622A09A475
          0E932FB55037190A8D055CDEFE02E56B5D10252F7E1DBB9B62FDFDD7166A6AF6
          7A3D4E13E3F32ABEF8C98FE9578EE529C15B5130355C6FF8170D15763C954D8C
          8E8E2DB0B36723C9F2F29D3E8972345B01C6E7242C9A0E2C1A223D6329D16903
          5C76031E41C5962205127F8DAC02D2E1DE0269D03B5F5D5D5F343B3B8DC181AF
          B1DA6DA3963A8994FF47BD242469A16A782E6751D7D08A8F369552053FBF643D
          3D27C70F1D3AB26D7A7A0A0303DF21B87B173CAB3C7459CD4370D3241D380426
          D0AEA8181919C1FEFD4D282BDB826834F28875761E0CB7B7779EF1FBD716588C
          A5A51F8272E8B201C330A1EB961BE43A1C0E3B128917F9C14AA592D9AB57AFF4
          B0A6A6465B20E0FFD8ED5ED7D6D5156E2B2E7E8FD87502E1EF001834F242BEB2
          F3E7FB6E261233114D4BDF66CDCD8DF0FB8BE1F315F5B4B7371DA1BD3056B6D3
          DA66CE490D6EE6CF96D9ED36311ABD716362E2EF4E6BFCDF0091008006BA42E4
          740000000049454E44AE426082}
        Name = 'PngImage24'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000031A4944415478DAA5D26D4853511807F0FFDDEE5E9C5343
          DD9A9969092946666906E542D2B0A2908AE843147D88CC02232A0A7A01294252
          942042EC43A0C1322D3596A24586449660BA2C939A2E45E77C9B7BBB53B77BEE
          EDEC56429F3B70BE5C9EE7F73C9CFB674451C4FF1C26043C61188418422F0FA4
          B272D9F988C43585DAC4C45881E7E11C1D753A261DAD5C90AFA235038B7F6ACB
          68EF3F4000288ADFBAA532B5A44463C8CBC7ACC301616A063A91C7C4DB4E7C6C
          6AE6077F8C5CA3432A29C02F03260AD08F4529870BABB754D7808DD5C3333686
          2F6F3A41024B485128A08F8A4460E81B5E373C4557FFC0153AEFEE3250C73069
          71D959BDB966B39AD5AD84D362C182CD0651A79336F33735219CD6450822346E
          271EB7B591CF8EE9EC2A51FC24018F65B207BB4C75C5AB8E1E83B5B1111EB71B
          FCF030E20B0A0041C0484D0D22F6EE0579F60C1B788231871D0F2D96C6729E1C
          91809604C3E4FE3B570D9EF854CCB81660C8CAC4D08DEB883F7E020CDDC05A5A
          8AF4DA5A38BF0E62F15C31D4D15A986C13EE6B2EF70A0978B56D7320775DB8C2
          6AF3C2D0F21AF30DF5508DD8C01E3A08B02CBCC56741B2B3B0BABC02EF8D3BA1
          99B0A1172C29999D6325A07D6B46608741AE18F7CAA0AF6BC6DCF52BD08A0282
          C63C3A5FC4524519FC6A0DD67674A0EFF4199057ADB0A835E482D3F51BA84F4E
          9ACACF4CD03BAD33D077F5C27EF4083C1D6DE063C3C10701CEC921667B0E36B6
          B7A3272F0F64A00F5D8CDC5BEAE32225E07E58D8A3DD85B92795DD3DD0569B20
          5F15879FFBF660DE6E0F65039A9818A4995F8255C8D16DCC01D1A8F0C2C5991F
          F2FC0109B8CB30E94969EB7B739275ACEFBB1D714D6D20111A70CF5F40240491
          8507A0502AD147FFC4D2A8151F21132C5ECE6812C5F712504983E4032E66646E
          AAD8A826E0A73C883A7516CA1C2318B91C8B3D1F307EEF1E7C8E490CD15075BA
          BDB715C0CD3ADA2C015514E0E87BFB814BEBD6AEB9B35EAB64A2A6E7E83B0B10
          E8061E6E0133B4718891A1DFE72FA3E1BAA5A2F9AAFD9BC410E00F258EDE0520
          4BAE525D8E56AB0A5410B484022E22FAA783C14E374FCA65C0BB5036E8065806
          FEE7FC02F5B490F0394F15320000000049454E44AE426082}
        Name = 'PngImage25'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003084944415478DA9593694894511486DF7B67C67174AC54
          D0CA05DCCA22495B6DA2C5D1C8368C30A82C32C3A01F59608158B45A1044D10F
          8B16D4CCD4122A68A38D56CBC4D0308321ACD416AD201BFD9CEDBBDFEDCC8C58
          7FBB70B81BE7B9BCF7BC87C5CEDEA6A4592C464551258304A4802625344D4208
          D01ABEBDD4E0BDA57380D12CC0B9ED5145375BB6FDAA56B62F87E994217C7732
          0CEA82A152A24B053CDEA004EFDE43A14AFF1A1C70D3DDF91D9B159659582F8E
          9464F1B430058D9F5CE8421CBDA0FF0B803F5407C5300C3A02D061CDEE3C3BCB
          DC7259141759B979E82B7A1C41709AE3E13470DFCBD20928DEC4A1014843880F
          3802A0F595BD04C82AAC13DB77AEE4BF3F77C115100A618E40C0BB36FCEE1F40
          DF8474C4BFAC82FE8B0D6FB20E40174CF2DC041E96707D3F01E66DAA13074BB2
          F9F4F021347EF4A05DC420F57A19124CBD68EE8FC0BCC4F7687A6FC0ED69A711
          126E82DB310C2009B7CAD6F901BB8A327872E00FBCFEA6477748324CAD4F906B
          7C81C84533C1B507A83A64C3C38927119C140B55A14A0C03EE1D596B670B0A6A
          4561510EEFEFE982C71006775824F4CFEF6275C433C4E44DA57A55C27EFF2D6E
          9F0BC79DE47288540B18253B49C2E3A36BECCCB2A156EC29CDE1296306D1D46B
          80ADAD174B9AB722766114CC93BA496B1F6C3747A3F553121E8CDB093E651AA4
          17407FD1788C00B3D6D7893DC5569E193D803B9D7ABCEBD1617C4703BA5DA390
          CE1A1015DC825DD5F1985B7C181DCC0207F9C4EB03970B683E4112E6E45D2409
          2BB8B3EF037EBACD7098C641A13A0D728ED0A7F5486A3B8B137229C6F31758BC
          BC008F9439F09843E17448B49FDA6867D99B6AC4FED295BCFF579FFF7BC9AB3E
          0B7B0D4485D77ABFC29830198D372BF0ADB3051367AC82088AC6D8E8049495EC
          186429F34B45B67536371B5570C6C9F71A7C3DA109E2E9A0198C08201B6A2C08
          17AA4E627AB20EB9B99BD1D2A1A2B2BADC4E7D61384ED64AA0E7DDFE76F977C8
          91605C2FA5642AD9333D3F3F3F4E08BD6C68B8748DE1FF47A4C914F8DC6ACD48
          6C6A7A7586F99B53FE2F248EE228E7FCC61F25D16ECE29D36651000000004945
          4E44AE426082}
        Name = 'PngImage26'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000030C4944415478DA5D535B4B1B5110FE4E36C966B3D94D54
          BC44AD15DA42417C69A19642A1A8C5062F1145547CEA4B9F2AF441107F807FA0
          7FA2DE2A5410D4870AB16F2AA8580DD2D20B5EAAC62456DDDC76F774CEAA453C
          CB6167F79CF966BE6F66D8C8C8C872241279EC72B9B86559B06D1B8C315CAF9B
          B658740FB22CB3C5C5C5CCE8E8E83B363F3F9F6D6A6A9253A914F460105E8F07
          B79700E59CFF7F7BBD5E6C6E6EA2B5B575892D2C2C18757575CAEAEA0A1EDCBF
          874020804C368F60511112272728E4F3A80C87E19365140A050744DC89C7E3E8
          E8E85862B3B3B3C6D3860625914C21A006605304CBCC43D7349C2693C89B268A
          09CC4D0016A54F3CA1ABAA9341341A8DB199994F467B7B87F2EB98E328C5C05C
          36AA3C0708FDDC81C419787131B2E49492242732DC6EA8A5A5F8BAB585CE6B80
          C6C66665797D1792ACA3B42C8412CF29FC87FBB0033AECABA89610D03090A36F
          B5B616F1ED6D7476760A8019E3E1937A65797B05951561DCF58771963E477975
          35144ADB14BC8916170212887583425757578C4D4F4F1B2FA31125BE9B42DA00
          34CB05BF9DA4CB79AA21D9A44B92B408F8FD943DA54FEF502884F5F575F4F4F4
          08808F4643E485B2F17B1F6EF871572F47919403CF9EA340D1DCD99C438193A3
          4D8272D2422F2BC3C635C0C4D4A4D1D3FC4AD9DD3B857156A046B1A0A9792807
          7B603647269743962AE2ABAA02A7929A9445A0A2C201E8EDED8DB1F1F171E379
          F333E5FBE10FC86E195A1A384DFFC59D2039E94118D434798AEAA30673B4A06C
          345D7728F4F5F5C5D8D8D898D1D5D6A6C4BF1DE1CCF242A2D655F9314A7D12A4
          8B2C6CC9058B34E0C49B11504194B3A6061B6B6BE8EFEF8FB10F9441CBA37A65
          7F270E896A1E0A96C1E39260653360D4DE66490992C4DD47CA8B1636C9D6A9B1
          D60860606020C6A62626338DD116DF6EFA0F34B782628F06173D16B729E5CB39
          A089720414B6453B441404407777F717363C3C9C1C7C3B58645974681660DAC2
          919C045F31495743746972676B24EADCDC1C8686863E3355555F87C3E13774EE
          A143FBE6148A51160EB7FFD1762712890B9AE0F7FF003F2084A9D7FABF200000
          000049454E44AE426082}
        Name = 'PngImage27'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003AE4944415478DA65930D4C5B5514C7FFB79F9682055A81
          021B1D85C63285252CC0162B0E3732C906733891F13117342B03A72E8B5FCCCD
          C982011B3051DC1C988852529B687044C44C3128608521910141C842C0543E46
          DDFADDBED7F79EAF2C334B3CC9CDCD39B9F797DFC93D9754E8D2210885C048A5
          8870B9F7A56BB5AFA4EFDE9D9D9892122D1489C89ADDEEFBC5669BFF6368A86B
          16B8BC4C51AC80614070374818C0D014627CFEB6FD09EADAC78D4669B4D188FB
          83E9EFC7684B0BDB7AFDFA48AFD75BCE97ECC27B80326D2A54F2C84F9E49D5BE
          B873E31691DBEDF09A4CF85BAF07E3F7235E2C46ECC99380DB8D9B6969383335
          3DDBBBF067BE00D8085B904A8DA6ACF8C429F3E1178E09A9361398CFBA703536
          16DD14E5155294DF909C1C73DCE3112AB33221387B0E3F8E4FA1DE78FCEB3997
          B374D3E0B4E1095BB5A93D372B276353E9BB8606BCD6D434AB23787E82C30D0E
          283F7FE050FBB1AFAC322211E3E6FC0A5A5FAE0D740C7CF324038C928B1535AE
          430DEF4465E8934158166F5657873ACCE6A3B68407931A6FBB9DB220F773C963
          9A89ACF73B1409797BB1B0B08ABECB1F734D1F5C6CB9CD726F1093F134BDA7EE
          5551E623C910F1069F5654B2CD3DE613CDF9DBEBB4070B33FD2B4BC1A40C91CC
          13538AB4A79FC5CCDC2A462CDD78F7BDB7AC6B145D469A6BEA02BBEA5F97266F
          2C42316943687A06578647EEB802BE3BE77A5A3591F9A9708CBD8D25CB0390E7
          D5C0A5DF89516B171A9BCE5A1C2C5B4E6A0D7B96F313B76EE1060710F7CF2DEC
          A83F0549D141CCF55F42FA73DBA0C875835B1EC1F4877F61AC9B8632A7184321
          0FD73ED0D74873384FB2D5EA8F8EB85C752AAF1752BE855D171A91587D14CB3D
          17109479B0F5D129FC748DC6E28A01D1833FC0695F8559A9744D381C05FCF109
          A2562AD5D9F2885F0BD7D75354BAEDD05DF91C715BE2C1BA3D083819787B5FC2
          B76373B0251EC0912439AE59ADEC978B8B6D0CC79DD97C46555414A412495EB6
          5878B5A8A8F4215DA51162990C115172109104EBB66184DC4E7C3F3E8A25E71A
          B6E97474576767B1CFEB1D60C2231DA750404408820CF3B03A52DE99ABD3E7A4
          EA7788A3E3D5200201BC7C6BCBF3B3F86D7C78FDF795958DC3656519F12A95C3
          6C36EF733A9D939B00097FD04F51A0023ED00C5712252025BC958637140769DA
          ED62D89920F0059F4F0985C2FEAAAAAAA7F87DCD62B114FE0708D03458FE5305
          291A418E43E8BECF149E8FCD9C3705C7896432D960414181617272B2EF7F008A
          0E81E60161C8BD90F017A9707E17102EA9F8D5C25BDCF817B0F69D04FF13CC50
          0000000049454E44AE426082}
        Name = 'PngImage28'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003A54944415478DA5D937F4C535714C7BF97F7FAFAFA63A5
          0C6C8799ABA0FC921051DAA4F3471863032CE8CC089B8180FE63B2B0685882D9
          A6360C81992DD93F4B4C96FD705BDC749BD1F88733CBD465D38051AA2D9D0B0C
          372896DF94560BB4EFB5EFBDBBEBB28464E7E6E426F79EF3C9B9E77B0F81F31C
          C073C8308A0E9BDD7CB224DF56959569CE92D3A00F4363910777AFFF244D058E
          4393E7B0300083A8A0B9A51506831957AE5C0641C55940D0B99DAEBC8BBBAB8B
          724DA219720AA094825082D189182E5F3C175E1CFAAE1131DFA04154FF07D8FC
          CD865257C18D7DAF6E5D2BA93C784D439313588853FC784F85C520606452C1A5
          2FDE0F2786BA771A446EA2B9A56D156079E1D2D78D2D556DA2D582B928603550
          B45702F30CF0D56F2A74D058D97ADCBA1DC21FDFEE3D23A4EEB7B5EE3FB00A28
          6CEE9F2D7F699B7D6E09C800603331376A78B4A2211CA5C86015E9380EF3F314
          FE331D7376F5427EC31E4F16C78BE5D7AEFD3C48361F0CA6566C65BAF9C70A74
          3C416D09E0DDCD2114D1D0FE650AC9A4064556915C54A18D9E5636099F9CAADF
          D3E82E2D736DF17A8F7E4FCA0E04D333E6523E124D83550BAB4871B34780AA50
          383B132C991DAAACABD34BA82D7F80F69A7E9AE68BC97C7485BED571E814C9AB
          BB1A930AAAAC331116A4529878E0971322A846B1FD9D65A8690648494068011D
          AF4B78B7F5216BAA1557AF0F247B7BBB6A48E6739DBF0A55DD951185074DC878
          5A24B8F981091984A2E2701C8924032F4BE0A74671F64382E7CB62B8FFB71977
          7C7EA9ABEB681D019E7DC5B8E9E4F944FE6B3AF02ADCC51A7A9AF5103882239F
          C659E032105E4083731C3F9CB6633A14C6F084153EBF5FEA7EEF9887B81D62AE
          6B4B4DF046E248CE50AC10E6B526187805242D6329262139368BED4533F8ECE3
          67B071BD8C40FF1066E50DF0DD0D4827BA19A0A73E276F5BFDDEC1DC1277F647
          9FC7716BAC08E351239232FB63D933D8E59EC41B87B7C251B811E3FE010402BF
          4397B3037706EF493D3DC73DA4ABD65EE0AAAEF6D51F6AB528CB71CC4C118C8C
          EBE19B16B0AF0AC8B387006331A07320363982602088384A71DB1790FA7ABD1E
          D2E4B4E5184DFA0B56FB9A0A4EA75305813E99036D4D96D178F0CD17058B2021
          9562939525224379843F871FE3AFC526F883C3EC096F7B8841CF4196552B136B
          3D566DC5F69450F9F28E75DD1C510C2A658BC98B74924697A0EDACEBCC966545
          EDEBF336904C238F34D35A7AA2F77F4699679A04245754BB0CCD0270EC9209F6
          EF9E521C8E75FB092115A150E8D83FCB43A3280D7120DB0000000049454E44AE
          426082}
        Name = 'PngImage29'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002F94944415478DAA5D37D4C4D611C07F0EF39E7763B2977
          E2868CA51966AB58DEE9050BD3CB64DC4D182B35C3B559516D2C62A914FEC0C4
          D2FAA39725CB842E13A245269BB76114964B3117DD7BCF39F7DCF3E6B92FABF1
          AFE7ECEC79F69CE7F93CCFD9BE3F4AD334FC4FA33C004595FF33AD5180BA6F6E
          ECA422BD9ED63DEAB65692A547005AFA6B9556E007022AC877322393DB688A67
          50B9C7BC30AFAC241EBA4006878B1FA2B4B4EB2201B2C9EBD9EA070AFD40C849
          1F2090CD8A9897933DB7F2C2F9D568EAA361770139D140417E078E57741D0374
          07C0EA48474173E4FA81603FC08989892BA6B6DDB59846357FD4A1A64783C0B9
          B061A60C733C0B93E9BADCD2F26613460735238000B6BD7EC0700A704963420D
          419D8F3B33A21CE38C387457237FEC868BE7F1C3C6A3302910CBA6D0885D7CA9
          CFFAC51E0F837E6004083D45D14EB1BCEA7CF2FEB4CD31D8D50A383837F49200
          17C7C1F64B8073C88946F3647C79F51D1B37B5D5880C76688E3CD907B0150B52
          52A6DFBF76399DAD7F0DDC7B278177F218B009101D02588850DD226226D23891
          1581EDBB1F2875F5AFD33431DFE20526CCA87A79B5313D6A4E7418145543B04E
          C6990E0ED55D7608760EC9B30250BCCE88DF2E0D86601AD64117524D6DFD9F5E
          66477801E3ECEAF709F3C3C365497141540CE5458B02BA7F06A2ACF59B17C858
          18829C2506EC2F79220B9232C40631ECE3E736DBC0D32C1F40459C89C44F7E2C
          DCAA1B3455D46E316DE86746A3B8B11F82C3896D0963913E3B044BD75C69072F
          E782A1F5086587B4CFE65E2FC0449E85CA4B9E6480E8D5B71AD2B6BFB0EB5054
          F781DC8047E67223418C48DA72B3C56977AF874CE2344A07E5D36E8C006ED99B
          303690A9BD5D97BAEDED108D92A65EB81D3C36268C87292E0C2BB7DE6A7572D2
          5A90BCD10C4D00B30FA0234F93C3556F4209D070A33635232E360C1FAC0EC892
          8CB0503DFABEF2589569B170BC9C4C519E22A2A0BCF70354CCB9E102A1691C4D
          98177E705A78B0A2AAAAAFE2C863FD2130777A06AB1445DD395C4CCF76FA80FF
          697F002F0F79F011ED96CB0000000049454E44AE426082}
        Name = 'PngImage30'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003994944415478DA4D536B4C5B65187ECE69CFA5174A4B3B
          68C39C8502BAA22E0EB4A5B24DF6C7CCB811A3669138950D138D73FB01E814C7
          8251C4B9E12DF1B21089C3BB51371293658441D805069999102C9DA41B064628
          2D2D2D9C43AFC7B7718BBEC9F725E7BCDFF7BCEFFB3CCFC70047C0400D052CC0
          B27A8325B7C9B9D9F674C583D6F5366B0EBF22A732135373CB97872E8E047DFD
          1DACC672891356118F0C221B4C16005065976BD3C31BBF3DF06A65716D4D3ECC
          A2807F238598A260F4AF143E39311C3FD3F35D572A3ABE3FBD367A1BA09536CE
          55F564C59923EF398DF7152691595341E40C901232626B51F0849FA3E7713361
          44E7493F7E7EA7E31B69E1D7676E03E49579CAAE1C386EB56F293642800D269D
          19B91A01FEC56B988FCCD221162CA382964FE3465CC6891E4919EC3CDC9292A7
          DE654C799FB639EBF9D6ED3522F6789E82C0F2D0F0804495BD335789163558B5
          88645242262DE18F6B63E89D8A20326C0CF9CEB6DECB6CAC3AE92B78DC5066BE
          730BDC457928B710972B33F873E21CF547F4D2E574268360248CDFBD5E0C0CF7
          81154554DEDF82B1EE370E3155BB7F925637F8347ACB66D84BB6A1C0A8457C69
          1A03BD87B12687A8751EB2246329BA8C38A3852088D0720A4A4B7662FAF4A9DF
          18CF735F2627E58FD4D1E0328A9CBB5051DD8C5CC37A8483D3081107A3178E42
          8ECDD1182AE80C3694DFB38708E5902F5AD177FCD808E3AAFB3C7EDDD4CD4716
          035094345C0F7D0C7B712D552661D5C0D0B9977073B68FC6E1E071B7C1714735
          74EC2CACA20347F7D65E622A777C1188B94FADFB7BDE0BA7BD0E9B9C2D4866B4
          48A5019E03C6BDED98F01D43B9A3014F6CEBC098B71BC1D50BA8D4BD80AEC67D
          A719BB637F6FD1CB869D1A4B0ADBEF7A0B1149809C20FB28D401997369651237
          167E84A7741FCC3A3D660267312F5F41B8BF28D3DFD5F40AA9BBC1BDF5F94383
          8F35DE2D94883508AC0072920032804263F004A223536A691C5609C3E53061EC
          6A0CF5BB76F863818B0FD0911CE80DD51F1E7CFFCD832F3678B018026212104F
          0184017516849C98AB054AD701FEB90C76D7352726873A1B28DD4369121E85D0
          E538BE7EFDEDE6BAFA67DD4C40E387926621922F359C0A855C3E3D3660E07210
          8DCDED89C9F31FB4D167FB2D2B9BC92F65A4009544ECB58AAD8F36D91EB19A79
          87C418F238304902883A71FD7C38F3CB0F9FCDC8A191ECE5AF6EBDB4FF00C00A
          54753CFBAF808169AFC664F4B01AD19C4C269478642180E41C6999FE9EF24BF8
          5FFC0395D45BFF4ABF65460000000049454E44AE426082}
        Name = 'PngImage31'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002E34944415478DA6D935D48935118C7FFFBDEDED6D4359D
          73CC7DE462E2A431526F1A12D68D117851A614DD0415928985487A2705414110
          4474194604612628E195D22AD9BC280D5D17CE70AB0BA736DD74EFE6F66E3DE7
          D58B191E78E03DE7BCCFEFF93F1F47522814D02691A078E5C82C5ACDD30B6EFB
          0D6E21AC7891CC04DF01970BC01FFCB7240CD05E04C89369804BBD66FD5B6FFB
          3929DE7CC4F7D504AE009F17019FE230402B0118829940A6071E0C4925830EA5
          0CB14C0E210A3D08C4BF02F59AFF5488009BC1804C2A852CCF8B8772C0451167
          7C40E926ED67C95E03D309A0655FE441C0A9A6266CC7E348271248ADAFA32008
          4CC999CE96B3E347D45AEEF9C4879914A585A2E852A914CC570478BD5EA43319
          E4E99BA990522EDC511D3AAFDF0C1504996BE0EEAD6B4AA5729839A5D3691120
          93C990CFE78B007491CBE540E96297603B3BDBE8B9D317912BD4968181DE1E8E
          D33C13843C3274772880E7792B017CB4F70982E0595B5B3DDEDD7D4FAFD7574A
          8686FAD30A85324CFF8428D017F2F713E00701764540636363A0A4A4E4A45C2E
          57B2BAEC49E5D17ABE0D521987C9C9F750CAE52C08B2D92C53915B5E5EFE1B8B
          C56E8B80868606DE6C36AB8D4623388E835AAD468A4FA1B4CC408592626B734D
          3C2F90E414756B696909C160101B1B1B6322A0B6B63644CE2E9D4E87F2F272D8
          1C0E182D16944D4DA16E6B0BBF8EE9F1B3AE1EA1D02216E6E7110E879933ABC1
          6311E0743A87ABABABAF32008B54414A9C6E37DC14AD2A1AC537958A86208185
          B9396C52BB493AB31CD5EAA208B0DBED2ECA6BCCE1709CA06F503AA824888B8A
          6BB2D930EBF723303D8D08C1565656108D460B94CA27AA579B08B05AAD8844A8
          630A4597C964EAA7AE54353737B3DA80F6080602189F98809F40BF6991F447E4
          FC92BDBBBD51A6280410A78B2ED5D48DFB3535355D1D1D1D068FC7839191118C
          8E8E2692C9E42B727A48B67AF02D1080492347713848096B55854AA5EAD36AB5
          A7E3F17884CE9FEC3F8B03EB1F4C127B28B288902E0000000049454E44AE4260
          82}
        Name = 'PngImage32'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003924944415478DA55536D6C5445143D336F66F7BDDD65A9
          DD95564A97AE6D4956301220353420A41AD284D260AC1409585AB0D51F359214
          C5184CC5542C6D34ADB515AA981013B03FCA0F63446025A2A618B12A34B4556B
          EB9A8A7C6C53F7EDE7FB74766D4C7CF36E5EF2EEDC73EF9C7386A01980054862
          59BA059BD8C83D9A08538493FB99E418464A1B37E6F50E8045C0EF1179492429
          C8FF003202402CF1520120090003842D29C92FBEF4FCB603A1D3E13393DF5D1B
          69872BFF0C748728240B00D9A63A141175057985757ECF922227646A59B04CCD
          B24ABC25AB3E3830A0C45914DD1F9E40FF27C7BB40DD2F833A4C8216519CC6EA
          A0BF74F0D9AAE675A1D0FD30DD71319491EB60D9161C444192CDE10FFE133639
          EA101E9EC0E1939D6F99BAD146D084B2070A5686FB1ADF0E4CE47D0BD5BE8B62
          1E04B198E0C3CA6280C181E9D8AF18495C4053B015896F7C687CB375289D521B
          88B7D9FB71FF9E811D57FD17C175868AE4167C3EF2452C9E88CF3189532DA3DB
          814581A50DF5F5FC168DE06A781A1DA7BA3F55538967C0E59B64FDAB9589EEC6
          2ED745F533AC4B57625FCFFE1B7FDDF9732F9C98414CF09282677951E9D98EE7
          BA569CFBF27CFCA34B436F08D67B60F324B807A4E885E5D1C7CA1E953D6CB1FD
          FDF48FF4CAC4E543705ABD90DD05C8E03662AE7B658737CC75C4D444541047AE
          21A179604A1C4A9E4EB0472A46DC1407CE8A49E7615A4125DFD32E0C509E4A64
          AAA07A6E67FF414D472093ED0FAE5873B22AF4084DE9199C1FBD9226789A0953
          1839B290C4BE9AB5B5AFEFDED270DF91C1F6A91BA3D7AB05837F0B4132E2283E
          AFAFF0D470CFD006DFDA18966135F6B61E31C40402C034DDCC967A5FAC39D4B4
          B3B6164BA5003A077BF5B1D9F1DF65EEA286669B79F2E2453555D505F1559324
          E68E2034FE3876B7BE749960072442D9BB7D0D7D2D8187BD381E39868794F508
          28A5D06D23E7EAEC7012A3B869CF40E10E6C4EEDC4C157DE897E35FA750DC193
          4CE4E9B1A34F74B4955716A267E6282A940D08CA65485AA99C598529406D093E
          A308EACF1C274E0F4D5F1FFFA1056ED705825D6EC030A9D8DDB97F634BDBF6AD
          D5285696A1EBBD7E6D6C766A52E11E422C891A3A706B6EFECE6C64EA9C611AEF
          C329DF059704FC53AE7FEF82C681A8BAABA27CF36BF59BEACBFACF0EFC36F5CB
          D84630CF7C4E328B99E0EE0492691B8E851A4617008480309C402C2394B082DC
          E93F0CE25EA91BDA36A4E242462AF688064C4C1B4F8AAFF33F807F00487871F5
          4761E38A0000000049454E44AE426082}
        Name = 'PngImage33'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002E84944415478DAA5535D485361187EBE73CED872811E9D
          CE194D51038932A930A2BC09875745FF741591117551844408D5458189174258
          1041525810E6DF60E5E6A6826145D9CC4CCD9FFC89C8C5C4B3A373CECDF3D377
          767611DDFAC1391FDF39DFFBBCEFFB3CCF4B5455C54616696868982FC82FB031
          0C23ABAA020D505192BB2C43FBA628AABE27CFB2FE9F9D999D0B12AFD72B3A1C
          8ED4C0E20262F1185896D1704188F6D61E0544AB3251A90E663470B0F03C3ADD
          DD4BC4E7F50AD67C3BFFA2D709BB2D1BDA3586307A790CA341413F3209508EE5
          B0B81CC291E27D981C9E1449B7D727186D3CDF3FFB1E077797201E8FD38B446F
          F01F7A681309609663D0E46CC585B2D3589C5D1089CFD325A4E5D9F887FD8F90
          9B6781AA6859FF23564DF402538A0903FE017CE8F9085F9D0B73633322E9727B
          044B819DBFD87A19925980914DC166A339995D4D04AA8466A7DC888130867C83
          48335BF0B6DE83E96F1322F174760A9985B9FCD1278751597E16FE593F3C3F3C
          000B1818031885059138906506913F6B905722B066D8D173B70353C31AC09B4E
          C19497CE3B87DA5096558A3B6D75F8CD059193BA0513F333E0404164AA852C51
          1164AC46C3B09A73D07DAB19535FC745F2DAE512AC4576FE6AE31554943830F0
          7304FE5F63B877FC2682A1206A7D0F4058AA8424435E9710591191B9C9066FF5
          734C7E191389ABC3296CDDB98D3F537F0E87F61E80A3B01CB7DDF53856548189
          C0347A163E511929AD9204952AB4125E42A6310BEEAAA7181F1CD1003A84ECED
          B9FCA5C66A5439CEE3595F3BFAC3C3D42C2644390966430A549A59A2C1722C86
          55EA810CCE82DEEB4D18F78F8AA4BDA559D8B3BF94AF7C7C03A1680406730A38
          134759E71226D2962253EB6AF6A53CACAD45690BE9B87FFA1AFCEF3E8BA4E5D5
          CBD0C95327D2D657A38849D4CA2A0DA2014AC2FBB46C6A5D45B331D1E7431757
          818153E1F2F42D91DA9A9A40F1AE1DD9942059F3BC921826590F5492C3A35580
          6415F4BF2CD1F9E0C08E7E9F0A928D8EF35FCFC882D35522C8C4000000004945
          4E44AE426082}
        Name = 'PngImage34'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003024944415478DA6DD25B4853711C07F0EF36CF76DCADE9
          5297682DB29B61E9A240CC8A85140413A588EA413329A45A174AA1B4CC8C5E82
          C45EBCC1C20AD60C8A845E7A08B28692A219D883913B30D93AEE7AD6CE599BEE
          F4D70882E3FFE1FFF0FFF3FBF0BBC94451C4BF535959496E11C9640A2A155D58
          505070D76AB59ED0E9B4193333DF589FEFA7F7C78FB971B77BE421CFC799E518
          D9FF404545050481D7E6E599EE1D3870B0BEBABAC660369B2193C9C86F1AA150
          1CCF9EBD4047474BDFAF5FDC790950555575C162D97BC766ABCD292A2A5A794B
          A512E0F904E6E743243339A6A7C7D1D979FD65341A3E2E01BABABAE276FB1535
          C7090804424824928846E3585888106809B9B9B9989AFA8CDBB72F3B09705202
          F4F70F0836DB315AA190213B5B8FC9C959CCCE7AA1D5AA494F94301AB33136E6
          464BCB4527C785A4404F4FAFB069D31E5A10E2282F2F81DF1F86C7E38346A381
          5CBE8C666174D48DE6E6266724B20AD0DBDB2F582CFBE9402082E26233623181
          D41E044D2BA1502848067F81AB57CF1120B85A090EA1A1A19E66D910323214F0
          F94260D928012892811CF9F9264C4C8CA3B1F1942B1C0E9C9000DDDD7DC29933
          F5742AF59B8C4E04C32C20188CAD007ABD0E06831E2E97136D6D3706793E56B7
          CA14FA123535C7546449402B2904431C84446AA5F6F9792F9E3F77A45FBF7EF1
          89E3C276123725015A5BEF47EBEBEAF46BB20C48CA78B05E0EAC2F82D1B10F70
          387ABC0C33FB60B9D764B1D2E44002A8D56BAA7373D69E2FB594594AF7EDCCDE
          B2BE8C9A9EF88A818147D3C160A0CA6834B2590467D905B21F512960B51E229D
          E7480329B0FE60ADFDD235A746ABA56EB5DF7CB5B9C85CBB714321944A158687
          8709C24A81F6F6BB4FB43ABD4EA6D4454CE171D3E1DDBA238B7285DC31E40E50
          BB4EBFCBA4D22ACFDCDCE2D3A7838FFD7EFF4709F072E88DB8655B312249150A
          6706B1B1D403E4E9111B4962729D1D460305C6F31D4D4D67DF320C735402ECD8
          51E212D3E2561E8AE4F654586D2BE14D991A28DF7F91C74792267F2625A69716
          173318C6E31204A17339E60FE8E78AF06BAA8AED0000000049454E44AE426082}
        Name = 'PngImage35'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003A94944415478DA4D536D6C5355187E6EBFEEBD6DD7CFCD
          CE75EB369934BAD24D06AC1B9341639C2B0C83C60C302261A609191A9149A6D9
          8F19A33140E407314264B8286A167592E0078ACB3618A22353995D61ACC5D5D6
          D1ADEDBAD2AFB5B7B7F574FC9093BC3939E739E779DFF7C9F352B09E03723920
          C343C2324DA5454C77A3B970BDA952A1120A0494DBB398B8347279DAF9FBCD93
          088C7E8CB413F72F6A8580E3212B607A776EAD3ABCBFCDC056EB193002204B1E
          F024DC61A0EF1B07DF7FFCC44F41C7E9DD0459FA9FA079107205FBE6BE76D3DB
          FB9F7A50A0926421A2288250988F70C892E214520138B104FD43519CEA79E54A
          D0D16F257FD32B04C296F39B1A2CE5170E3D53CAD69549418BC5D0CA050844D2
          70CE255672901E21A705F0732C3EFC7A06C3C7F77C900A4E1CC86354F10B43DF
          3E5AADDEDA6631605BAD160A31908845E1F404B09CCA40CAD2644FC3E70FE3E2
          AF37E08AA9C07B1CE1E9EF7BEB48837F53B55D5703458528349A4C3057C8A167
          73B832348C29C714E40532224F0EFEC5286ECF2DC1E7F543ACD4C15C65CC4D0E
          741FE6E2DE63D4C69EAB29D7F55109454B616D6D458DF921CCCFFA3039318119
          D72C3C1E3F49448450AA50B6CA040BB380A444851F3F79E7532EF8E71EAAA1FB
          D2B2CB314E07E643D0192A61DBD50EBD4E01A90CF879740A8E2FFAB026BB8084
          7E039EB6A970507312EFDE78096F1D3D75868A8E7750EB5F1F0B4582FF6AFC77
          4230D69A60B4D4136924E0090137FC1D765DFB089B0D0F20AC0C41631DC1E5D9
          460CB83B419FB7DF1AF379DBA9CAEDC7464ACDD666AD5208737D35E2692112A4
          E2786C114FF6ECC0F3253472EBD620D57201C1DFA2F8EAB32DD03D9783553480
          ED47B933145DD4606BB21F39D7B6AD49AC9003E11890CA671F1BC2132FDBD068
          5C0DAEA519DEDC34288718864D61446BFEC21B4796174FFFC21FA0C0AE86D2B8
          A5AFB3A7775FABB5189108906481D8E09778B8EB45D46835903F56870CA34324
          E703DFE186F36C06F6B377866790B4128247C81C6445EA556B3FDF7BE8B5672D
          1BD709EE0A8959A75DA87AB50D26310F854A03A6AC0C315A8850740EF29004F6
          9BD7E70643C11A0AB491188DB83E4D0CCFA83BCB37D8BA0A8D8FEB595DB968ED
          0FEFC13E7B91D25754811189C0149700323546FE71A1E3DAF81FB753A9CDF708
          F276CDC649E344008419D0BA16329A46099F54EF482EECDC2D97559448889804
          9D2828C0FB81807B261EDF4B8E63F71124EE05BF44DC660077D7432ACBCF2274
          3AE0A016A84F02022F3099014E90FB5B79F03F27376EE73CFD52AA0000000049
          454E44AE426082}
        Name = 'PngImage36'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB0000037B4944415478DA65910D4C1B
          7518C69FEB5DDB6B3B1828C525ACCB64637E2538CAA6A9668CCF0DE76C1C5199
          5D4DC7C7C04164EA9CCA74D9CC64094CA796060C4B2868BA4C13DC949485A873
          9925D16CD28E0D525845B78E524A3BD87A405BEEAEDE314DAC3EC9FF23FFE4FD
          BDCFF37F89D2D25288929024A4249195B5F6C172CDAA4C2DCB2E52A3EE91AB2E
          D7D59E1BDE89418609836559FC57840860590E2A15AD2DCCCFB7ACC8D4E9627C
          1222D12822E14978C72E8EF4F69E3DE019BFD1272188FF03F20B0AA0A0E5B995
          95D5E7A88C6D6A5AA540861AE0E380779AC7F5B13F70D7DD133BD97EA2DC1F08
          9EA5282A115090BF798DFEB9673B1F2EDE9FB74049B02A4D882314733C201A0E
          CC016EA7076E7BD398B5BBEB29922443C4BF9C1075B555EF96191B8E8DD3D944
          CA328096000267C94154202C70408801828E6E9C3CFE46853F30D395E0C0FCC9
          473DDA1253D9704C682D14912240681017EE8BFCD213960B60BF7300D60FAB3B
          AE5C73D726002CAD9FF56E2879797B9052838902F3B17BDD459332216EB21CB8
          3F1918F9F51758DEAFEA1ABA3652910078FDB5FAE63253DDDBB4E6511042C7D8
          DFF945C5855329151CC9801F7A4EE3E3430DFBFD53D3271200CF6CD9AAD33FBF
          C35AB0B3F621DFEC046E4E8E81840C725A85C756AF8752018C7A26D0D5DCE8EB
          B37DA983447253FC44FE1FC0A6C24DB82F25E505A3B1C6E653DE96D1C9F360F8
          3928E6D2F1F8BA2248593986AF0C60F0CC57CE3CDBA94A1A70DD150AC5151301
          C42B84B0495618B20CFDBBB75664774F5AD1EF3D87AF8B7AE1F60470D9F1D3AC
          328AB0A9628F66E56827FB7B83B961CABFD82E0C065111807220E791DC034D86
          A32D8E3F1DB08FDB712B720BA61C13B42BB518B27BCE27BD75ACC3D45D7F5AB3
          D9873B4333BC63D7CF7BFDA1850E6E09F02250985B7CB8E4C9A2238DDF364291
          A6802A49852017843E478FBC40E9E09CA14EB725152DD97B54FB94C68D087A15
          ECF7BB2EBC7A3BB4D049C000ACCEC8DCDDB2B3C52A959230BBCC70869C3097B4
          424D3D802FBEF9CE7EC6D6BEDD32CC214D8DB6E29AE4BD2AA31693E372EED211
          6733814A421C3C8508361ED67F709CD32C3E7DC1771E6F6A0E46AA9AF655CF30
          E1FE65CC7CD0E26270870399968EB61DF5A935F127D6E162C7D4A97B0051B371
          E4ACDDF0CE7B2F1D3A2893CAF8BE811F7FFBDCF6E93650A9B124268256571811
          21F4342057A713470909C107FD7CDB5F8D726ACAC502B8CB0000000049454E44
          AE426082}
        Name = 'PngImage37'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003C74944415478DA4D936B4C935718C7FFE785DA822D2DD2
          16661510141D13370713B7183762DCC0BA155B74A3291BDBEC84A1EC12CC6696
          2560D499A1A28C0103E65CE2163EED420425E068E82C771451428B948B28B76E
          58A015DABEEFBB03D9CC9EE4F9729EF3FF3D97731E62341AC1F33C968C10028E
          E3C0B2AC3824447EB5A5C5D269B1588ED2904FA7D341A90C85DBED9229148AFC
          9898584351D1B9DF89C16058162DB94020C0FCFC3C0531C9D9D9876BAFD537F8
          CE9E3915470136B55A4D014AEA8AB2BCBC6359D7AFB7212727E306C9C8C87802
          A035D0ECDEEDBA34FD55A9542A6BB87291FFB5A6A9C239BF909598B80D727948
          CCAE5D299D62895C52F8F557AED65693F609C0EBF5422814EEDCFBBAF64A9024
          583233D1018DF625FC696EE53FCD2B3DA78A88BE94A64B6FBA75AB37A4AAAAB4
          CEE35928A519EB96011E8F070C435ED6680ED488C5C141CEC95668527760A5F8
          29809FC56FBFD47237AD82C763630F453F5E2AAD6059DF870CC32C27267ABD7E
          59AC562F89254153C38DD8A7DB09598808ACCB0B4BB71B5E4E8051FB3D1414E4
          DF1E19FFFBD98015FE78ECF1D159D1A68DC60FB4C929FB2E0B85A280E9211362
          D64BB14EA5C29DEA66B01191E0A21370A7FD26925F5160D631C21DFDACBC62D2
          319B3D34350B813F03429FE7F4DAF0B8BC48798BDFFB860440A681BDA91373E6
          414CDE1FC770D84ABC91AD81CBE9C386E855E8EB68E60F1E3EFF7D8FDD61140A
          FC4022376D140FF75B9FD9BC51965759BC45ABE4B7310F5A258852C8602FAB44
          CBA80DBAE66A44AE11626E5E84C06009BA1B6BF0457ED50F1D038EF7C89EE060
          386666C0D2916EDE1036FA796ED65A65E06AD82ACA61754D439A7A00CFABD720
          5CE581754482BA2E06A949ABE07E78179939253F915C2AF400FEEBC355F5DAE3
          279214E24032565C88DEBF463173BC12F1F111D8BAE22E6D610E8C381C8DA66E
          C43D170FB7DD0443EE77FDC40888A2D645FC71B0EC9B1765BE054C179F417D7B
          0F7E56C916530C3A8131732FE31A1F40B5D90F499B9CD8B223169D0DF7603894
          3F649D74A5938250C545E3B745EF2A0385982D29447B572F3E76F263FD0B0B99
          115226BEE444E6C9D7F66BFCCDA666246C7D1AD63E07159F1CB64DCDA969F17D
          A45D9FEA79E19DB7046CF90534DFE8C6278FB8891E8F37952168E3E88E8506E0
          484981FE6CDA11A3A0ADD68CB7B34F0FDAA6DD7B96F6637901CF47854DEC8F92
          879A7B07F1A563717080E5DEA4E75D14001161E0A6BF6DB5841CFA283DF1C2E5
          6BFDE3BDA38F5EA5F101FC6B2416D8CE00A7EE1332E6E4F963F4ECC152E03F00
          CF7358A495D03BBB7DC0240DDDC6FFEC1F3D469D2EBFFC491D0000000049454E
          44AE426082}
        Name = 'PngImage38'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002B34944415478DA7D933B4B63511485D7D168728D1AA285
          5A28E20345AD32206A1548E1131545142BA79952A631E00FC81F98BF902618C4
          27A2188289118458F8282CD44A096AE208E2DCC45732676DB932D59C66DFBBCF
          3EFBAEFD9D75D5E2E262726060E09B52AAF0F1F181A2A22270150A05E89C3C5B
          91B9E2E262D8ED76158D46B38140E0A7DADEDECEF5F7F7DBAD03EFEFEF1259F8
          FAFA0A9BCD2639EEF3399BCDA2BCBC1C676767181919D9579148C46C6868302E
          2F2FD1D3D383D5D555545757A3ABAB0B9B9B9BE8EBEB435555158E8F8F313838
          88BDBD3D545656C2ED76432BDF573B3B3B66535393717474049FCF07AD48363B
          3B3BB1B5B585DEDE5E798FC562181D1D05EBA8A8BEBE1EC3C3C371B5B1B161EA
          CEC6D3D313CACACA64339FCF7FC9657C7B7BC3CBCB0B4A4B4B2572848B8B0B8C
          8F8FC795966C8E8D8D199C3197CB491161B2D0E1704813AE9292123C3F3F4BAC
          A8A810251313139F0DB474E3EEEE0EB5B5B5602440CE994EA7657E36364D53D8
          DCDEDE4ABCB9B981FEF0670343AF9393130C0D0D414395C39AF01744AE442281
          C9C94981A8CB515353C3FAB85A59593135308333793C1E9C9E9E4A414747070E
          0F0FD1DCDC2CB299EFEEEEC6D5D59578853919616969C99C9A9A322893B028DF
          62C022E6089579D630BA5C2E249349CCCCCCC455281432A7A7A70D02B28CC303
          6CC206CCF1662C63597C08519F8BAB70386C6A0319A9540AEDEDED383F3F972F
          58A45B5A5AC499F7F7F7686B6B1343D1176C260D969797CDD6D6568390666767
          B1BBBB2BD7D7D8D888603008AFD78BBABA3A1C1C1C405B1E6B6B6BE2036D3ECC
          CDCD8982ACDE705C5F5F435B5ABE44F9D6553172F17A49FEE1E14146E0BB3652
          42F9FDFEDFF3F3F36E0B1C19D0549C9BA6A25432210FEE9301C75B5F5FC7C2C2
          4254399DCEEF5AE20F9A4D1FCCE33FEB9FDFDB96C964FE3C3E3EFEFA0B42E379
          B5764BD09B0000000049454E44AE426082}
        Name = 'PngImage39'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002BD4944415478DA55534B4B5B51109E7373AFE61893DB54
          8B04EAB2BF40706D0B1595104DC4D6C7A2B48B2EAA8B2E8450B7FE83FE091F44
          3058AA546831BA2B626252E8CEAAB5B6104C69E2CDEBDC733B33D156873B9C73
          8733DF7CF3CD396261E1CDE7E1E1E13EED090F0DC86815F0DF3CA0782B228400
          E9976267E753757171F1B5D8DEFE50337A1FB67F392A8365002857837BC3B5EB
          718C5C6B0D8EE342E49E0DFDF77FC28BE9E8AE78BFB9E97C55FD72AFF00BFCA6
          010D8587950BAAA9A1892B812875BD77E14F59416FE42EBC7A5483E4EC935DB1
          B1F1CE79D03724BF17CB600056C1835A7BE0B2B718789848FFC4A0DE70A1ABCB
          06D9F806CFA61319914EA79D582C26EB4E05AC36130C1FF6E169FC34358F1F81
          6806D55771190CC2FEFE218C8E8E659041DA1918782C4F4E7E40381C04D3F431
          E5F67613AAD506D396B20D7C084C7B6211448042A100F1783C23D6D7D79DC1C1
          21592AFD86B6360B27A0AF002C04A8B106B4370C0327E0B13ED7008904B6B0B6
          B6E620922C162F3881C66559265C5E3A4C9B405D57719C58D188C3611B01F230
          3E3E410029271A8DC9E3E333AC6080DF6F21800F2A95DABF040222351A0DC56B
          4F4F37E4F37998984080542AC51A1C1D9D826D77223D09B55A1D0201897A184C
          99DAA2DE3D4FE0AAA0B33308B9DC214C4E3ECD889595159CC2983C3D3D8766B3
          C9F449B096513B060352CC3004BB6D87209BCD21C064462C2F2F3B2323519E02
          B5100A49ECDB64BA54959CD427115B579D34B8830C7230353595114B4B4BCCE0
          ECEC1CEA758520C03A54AB754E6836158FB6A3C38F602EF3EAEE0EC3C1411666
          666632627575B51A8F27FCE572859395527C88005A2DF8B82AB5405AD0584321
          1B1964710AE37B22994C5ECCCDCD86A912516DBD46CDAF4E5F5D5F6272D3E91E
          6C6D6DC1FCFCFC471108049E472291979867799479CB0457BF15416074B3582C
          5E964AA5B77F017767B5D1DAF815130000000049454E44AE426082}
        Name = 'PngImage40'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003434944415478DA75935D685B6518C77F6F9226394BD2A6
          B859238817CE4E9C3261B21BD19BF951DAD2341FED5A8A432913462FFCA05802
          C2BCC98532740CEF65B0D5B65B6B63A90D1BB698CECD75EBDAAD4D5B2654B77E
          C0305D4C9A9CD473724E7C13F5C2820F3CF07E3CFCDFE7FF3EFFBF884422371B
          1A1A0E032519EC0E21C47FF6168B0587C321A6A6A60AD168F403313131B12301
          1CFC6F94CAC8986639CDCADA6EB7B3B8B8485353D3B4181F1F571B1B1B9562B1
          484916D86C601826EA8ECE8E6662B59670DB652758C8FF69502C1A783C6E5656
          5668696999166363636A7373B3A2691AF62AC1E65681EBF754363336F4A28D5C
          A148B543E38D17ACD43F69279B37707B3C249349FC7E7F42C462315522299474
          961E6C13BB5DC05953CBFE3A85433EC1D21A5C9ED558DB4C71FC358D370FBB29
          595D924292D6D6D684181D8DA97E7F8BB2F528C357F10CD67D4FE054ECBCB80F
          DE3A0073F761F03AFCBA5EE4E1FA6F9CEEB6F2F2411F33B7EE12080412626464
          44950B65726683F3730E9C757B65DBB0BF163E7E1D2E5C836F2480FC0A9277EF
          73E2D52D4E9D7C8E1B330B0403C184B8343CAC86824165F8CA032E2C7951EDD5
          E83A3CA6C0278D70761CBE9520DAB6466E2DC93B47FFE0EBE8116EDC9400C150
          425CBC78490D8743CA779757F9F2470F9A5BF66E82AEC191A7E1CA6DB8B72AA7
          A9FF0E1BB7783F6CE3CCA7AF70EDE739C2E1B684181A1A52DBDADA94D55F36E8
          3E9D2569D6CB695839F414741F85A149F9073FE421BF8C924E722EFA3CE1D683
          4CFF344BC7B16309313838283B082B18DB0C8CAE73F28C206B3E43A0C9417F04
          3E3F9FE1D467CB9059E2C3B71F27F2D14B287B3CCCCECED3D1D191100303036A
          28145672B92C2EC9FBFBF83A5F9CCBCAF13964A1C64E36C55E679613ED3EBA3A
          EB314A16A9C43D2C2CDCA1B3B33321FAFBFB2B14D2E97445F76E97956C7A9BE4
          729ACD873B54BB6D1C78B6863A9F9B5C5EAA532AD4EBAD617E7E9EAEAEAE0A85
          427B7BBB339FCF57745E4E5B957CA54ACAB764222D80A64B69AB3A45C3C094E9
          F57A2B00A150E8AAE8EBEB7BD4D3D353ABCBD919F2B21C7F9BE61F2B9541244A
          D994FF3EE091528EC7E3F4F6F64E0A97CBF5AECFE77B4FD65695CAD5BBACBCDB
          E2E53399B6542A9597B4CFFE0515958FA977E4EBDF0000000049454E44AE4260
          82}
        Name = 'PngImage41'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000027A4944415478DA5593CD4E1A5114C7CF0104A60A46B055
          D2C7E84B604460862F6B57DD7463175D98101E8017E84358B060634D80952663
          775D5147444D6DD2F423A6446C4D470ACC9D9E7BE7039C3B772673E7DCDFF99F
          8F8BA552E9633C1E7F0208265D00743B17A2784E2D0078D003C140000F0E0FEF
          CAE5F22B6C369B030204E08F6D1426860D116F7AF0C16F6632EE05FCFE19D0B4
          63585D4D1C61A3D1D0E32B2B52EFF41F3046568F4D6043263632BE99B1C99BFE
          1B0683A54721F8F2B90B89B5E411EEEFEFEB894442BAB91C082388512C23CB93
          C96C88ED9971886142642104676727904CA6547CBFB7A7279249A977A18B0DDE
          65923A24631AFCDBB4BDF37038C0A0B918B500A9545AC53D02AC11E0AA7B4B86
          400004369E28E0DEB9743E04801470C0F99906B22CABF86E77574FC9B2F4EBFC
          5678F2C53C428118F6662B796087C0201209C1694703455154ACD7EB7A5A91A5
          9FDDDFC2D8BF44809113BBE17AE7EA1C0057D0ED1E43269353B156ABE9E98C22
          FDE8F4AD122D79096067DE4DE47D058BD13029F804D91C01DEEEECE8E96C56FA
          A65DF35E02FFB217C654469E46719B6C02013B079179E89CB4219FCFAB58AD54
          75A56001C0B4423046CC6E223B81E6541269462361E8686D2814D655AC542A7A
          369F95BE6A3DB129482118E349099DEEB3FAC0142144A90F4E2884F5F5A72ABE
          D9DED6957C4EBA6C5F896697386074BF8C16084495AC3E088B1036369E5108D5
          CA5D2E5F087EBFB811897BF0D0E70298DB44D4C24E4F180601E6E92CB4A90A99
          0F582C16AF375F6E2E0C0743F1137DE8CA1707CA5121CE95B53E37178256AB05
          5B5B5B07383B3BFB3C168BBD400FCE90210F79EA38A30B9A5EA3E9EBF57A7FFB
          FDFEEBFF58D308B777D323CB0000000049454E44AE426082}
        Name = 'PngImage42'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003704944415478DA3D936D4C1C4518C7FFB3337B7B77A908
          17FB41212277A48682D546425488B58269824A6CB4924A0F2EB51415FC427C8D
          2FF5055114CBB51AAB479B02573EA046930AC597D6A8C88BB64D21DDE63E1489
          11142AD6981AB9BBDDD9596787A63B99EC6CF699DFF3F27F1E8226005C03842E
          0F2EA88BE6DBD755F5DC745DA9211CB8AE20601A23A985596B6C7A7C0F176E37
          A439B204B029C82A407E702A2122BF6AFDA6D991678FFA83013F386C780F95CB
          B535D4BDF608FF6AE25818549F57F6FC0AC023AA77D9AEFBDA667A1FDDAF458F
          3722F54F4A1A10145E5588235B9278E1E03BCEDEE41B1B01E32C884F3AF4008D
          F2A28DB5B0908FFFB0AEBE363A987CF210ABFCB812D3CBD30A10C98D6062FB38
          9E79BF93F726BB1BE05F731ED01701B644688C36DF567C47FCC66BD71BD99515
          B7BAB48645376F47F5A73598599E5905E44570E2A1E3181DFB1E2353A3DC17C8
          21B3F373F6C499C997C9A6CEBB5686DB87034123A0721642E08F7F17D170AC01
          E6B2098D6828CA2DC260ED20C279327D4D0393357164791E7829C6C91303AD7C
          7F741F8D1D8D21F5770A866E800B8E854B0BC88AAC8A40273A0A720AA0531D96
          9D45514E18FD5BFBF07A22CE49CBE1C7AC9EA6BD7AC5A10A987F9AF0EB7E1042
          10A441108D28155CD7459AA7215C818C9D412414C14FBBA6F0F647076CB2FB70
          8B156FECD12B121270C184E13394570F448994CF5B1EC04EAB735646501C2AC6
          54CB24BA121FD8A475A08DEF8BC6E9B623DB60FE6582F9181CD94117D317552A
          1ECC03850221302AFF598E2AEA27D12174F6BEC7494DD73D9991F661232DD22A
          6757B858BA7401B1CF9A54445E3ADE85BE07FB7043A8101AD5A06B0CB97A1EB6
          BEB8D3212CC69EBEBBB4BA63E3F5E52C9DCEB8779654D1BAF25A541EA8C2A9DF
          4FA93A94AC2DC18F8F8F61FCCC697C7DFA3B27E85F43CECEA5C4379327DE24D8
          A11A295FED1584EBEF6D4C0EB426D8ADEF96C35C30BD3E46F89A229C6CFF19CF
          27BA78A2BF3B0A233027BB71091AFB8D207AB9952DB91D9435DFDF36FDE1CE38
          7DF8603DCC450990831391FA0FED1EC2AB033D4E777FC7CD70D8399020647858
          0538E4F2448A82CD1BAA7F197D6EC467C9E1C848E9541F48FDAFF6E5A2EE951D
          E28B1F3E8F48CFBFC296D32BAE00343518DE38CB2E7BAA66C3968E5B0ACAA8E3
          B89E7260C447CECD9F77BF3CF9ED5B5626B3474625F5A4CAE9FF11DD6AD296C1
          88640000000049454E44AE426082}
        Name = 'PngImage43'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003074944415478DAA5936B48536118C7FFE7B24B6D7AA42C
          A9C489DD2CD6C52425222A2B6644E687FAD005C290A43E74418AA2BB50410512
          545044A32C23238A4A383A2287733933D4D2D6727369BAB976F16CBAA56D3BA7
          37ED02E5B7DE2FCF87F77D7EEFFFFF5C284992F03F87E296DFEC1E1E8AB68D04
          2207A1963BC050A094B2243A269E8F87475A10871E723A0A8ABC9631C0B71889
          2C10279165416D2EAD0D15AECD483871D1D4E7ECF41F839CB94DC9E8F495CB35
          CEB41415EE5675DC1745F138144CD7B8808203B582BE7C1DD7DA19C28572336A
          0C363D86A3155BB62F797CE3DC6AEE66950D97AE98BB3CEED069A2B0E21FC0AA
          3DBC50B25FC78DC401352BA2DE68C38DAB75BEECACE9DCD1B24D329A7CEAFE24
          E0D62D73EC95C95E1597C44350C85DBF01B9C5BCB0A148C77D0962D466CA2440
          E8F7C3F8B419EA243516E42D46F25415549484C617EF6078F2DA29F8437BC1D2
          3C643250DA9DBCB0A050C7F906C70071A2243111904B51D8EADBE0ED7543B374
          21A6CCD6805302431E1F9A9E9BA5DEB7F6EB50CACF50B376F0425ABE8EF31300
          FDB33522E92C436CAA2702917E2FBA1A9A91A04947B276DEA8FD094C0C7DAD1F
          E13059DE5019DB7841B35EC705C27F0020008A78671404E01D80CB6C816A7A2A
          A66569313A35B488810F0EF4181BACD4CCEDBC3067A38E132224E9E74C2926FE
          28B208A7E51D86BA7B30232B13C9F3678325D0904780E3A505FE8EF795A488A7
          A84C52839CAD3A6E2832963C410504BD41B41B9AA150D09897970D6E6A224452
          745BA30DED358D5F223E7F2918E61E0148D4FC225EC82FD671D20FFD44C2FB46
          07EA2A5E0653674E516D395CC0B24A1A9E9E108C5516C9DE647D26C6C4522858
          3B44917864402D2AA915769F5CC7B93E87517DC78236A3F5A13418D1E7146657
          EE3A9297D450E344F5EDFAFE406FE02C94EC15C449224B7EFB0558B6CF10CA5D
          3337E1C13593E0B6F69541AD2827DB90A6CD4DEF4E494D42DDA396A7B1AFD153
          50CA5AC19246C7FE02A857E85DB1C837FB7020BC174AA61D34B954CA263312AE
          8D2D9378190CFD1534491E0FF0BFEBFC1DCCCE5BC2CE6C04480000000049454E
          44AE426082}
        Name = 'PngImage44'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002224944415478DA63FCFFFF3F032580916203F0CA1ACDE0
          0792132444B8185EEC8A4B44128F7734959EF0EADD97C38C7834D77BDA291574
          E45908A437EF673831DF9F1728662C2BCD3FA13EC3C2C0DF418121BC78FD5946
          2C1AFDD594452794A45828E86B4B31B0313330C4966C6278F8E8D5B6206F43AF
          9C586386B7DF191844B91818D2AB910D309AA1CFC9CD312136C2C2C1CE569DE1
          D9270686CF5F7E325C3E7985E1D9CB4F0CE909560CDFFEB333BCFA0251AE20C4
          C0D0D90D3200E2CF06531B9D020F2F138657BFD8C1363CBD7693E1E18DFB0CE1
          41260C7F7945181E7D4475A8B62803C3DCE94003B8DCD6BC770C751360E0E465
          780135FDF1B1A30C42B2D20C66C60A0CB7DE3230FCFE8B1944C6920C0CABE602
          0D60B19CBD5544C7D04BCAD8181E25AFAF5D66F8F2E22583A4A939033B2F2FD6
          A8821B0064B331A895F87048EAB4A93AD8AB4BA92930FCFFF70768C013867B27
          CF33B089CA31281AEB30B072B0A318A027C6C0B068066A2CF03068B7148B6BE8
          14DB0439F10A8AF032FCFBF393E1CDCD5B0C47F75E6550353764D03051872B96
          E4616058320D5B344A78CB3388D83618B8D82478069B307072B333CCED58C5F0
          F0C2991A2903EB2C071F5329250D2906162606866593B0190001CC0C727106DC
          B216335D826C8CCF1EBDC9F0645D282FD070610661CB622367AB84C07013DED5
          F3F69CC59F9441E1A35210C0F0EFA70CC3BDE9D381FCEF30C359244C6B78D9BE
          BD2264007EC38198E2DC0800ED7BB2F64F8199D60000000049454E44AE426082}
        Name = 'PngImage45'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003774944415478DA75936D685B5518C7FFE7DE9BE42669DE
          96366D9374C9D2DAAE59A5384B95B53241E69C6362E72642BB811F0603D1ED93
          822FE83745D1AD152C4518D28DA14E6D673FCCA95156D6B276D4B946E696654D
          5FD2A536316B927B939BE4BE7892891F440F1CCEE139CFF99DF37B38871CDDBE
          1D8410269BCFF7AEE7843562B7453C84F05B25A9B3A8E39E30D7B99E6A6E6C0C
          36C9AA552D97D5D09FC93B27E6E68E4872799A250C48FFB62014003B78F36D5B
          2E57BFBA71EF6E40514C5B0C863A8F2FC07BBABB819600905845253123133C32
          32746E55C83DAF6708C8736D6D28691A06BCEE95FDC98C3716BE862D14C83534
          007B7702CFEE065A9B80E4348D2E617D4943CF912FC7D7F2853E6B6D2DC881CD
          AD2895541C1CF0C45E78CCE617BE5F408D8307F7503BF0F0A3C0E62E8018E9DE
          09C0348F4CBC88EEC77F3C8D76CF610854E1A0E7019425057D2F7963875F0DF8
          11C903363D4D76D31E042C41A84515855B17901417319348E1A36F22499DA5F1
          DB3F428993A467C751C80B61BC7C48BADDFF464B4BEAA71C16E765D4B53A419C
          CD50ED1D2898BCE0592B04FE1E3E587E11F3993808EF42FEAC7999F4EE3CFE34
          34B97BBF6FFD953D7B4D8ED85A19F90909E5441CEE3B61F8FA0E403A310C9FD5
          841C77136FFDBA0B332B71681E17842F2C22191AFC4AB0396ACC1BA91C3D8585
          D3EDA4C55201BE068EB13308669310873F4583CE084177036F87F750C00AB4FA
          7A88E72C5972F1E2555514B2E4EAB530B6756C45E7831D90A40218C726885F7F
          0EDFDC1594073F4183C1FCDF80B1B149C5E9B433D168147E7F133C5E372D6A09
          8CDD86F4E867F0CEFF02F9E3E1FF079C3F7F59E9EA6A678AC51234FA1E344DAD
          1A30763B564746FE01788C1614CD11BC796317A65796A1D6BB209EB666C9C4C4
          65A5A7A79311C5027527B46B201444EC0EC44E0E21F0DB7570A3A3A8D301D1D4
          1CDE993C84F0621CBA56177221364FC6C727957DFB7A9942A144FF04AAAD3A98
          0C98797710C6D929DC1AE8D7667F0E895766A722D1A585EBB2A4DC353AF966C2
          924DE4D4A90B4A20E067D2E92C5896A10AA86AB85CB598BAF403DE7FEFB54B19
          A9305E2E95BEA3D89BF8BBB1E060E00C20C78E0D962C1697AEA2C030F7AF5001
          38A8C2EF9129F5EC990F9FA4A15025CE711C6459A96AEA1903F4BC1EC4ED6E7B
          9DE374CF30F4F0CA4A4583DC77E1D2E9446C6323759CCE1395184BDFC9BF017F
          016CA8849171288C680000000049454E44AE426082}
        Name = 'PngImage46'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003084944415478DAA5937D4C4D611CC7BFCF39F7DC7BCE7D
          EB864BDE434B4BA8305BACFEB088B0867FE20FC3901965DEEECC58E80F6318CA
          4B455BA554B31A1A9351D6CB18AD449897CDD665989BE89E7BEEBDE71CBF7B63
          C6BF9EED77F63CFBFD9ECFF9BD7C1FA6EB3AFE6731241601037E80E7E9C4005D
          779845A1415291F0D5FD234757B4EBE4F081E780C100F90DBFEF2691150D01BE
          9343A36390B2F106C64E4F1EDD71FC40EAB8AAEAE7282BEBAE875F3D0893B17B
          08403F011F022C21ABFC1BA0D2672010153F63547363D58AD88963ACA86B7805
          97ABB9FFCD8B2F2E30AE98023570268AD517D18D72C6928AF60B3E3585694C81
          A66BCA37854B9814997EF3DA2A4B8F6247DC08C02AFFC0D6DC26D455F75EA5A2
          3740300DC2FF0B1093591128C89D6D705A0462EB50A98C08DACF4D76E250B380
          8E8F3CB6A770C888D671F8702BF2F35B5B5495A3F4B9B904A866F356D7C8B72F
          66884D5D0378EF09C266358337F1F0FB75B4F7F1782F8BD00513B2121872A86D
          674E3EC2CE5D772B348DBB44BD286729D935DEAAA3A9D2DAD3AFF1F09D02A7D3
          0EA359846831C31121C26A95609044C89C88F45886DC992AD6AD6F94ABAE749F
          07C4A5614045C17C69CDB11EB4BFF611C006A34522800487C302BB4D822099C2
          80F93112F2D3802D5B6E074B4B1E5F00A4856C5E76ADB7FE54AA547EC78DB79F
          03B0DB451804012A8DEA895B837B90CAE18C5832D38623CB235177E519366D6E
          BC21CB5A2160286671CB2A032776CF31449A0D3404841B69970C98166DC3C6CB
          1FD0F84C812B2B0A798B47A2B4F829B6E535F5CADEE0024088A526D6322EE9FC
          2993AE27710C7E9AAD2EF7FBB9C4C991293525E952657B3F66C539901667C5DE
          7DED282AECBC47425A497AF04063436344E239C0171C125228058F3F6A6AFCF0
          FB37CA164E9D32DE86968E4FD8E16AF376B6F59DA08823100425AC58FD5F4068
          F9C24A24298F6C2B3D9636A1B6E12D0ACF763DF4F62BBBC0710F48D29439BD85
          40383A93ACE20F20A4719585B21866B7196F4598F864F74BCF1ED5A75E86D5E8
          C1378A0992318162C380396425EC7F9FF34F87D5412F304A4F91000000004945
          4E44AE426082}
        Name = 'PngImage47'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000017352474200AECE1CE9000000C84944415478DA95D1011183201406
          E0DF04B3C16C301A408435180D46836D0D5E836903236003D6001BB8060A3736
          1CE829C7711EBCCF07EF15C01D7B469101227C583FD740854ADA27AF811BA0B5
          ED1F9D44BD0244F2D76427064797C21DF691E07EEDB2806B5D287532A60DE642
          341853D6B681CE6560EC4CF40A464CD1D3AEA21268BEB7FAABD2CF4869D3E86C
          593FC698431ABD0418D1DB8301B69B9F2680B1EBEC4ACA275900D1A3CB163A3C
          7A6E726575D1DBCA0AE11BA7A3C655DC35736A5C0E6C1ABBC108945C6C116568
          420D0000000049454E44AE426082}
        Name = 'PngImage49'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000017352474200AECE1CE90000009F4944415478DA6364A010300E2B03
          1AFE33305C42925AC7F8BF81E13F585103A645203990382342339866445704B7
          09C9106483091AB0F5160383B71AC21064312403E2800628216985180473E6DE
          3886FF4E50E97DF718189C17410C4232000492A1AE90851B025304E21D4D8638
          DB7A2E038AE1586201E11D6403080422BA01AF81F454520CC8FF8F2A3D112C7E
          2F9FE1BFD244EC06C0E406554A1C20030002A54E112BED9BA40000000049454E
          44AE426082}
        Name = 'PngImage48'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          53000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB0000000467414D410000B18E7CFB51
          9300000300504C5445000000800000008000808000000080800080008080C0C0
          C0C0DCC0A6CAF00212010B14040A1A03101F061D1E0B022D010B2C040D3A0615
          2408152D08182A0A1321132D231035200F3521103925123E2A163F2B1815410A
          1C471C1D4E1D324415412C17402C1845311B4C351D50371F50381F4735224C37
          224D3A28533B22513F2F5A3F24524D235C41255D44285A47335948375D4E3E57
          532363462761452865492B6A4C2C6A4E306C512D6E50316A533C74522E745432
          745A3C7857357A59367D5C3A58584C515C515A7A5A6757486E59456B5C4D6D5F
          547D62447366577667597A6C61825E3580603584613B8B653B8F693E94663A92
          6A3D8463408C6A448B6C498F7556926D44916E4896724C9A714398734A9E7951
          807264837668867A6D8A7D73A27645A17748A57847A3794CAA7D4BA27C529A82
          5E829474968675948A7FAD804DA5825CAD8151AB855BAD885FB3834EB28552B0
          8658B68856B38A5BB88751BA8B55BC8E5ABE905DA28C68AF8A61B28B61B88F62
          B69366BC9263BC956ABF986CBC9B75BB9C7AC2925ACE995DC19463C09668C799
          65C3996CCC9A63CA9D6CC59D70CDA273CDA67BD5A36CD9A263D1A473D0A678D6
          AB7CDAAA75D9AC7ADEB07CE2AE73E2B17BE9B374EBB578EEB97CF0BB7C808E80
          8293828D958D8D9D8D9B90869399939FA59FA0978DA99986A39A90AAA299B1A2
          87A1A8A1A4B2A4A7BAA7ADBEADB5ADA5BFB8B2B8BCB8B2C3B2C7A884CAAF91CC
          B090D7AF85D1AF89D5B084DBB284DABD8BC3B4A3CABBABC0B9B3E2B583E4B887
          E5BA8AE0BB94F1BE83C6C0BAD0C0AED9C2A7DBC4A9EEC08CE1C09CF7C78DFACB
          8FF1C490F4C997F5CD9DFACD95F7D29DFAD094FCD59AFEDA9DE8C6A0E0CFBDED
          D8A6EDD6B8FBD6A3FEDDA1FBDAA8FCE2AAF6E2B1F9E4B0FEEBB6FFEEB8FFF1BC
          C0CAC0D5D1CCD9D5D2DCD8D4DFDCD9E1D2C1E0D5C8EADCCDE3DCD4E4E1DEEEE5
          DBF1E2D0FFF5C2E1E3E1E5E3E0E5EAE5EAE8E6EEEBEAF0E9E0F0EEEBF4F1EEF8
          F2EBF3F2F2F8F5F2FFFFFFFFFBF0A0A0A4808080FF000000FF00FFFF000000FF
          FF00FF00FFFFFFFFFF1B5576AB000000F674524E53FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF004A3F20A9000000984944415478DA63FCCA0002B74F
          DDAE6605B318C1026779B917EDDF852410ABF0EBD253F76E84801DC3B71FBFE6
          5B230418D4D87E32DC46D2C250B9E937C32D640106B5FF1005700155F62B2802
          BDBF96A20AD4496CBC8F6CC6ACDF8C276E7DBD8C1088AB67DDBBFFCA39B8C09D
          BDB33E3330B05D810BA44A4A7EB971FB5DAB3F4C208295EDF7B34FDFE5B7C0CD
          F03BC3FAF3EF8C6010130005254661249BC1C50000000049454E44AE426082}
        Name = 'PngImage50'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002C34944415478DAA553CF4F134114FEA6BBA5498178414C
          DA9B09272E9E6C8317A32D6D0A1448302037C2C50B177E08120F241604A3E160
          2321F14AB98A09249800294A7F863F80042A0205921211BA2D6DB7DDF5CDB488
          076F4EF2F6CDCCCE7CEF7BDF7BC3745DC7FF0CE6F7FB7F5A2C965B34D73896A6
          6915D32BBE8452A9BC57F18C8FF3F3737D6EEEFD071689444A369BCD904A9D41
          550B3018243AC4E8B0FE07E87A5E2C6AE08CEBEAEEE0F03081DEDECE188BC5E2
          2A459797979771FB761D183394A931F1156B3EA7A0046E80A26460B5DE85C562
          455F5F7788C5E371F5E2E2423E3D3D85CD761FF97CFEEF0CC5B72C93869A9A5A
          6C6CACE1E4E4179C4E1731E808B16834A666328A4CA9A0A1A1816816FF295655
          559500F7F97CE8ECEC464FCF537474B8432C1C8EAAD96C465E5C0CA0B6B656D0
          349BCD371C88BA2449A443093CCDEDED6D4C4FBF456B6B3BBC5E57886D6D4504
          C0D4940F6D6DADC8E5F20887C3E21207E3E2E57239ECEFEF23914890D02A6666
          DE1180172D2DCE32402A959257563EA3ABEB090281007677770565DA17208542
          4180707F7696C2E4E41BBADC068FC711629B9B5BEAE5A522FBFDB3686F6F07D7
          22994CA2BFBF1F474747585A5A12F479644551C0C59E987805B7DB43F638C482
          C16FEAD5554E1E18780687C3497979B1B0B000BBDD8E6C368B60302884E5D1D3
          E9B4001F1F7F0997CB8DE66602585FFFAAA6D38A3C3B3B8DC1C121ECECEC201A
          8DA2BADA2CF430994C827E269301951B07073F3032F29C003C54CA4721B6BABA
          A61A8D2679747490EA5C2D2EF0FCB99724B9423F2FC0A8DCE01D3B36F6024D4D
          0F088018ACAC7C29DAED0FA5E3E32428156A1A4D349024713340962532038C46
          89D610D5B15AADD8DBDB23004784CDCF7F2C3636DE9378B771E311F9E000E5F6
          BD36BDD2DEBAB044E23B868787E2ACBEBEFE3545B5D1A329DCF49D8EEB677EED
          35EDE62F01323A6FA4FEF9F41B0AA98FA2128AADDA0000000049454E44AE4260
          82}
        Name = 'PngImage51'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002BF4944415478DA6D53CB4A1B5118FECFCC249343629AE0
          0D1B1411DFA074E1528A1849CD0D8D82AB6EBA71D385203E802FD08790882855
          12E24A217621942CBCC4BA9056286A2369D29864324EE6D2F3FFD1504A0F1CE6
          90CCF79DEFF20F5B5B5BFB120E875F31068E6D3BF0EF62E28FBF972449A0AA2A
          3B3C3C6CADAFAF7F60FBFB397D7A3AAC22589218FC6FD9B60D8EE3749F6EB71B
          CECFCF2112891CB15C2EA74D4EBEE1A5D22FF0F938C8B204966583CB2581AEB7
          05C8028FC7855AC4EF1691F87C3EB8BCBC8468347AC4B2D98C363535CD1F1EEA
          02A4D00BA8465124787C6C1348555D4F561C304D0B7A7A7AA0582C422C16CBB3
          BDBD3D6D767696D76A7568B574211104408166532722B75B2115889765992C04
          027E61A108F1783CCF76773F6991485458B8A7DB15452150ABF528CE1D006EBC
          BDDDB6E8DCD717848B0B244820C1AEC8608ADFDE96C0EBF588AD9277CEDD9487
          696270F65380202C9994015A48269379B6BDBDA38930F8FD7D190CC3A42610D8
          A9D0A1DA0CA3DD6D089F7EBF1F4E4F4F617E7E3ECF7676B6B59999B7FCEEAE44
          4171AE9205D334A98DCEB688F4B9CA40E0059C9D9D7508B6B6B6B4582C212CFC
          A417910437068779A02A5482A4CF350683019A83546A21CF363737B54422C92B
          952A258DC9E3EDB8B05A5484A9A31224C51CBC5E2F140A05585C5CCCB3743AAD
          CDCDCD891A6B044299380F27275FE1EAEA3B8C8C846060A0573480C172A8547E
          C3F07008AEAFBFC1C28250B0B1B1A1092FBC5AAD7687C5300CC8660F607C7C94
          FC1E1F17681275DDA0010B855E0A1B1C969696C8422B954A799ACD665701565A
          AFD7C52D3FA0BFBF5728B9262224AE566B3031F15A4C69031289F867B6BABA5A
          595E5E0EA2440CA94362D3D4A16F3CDFDC946070B01F1A8D06553A36360A994C
          065656560E9808E4DDD0D0D07B817339F8F6D3278C4A9E2DC972A7019C894E43
          B6522E979BC2F6C73FEBE49AAF03DBA5510000000049454E44AE426082}
        Name = 'PngImage52'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003324944415478DA75936D4C5B6514C77F4F5F28B750020B
          4E0A2ACC2CC44433A33866B6C4A8318395BE30CA4B179299F9C1448989892C04
          8D5F8CF8D118E3CB977D5017EBBAB217C10D58747585CC09139A412DB0C95C36
          8D46DE3B6E2B6DEFF5A914A74B3CC9B9CFCB3DFFFF3DE79EFF11DDDDDD63F5F5
          F535802E8DBB4D08F19FB3C160C062B188502894E8E9E979550C0C0C24258185
          FF313DE7921E4DD3E4A2613699999A9CA2C1D9302CCE9E39A3EE733894B40CC8
          ACA9E85A1A4DDF04664159977BF9D08411DD64C26635138B4DE376B986457F7F
          BFEA743A95F8E5F3ACCF7E87412962B3127DE3C3B914404B2E93A9AA61CB6E07
          D1C8381E8F272CFA24816B6F83321F7C83E2DDBB3095D5422A9E2D5E424CE899
          758451EE8D36D27F8C72EBC208A54D6F3373F5473C2E57587CD9D7A7BA9E7328
          ABE7DE81DA8709FDB042F9D6024A4B8B9899BDC5A33B2A598D27B87E6399C7AA
          0D6426A6B13DFD3A3373311ADDEEB03875FAB4EAA9772B6B5FBFC5C7DF5FE2E7
          459DBA67ABB938728DD0B753BCF2F23E26A337088FFCC4E1979E604FE983589F
          7A93D8D549F6373686C5C9532725C17E253EF41A47C60689FE56C69E9D65AC2E
          AEF0D5B96B3C5EB395AA07B6103C31C333BB9679A1D64DC9DE0F894E8F6F10F4
          9EE8553D0EAFB2107C9EFC87FC0C4D145259B10D7BD53D5C1CFA1DEB7002BB43
          61A97C8EC2501C7DF5008FBC7794E895319A9B9AC222D81B543DCE66E5D74F0F
          52517D14D37DF2DF258C9097879E3070F97082959B1ADBEA60F673795D77809D
          9F7CC695D1515A9ABD6171FC7840F5B85B959B1FF8B8BF3C405E89EC5A2AA7C2
          7CC86420F22ECC7D033BDA20FDA4977B0FFA894D8DD2DAD21216C78E7DA1B6B4
          F994EBBD47484D7C84D12255230CB9C6CBEEE5EBA41370FB171D6B4586C4F643
          547A3A981CBF84CFE70B0BBFDFAFB6B6B52A0BCBB7492EA868E9F4DF0ACCCE85
          9E932F92CF60D448AD0BCC857914175B894C44686F6F0F8B40209090A9E4ABC9
          24C26CCE81EE80FF21C9ADE93F9314D96C442211BC5EEF88E8EAEA5AECE8E828
          49A552B2DECC46604ECB9B596407E8CE196C9260707090CECECEF3A2A0A0E090
          DD6E7F51BE37EB9B91FF1AE5BB473C7B27DD343F3FBFB6B4B4F4FE5F87EA8FA3
          5579EB400000000049454E44AE426082}
        Name = 'PngImage53'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002FD4944415478DAA5535B48145118FE666776DC5D7715B7
          5A7537CBE861DD55232A222DDBA2B73288B2F245B088A410216F0595AC211454
          5A965119DD2CADD0B4871E8A0A926E6E2D65596069650F5A969BF71D67CECC74
          66972E14F5D2C0CFCC0FFF77F9BF3387515515FFF3309999A7303C2222CA1289
          60508024CAE0F4464892024556312EC85696E536B99C330ABBBAEE071F3EAA58
          024CF400ECBF09464705B34EA7DFE1986ADBB822D31D3F7FDE4C5CBFD9830AEF
          8A9323C32FF3FE4A2008920E2A5F96303D6E8B6789DBE6599A00BB8D87FF0581
          219AC3EE6DE5813BB7BD6E0AFD04E8C204834313309B8C265122BB1CF6B8CD8B
          3CC993162EA2C0783DA22D40FBB3203E8FB14872F1B8DAF00AA5452BF74BD2DB
          D2EF0E6CA2840287DD96979E913C392D7D3AE26359F03C608A00020102FF5301
          893323618E64F035006CC82DEA7DF2B8D245F1C34C4ECEA5771E8F3331C3E3C6
          B4041EBC9E1AD3FD4CB9EDDE0878931EF10E03400FCC12051CACF2A9E565AB76
          2A4ADF5E2637F7EC4866D652339144700A83C93106D8E24CB0C6183134A4A0AF
          5742726A142565428416BA52C74B82ECECADDDAF3B6BE7312929EB6AF71DAAD9
          E498118DB141029906490409C17125049835DB0AAB9587425B8672680E79BA5A
          D99E36B5C2BBA690E1B8D8A4FCFC6A5F41C93A8B4A00031D3052B71C3D251DAB
          FD6461651DED0D8670D7DB0BD49CF0A3EAC0861B0CCB5AE072ADBA72FC44CD5A
          A7D30222027A1AA09E12715C380F2D50ED1D18009A9ABA517BAA4E7EFEBCE185
          28767B1993690AB5679E5B527CF45EE9F6E50622875534B0A6C852E5010DD8D8
          89BA0B1789CFA701BB0ED391CBB404C6146987280A484DCEBA555757BDCC9914
          11DA55037EF9ACE25ACB1B9C3E738EB4F9EA9FCAF2FB2314D4408BFCB80B0663
          2C7540A8CD699EF2B263B70A8B1770FDFD404B7307CE9DBF20F97C57DA097957
          4567EBC3106A0DD426C2979099629B43BF55282A4F5D2C7EB07AF5FAB4969646
          E96E6BBD5F963F54D299E65F15FF20301AADA1A45555A6C5B86525621B913EB6
          FE6EF56F04DF00A46B390F9CA9566E0000000049454E44AE426082}
        Name = 'PngImage54'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003994944415478DA4D536B4C5B65187ECE69CFA5174A4B3B
          68C39C8502BAA22E0EB4A5B24DF6C7CCB811A3669138950D138D73FB01E814C7
          8251C4B9E12DF1B21089C3BB51371293658441D805069999102C9DA41B064628
          2D2D2D9C43AFC7B7718BBEC9F725E7BCDFF7BCEFFB3CCFC70047C0400D052CC0
          B27A8325B7C9B9D9F674C583D6F5366B0EBF22A732135373CB97872E8E047DFD
          1DACC672891356118F0C221B4C16005065976BD3C31BBF3DF06A65716D4D3ECC
          A2807F238598A260F4AF143E39311C3FD3F35D572A3ABE3FBD367A1BA09536CE
          55F564C59923EF398DF7152691595341E40C901232626B51F0849FA3E7713361
          44E7493F7E7EA7E31B69E1D7676E03E49579CAAE1C386EB56F293642800D269D
          19B91A01FEC56B988FCCD221162CA382964FE3465CC6891E4919EC3CDC9292A7
          DE654C799FB639EBF9D6ED3522F6789E82C0F2D0F0804495BD335789163558B5
          88645242262DE18F6B63E89D8A20326C0CF9CEB6DECB6CAC3AE92B78DC5066BE
          730BDC457928B710972B33F873E21CF547F4D2E574268360248CDFBD5E0C0CF7
          81154554DEDF82B1EE370E3155BB7F925637F8347ACB66D84BB6A1C0A8457C69
          1A03BD87B12687A8751EB2246329BA8C38A3852088D0720A4A4B7662FAF4A9DF
          18CF735F2627E58FD4D1E0328A9CBB5051DD8C5CC37A8483D3081107A3178E42
          8ECDD1182AE80C3694DFB38708E5902F5AD177FCD808E3AAFB3C7EDDD4CD4716
          035094345C0F7D0C7B712D552661D5C0D0B9977073B68FC6E1E071B7C1714735
          74EC2CACA20347F7D65E622A777C1188B94FADFB7BDE0BA7BD0E9B9C2D4866B4
          48A5019E03C6BDED98F01D43B9A3014F6CEBC098B71BC1D50BA8D4BD80AEC67D
          A719BB637F6FD1CB869D1A4B0ADBEF7A0B1149809C20FB28D401997369651237
          167E84A7741FCC3A3D660267312F5F41B8BF28D3DFD5F40AA9BBC1BDF5F94383
          8F35DE2D94883508AC0072920032804263F004A223536A691C5609C3E53061EC
          6A0CF5BB76F863818B0FD0911CE80DD51F1E7CFFCD832F3678B018026212104F
          0184017516849C98AB054AD701FEB90C76D7352726873A1B28DD4369121E85D0
          E538BE7EFDEDE6BAFA67DD4C40E387926621922F359C0A855C3E3D3660E07210
          8DCDED89C9F31FB4D167FB2D2B9BC92F65A4009544ECB58AAD8F36D91EB19A79
          87C418F238304902883A71FD7C38F3CB0F9FCDC8A191ECE5AF6EBDB4FF00C00A
          54753CFBAF808169AFC664F4B01AD19C4C269478642180E41C6999FE9EF24BF8
          5FFC0395D45BFF4ABF65460000000049454E44AE426082}
        Name = 'PngImage55'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003274944415478DA85534B4C1351143DAF2D2D434B4BF1C7
          470946114974618C269860A2414380402950693018372EC085461264C786A52E
          94852B8C0B0850942069E84A92AA2BA4965FA8092852403E955FE94C994FEB9D
          62D4B0F1252F79EF9DB9E79E3BF75CD6DADA3A5A52527211409C160E2EC6988A
          A887C45DA3D1C06030B0919111A1BDBDFD011B1E1E8E128101FF590A91C46459
          CD02BD5E8FA9A929949595BD676EB79B2F2D2DE5640263B1582213A32C0A0589
          8A82BD9D1D88910852AC5630C22549426A6A2A0281002A2A2ADEB3A1A121BEBC
          BC9C53014D5212A468143B2B2B087F9D83303303DD4210423088948606641517
          636F7313668B25A1A0B2B2D2CB0607077962E2A214B8393B8BF0F23234660B4C
          DFBEC2E47201DBDBD89D9FC75C61214E7674209994710603A6A7A761B3D9FE12
          04DC6E7066330E9F3B0FAD350DF12FB3501E3D44746911E2EA2A168848DFD989
          5CBB1D241793A4A0AAAACACBDE0C0CF055361B37F5F62D8E159C8535EF0C78CA
          224578C4EFDF87E81986949E8E1DA6C55AC94DE43F6EC1A1543326FC7ED8ED76
          2F7BDDDFCFDBABABB9B98F1F214705E45E2B86B0BA0ED9EFA33D0EE9440EE4D3
          F9881FC9C037EF088E9ECA465EE115F84647515B5BEB652E978BAFA9A9E1D643
          212C77BE44DE7A08CAF779F063A390AEDF80F2E43964418456ABC3EAD827F03F
          E670D9790BFE4F63FB047D7D7D7C35298890EC85AE2E589E3E8585E310A64E48
          2613D88B5790F30BB01D5C44904893A4308AEEDCC6E7311F6E391C5ED6DBDBBB
          4F208AD8DDDAC24A63238E4F4E82A79FB641AAB69A5B11BE7011F1B525A46767
          21EBFC391CC9CE86DFE7435D5D9D97F5F4F4244AD8A6002DF5F73BA908B6B561
          8FDC868202188BAE22F3F2251CCACD812E9983B427C2480AC72726E0743ABDAC
          BBBB9BA75AB84D328856AB85484A7E2E2E42979202534606F464AE18BD498200
          999C1927379AA9DD7EEA427D7D7DA204C1E1702447C8AEAACF551B6BC828EA87
          AA2BD56085CEEA98A9565788242D2D2D4140A57F602D2D2D1B4D4D4D56D5CA2A
          88DF1F627F3CFFEC7FEFEA2C783C1E343737BF6346A3F16E6666E63DC293088C
          1D1CE58323AEBED1D68542A10895FDEC179629A4A9C9864B810000000049454E
          44AE426082}
        Name = 'PngImage56'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002B14944415478DA7593DF4B9A7114C68FAF6F6A529AB6FC
          51519019936817891A635497EB628C6E826EA2FE80D56E3606B1D8C5AE07F362
          63840C3618EBC28B2ED6EE424C24823488A098485B9032CAFC915ABE5A3BCF37
          9282F6C2E17D2FCEF99CE73CE7BCAACBCB4B52A95474F3916599AAD5EA5387C3
          E16F6B6BBBB7B1B111E09C57CDCDCD2583C1408AA250AD56A3E3E36352DD0130
          4B92F47E64646472616141DDDDDD4D7EBF9F9696967EE572B9E7269369E5E2E2
          E2BF80498BC5F26E7A7ADA36353545ADADAD22111189440051B6B6B682E57279
          8E217FB3D96C1D60E7F8383434F464666646F2783CA2A8542A89371AA8D56A4A
          A7D3B4BEBE4E9B9B9BE94422F132954A7D15008D4693181F1F774C4C4C10663C
          3D3D25EE528FF3F373826CCE23BD5E4F474747B4B6B6560B87C37302C0B26B63
          6363524F4F0FB5B4B450B1581451A9546E19DBD0D040272727B4B3B303936977
          77F7A70074757529FDFDFD323A414153539328C003F9F88682FDFD7D1409505F
          5F1FB11F2B02E0743A15AFD72BE7F37912C670516363A3484431D4ECEDED5126
          9321ABD54ABDBDBDC4DBA0D5D5D51F02303030A0B081324C2B140A22303B40BC
          3AD119DFAC943A3A3A08AB0538180C5E017C3E5F757878588D6414A323603073
          7B7B9BF82E44517B7B7B5D01C65D5C5CBCF2C0ED769747474775A042260ACFCE
          CEC41B33C35874B6DBED7515182910082C0B00CFF39A3730CF3E6861E0F51800
          F0AEC96C36536767A750A1D3E984AA5028F4E7E0E0605600B45A2D0EE5A1CD66
          FB303838F880935558210C0508D2D1152647A3D14A2C165BE6115EF0927E0B00
          8E03F2B9A3CCE7FBC6E5723DE330E0FA601E5425934914270F0F0FDF72E1E7EB
          FBA803B032988779D9C0FBDCF513AB7964341AA5783C5E66D9DF59D53CD7A46E
          FE79B7146075006076EE2E71E759BEB8C7FCD77DE1DC6F74C7F30F9A408FB73F
          A6E1E40000000049454E44AE426082}
        Name = 'PngImage57'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000033D4944415478DA75934F4C13591CC7BF6FDA69676C675A
          44A580881A137717B31E3CA841D79B61A10BD2962E04379BBD98B864130F2484
          C48B070E1EBC78F3E689002A094B2A70A1A6ACD9E80AB46022F89FAE0862A5FF
          E8F4CFCC9BD93725262B89BFE465DEFBBDDFFBE6F79B7CBEA4BFBFFF9FA6A6A6
          13000C16D81984902FCE1CC7C16EB79370389C1F1818B8422626260A4CC08EAF
          8461E830754D715DD7CD0C78DE86C5C5A7F07A5B66482814529A9B9B454DD3CA
          051C31C0B1B27C494349A5301B1078026A50A854075575381C4E2C2D2DA1B5B5
          75868C8F8F2B5EAF572C164BE02DEC212B78B15EC0C7B40A41E0A1530D1C133F
          B257806863ADF01A64D985F9B9A7B870A12D42C6C6C614A624EA5A11993C4528
          9A854BE0F05DBD1386AA62E579112B710ABE9845BD5C0362D5F0CD690BDE2596
          E16DF99F805ACAE3D6834DE40A3A7E39E761EDEB9899FA84F8CB472894DEB2BF
          6981687723FE6A0387EB4FE1FB933A7EFFE362848C8E8E2AEDEDEDE29BB5342E
          DF7E86A3DF1E84AFD183C7530B58BE9F86959F03EF14505B731C1F36E6F1EFFB
          3554794EE1873306AE5EED8990BBF7EE297E9F4F5C5CC9E0E76B7F62757D03DE
          A00F9E2A17DE865F20F7F707EC962BE1ACB281D85370B9F2F8A9E508EC4212BE
          F66084DCB973570904FCE2CBF719745F9FC1F2EB5534FE781E871A0E623391C4
          F4D0248ED61F40C51E370C2589DEB67D387BE2001E3E9C43472010212323234A
          474740DCCA667023B481552AA1A1C1834F19805203F96C1AFB6B25E45239686B
          71FCDA28C1B3AF024F66A3E8ECEC8C90E1E161C5EF0F88452583B5B486F06B02
          9B2C83C20AAB8540763074348AD4EA3A8E5516B07F8F0DC22E09B1586C5B6068
          68888D101053A9741998E45609B37115B1771CB60A0475153AEAA4020EEFD651
          5D299639713A252C2CC4D0D5D515218383836C840E31994C9AE4C3C219208CBA
          8CA222AB68B0312C6587058479205FA23018AD32EB301A8DA2BBBBBB3C423E18
          0C0AB95C6E9B77061B61FC5B4C9EC1D0650955635F86B1893AA5146EB7BB2CE0
          F7FBFF227D7D7D9B3D3D3D152AA3CEBC2C3FD3B70D641AC714FDECD2CF7B4992
          30393989DEDEDE69E270387EABAEAEBEC4EE79C3B4DE0E2BEFB4B89963CB9A48
          24726CEC9BFF01F32F9BD602BB2F710000000049454E44AE426082}
        Name = 'PngImage58'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000035F4944415478DA5D535B685C55145D67EE63EE2BE94C42
          324969824D6B62A4A92F44F18168A1746C33C90C3353085410B4A0F1C38F9410
          11FC0A05BF7CFC48F5431092266D634D09618A18B8ADCF8614CC687CB4D43489
          2DC9CCDCC9CC7DCCDCF1DEEBB91968C5CDD9E76CCED9679DBD0E7B91B1B1B16B
          D1E8912718069EEB7AA81BC17DBB1F7B9E7F1E802004C9C2C282353E3EFE36C9
          64E62B870E1D096A059ABA93EBEEB807A7BE7ABED7634511C0F30C5896C3F272
          16C78E1DBD422E5F9E337BBB5F16B7F20E1A1BFCCB0E6CDBC6C6DF3AF67404C1
          71FE9E07BD5C061F04DADAC29024192B2B2B88C56257C8FCFCACD9DBD32F168B
          0E42E1FA6B76B586DBAB65ECED92C072B46CE2A154DA4620E060F7EE26C8B282
          6C368B81810195CCCD7D651E7838261A868B50C8DDE159ADDA14A084BDFB6470
          8C071270512C95E13836AD20740F6070705025972E5D340F1E18A80384FF03F0
          57090FEE97C10679FAB28BED620156C5446B2444A936E0E7E565C4E37195CCCE
          CE5080B8A8151CECF22BA09FE5D46CACAF9510E9E451B12DD82E075225689580
          E6F6201881DFA9209148A8E4CB8B17CC47FB12625173D0B0CB05EBFFB7C3E1EB
          3BC0624EC76B91F7D1D7B08AD31BCD5867159CEA39819EB6FDF86EE97BA45329
          95CCCC9C331F7F2429EA8683E61081E995B1B07917DFDE6CC2B53F5BF0CABE49
          1CEC7D176F6DAE62A3EAE099CA4B38F3ECE7D0D636D11FEF57C9F90BD3E6637D
          29D1323D7436117CB1750E63C22988B53098DB7D100A12021DE7614979486540
          DF2278AFEB333C8D27114D1C56C9F4F459F3C5178E8BB92D0BAD828833773EC1
          3BDD6F426AF120E6291F0D600C40D601BE0A989B328623A77138F83CA2A9A84A
          2627CF9AE97452D48A1A24CAF1D7BBBFE1E4DAEBF8BD7B118AC082351D707A80
          7A10565E007BA3039F3EF721C21509471394C2C4C484994AA5444DD3682B1308
          24881FD717F1C1AD8FF10B9F4585B5E0550260B715EC313AF1C60327907C2A86
          1FAEFF84A1A121954C4D4D59E9745A300CA32E163A244684AEEB58C9FF81D5D2
          06FEA93988482D78A8B90B8D72235889C3D2F5252493C9AB647474B4303C3C1C
          AED56AB4D39CBAEAA82A19C28067691379015F8654210E2A4E1536ED11455190
          C964303232F20D9165F9D5F6F6F693F41EE7F9D2FB9F79F0EEC5012A6D9F269D
          D85C2E6750DA1FFD0BE12283A6674F506C0000000049454E44AE426082}
        Name = 'PngImage59'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000028C4944415478DAA5D26B4814410007F0FFECED7A8F2EF1
          0AEC3C757D16A5496A6146203E533C53B00741885606BD25228234123A12FAA2
          49216246095A54A89C0F5013C9B4B212BC4A5332943357F334F2436AA777D3BA
          6D5F34A96860608699F9CDCC7F86504AF13F8520AE360D0C5BBB6CE48BE538BA
          731F8AADAF6275AC0C24D453DA6C5C3EB0AB01186930A1BFA444EC7E5E099180
          E765CB81481F19F9C3C924A0BEE827B098062180538E6577D06F765C723209B8
          6D32E2FD3870F7C5DF8737517DAC0003A53724A0E0BC11856D2277F51FD2CF9C
          052A34A91270F6483CAA7A389407B761758B0953E14781987460C1093BABC177
          31BEB905F1C24EC05C2A20E19001E76E49403E71897D44737D2DB04EBB60A76A
          146959E3682CD382F805C07D760CFD3179B0BBE9C527E06017A1E63B02A2330C
          B85229014584C49BE965BE13270F2BF1A6B80E1B52D662C83C84CD275CF1AACE
          078F43AE82E8BC40392DE6C5CC3BAB04441C30E0668D0C78455CA3B11A01FBFD
          5E232A7B23943C81637A189FEE5BD1F43408A32149B06DDF0B46E526DE8841F7
          0301A1FB0CA8689481EB7B12697A4E32E6ADBDF08ED383D56B81190B6C2D3D60
          D6D8312EBE78DEFA1628B4EB40152AF4560B084E37A0BA5506B686E7D030B50D
          46CF01245DDA018E57827E1BC487A23E3CE9F2C0B02E14CF42B3C1E97CC0AA5D
          31681610986A4073870C60CBC5D389DC6871B9C91D13AD5D700F73C194C50A3E
          D915A67C1E855C369CAB7840E30128D4408F0DD8C400ED59DD186BAD23DB00FF
          8C48DF2A56A7D57F6C7B472ED4A478971D6C12D4812A27AF629467DAA73BC600
          7115E6E4CFFAAB2C7EE597C48F80F56748589F837A46B3883A95199855796FA8
          A172C6D11940A0784B31320F4C8A936796008BE0E40F589B05AC64990A2E0000
          000049454E44AE426082}
        Name = 'PngImage60'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002884944415478DAAD935D48145114C7FFF78E6EB282A616
          C9EA1A26ADF6051A41047D221A09ADEB0706B92F5A504481F42165907DD0426E
          92515BF4E09B6861B19984E28315412F259684E52A6B692A4460C9AEEEEEDC99
          DB9D99D58D9E841AE670CEB977EE8F73CEFD0FE19CE35F1EF25F00DB8F4E4C6D
          DE926C5908A99099665CF74C89E54CF322D77C4456E17FF9D113F2979ED401B5
          2D73BC606F1266E7800803C28B26FF112FE60A040418BCD7F7ECD787E2521D50
          7E6986397633898A6E98CA215E7015BAFFDBE22930FC3D1E0FDCEFBDE1CF07CA
          7580E3E237D67A2E454A4D8C436C241C8490588C681C0774BF0BC35EF5CACBC7
          0F1A00FB8549D6D698212525D0650DAE7B30047B69AF974F380C4049FD57D67E
          D92AAD342F0FF074600165F61E2F9F2A3700C567BEB047D7AC528A595AFAA8DF
          D78F5BDDB7016A020BCCA3B9B6191B33F2F4BD9E21A064FF132F9FA930008575
          7ED6797DAD98810108CB616C7515E07C4D1D0825504340538B070D871A4029C5
          9B1113EED4473AF98FCA2A1DB0E7D418F3DEC89652A315442232B679F25153E6
          C0E9561760128B3EC0969C0B2AAEC13C9B81C0B40D237D1EA203769E18655DEE
          75525AB402590825FFE6060C4FF8E03EE282CD9A034515974FB4BBA05099828A
          B3D5E00FB901D871DCA7BCB8BB9E26C491A519E435662310FC895AE761E46465
          0A35327D9D8A9682C130EE377561D833640036393FF1EA4A0B4CE2BC2AD42246
          80F681428412C6505CB40B56EB2AA1BE1860615E4187EB2DFC1DA30640B23C76
          AA2A4D17E237E426F4BAFAD8157728308EA28A5CA4679AA1306E084A74190E12
          F45E9DC6F4F3490340D2DA00453B1CD5AF980175D6F713AAEEB36499A1CE8A9F
          40D6CAD35A2458B126113C6481DFF59AFC06B3A35FF0B7711612000000004945
          4E44AE426082}
        Name = 'PngImage61'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001C34944415478DACD93CF6B134114C7BF33C9C6A4176113
          7B288A1825E65062D0DBDEDA6B6FAD97D2A08941AB285285A850A8085E8A8526
          A52D5836C93944AA97FC05A69E3C481304455AA20549DA5E0A6E60B333E3EC0F
          1AB0A7D2831DF8F286C7CE67DE7BF35D2284C04916F9FF00DCC6583472B978E5
          5CEC2C639CC1E6712A4500419D4FC0A89B136ECE4FFDBEED9D96F1BDB5FD905C
          7D1EFF597954B970ED7CE258377FDBD9C2E4ABE93D7247CF5AC5ACEEABFDAA61
          BFBB078528105CC06ECD89F0A21438603213EA191513C337F174F92523F7CB0F
          CC423AAF68EF3434DA0D846808DCE27D31A99E1B61C96E0C86B81A473DF7116F
          CA6F7BE45E69DA5CCA149491F511343B4D0469D039282C7108601673F66040D7
          E822A6C6F0E9C906E6F5D53E60747D148D4EE328807B95C82A04132E202C0133
          1EC06E219F5E54B4AA86CDF62606E8C0E18DFFCA06E00F1CC046AE8E05BB856C
          E92ED3336BB4BA55C5AEB18B0009800B59AE1C1AF786096F88F6D6EC998804C3
          48DD48E1D9EA6B4612B389F6FBC71F06A383978EF58CBFF73B189FCB1C10720B
          53C98BD7579243C980259DC499FB5C8E811C3379C612AE91A8CCF97D01DA6CFD
          B03E7FFDF2E214FC0B2705FC056DC21E4395C57B090000000049454E44AE4260
          82}
        Name = 'PngImage62'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003724944415478DA65927D4C5B5518877FF7A3F4DE76BB5D
          37AA4B844D604443E236D940EB1FB4A8B47FA0C45536B2850934A48053307E62
          E68C1F44C78844C7649129EB960DE2B22D64C491A9599C237371DA21081664E2
          8A60EFDAB289ABD0DE8F7A6E8989D593BCC9C939799FF779CF7B28A7D3096DD1
          0C031D43E5E6AECBAAC85C939D2FCB123BEE1F1B191A1A39757D7AC6178DDE86
          2CCBF8EFA234802C2B301AB9FC87EDF603ABB3ADD6B82A603116C3E29FB3989E
          F87AACBFBFEFA56B5381B33445FD1F60B3DBC173FA4D6E77ED007B57A9855BC6
          23C302A809201052F1F3F814E6FD27E3870EB65788A1481FCBB2A900BBAD28A7
          ECF1D2EE7B4B5E2C5A6069AC4D27ED906445053461310AF87D93F07FD632E13D
          7AE421866122D4BF4CA8068FBBD955D9F4CE2FFC7A6AC53280A301C2491AC408
          61410122B781F0452F0EB53D5F23866E7A530C3E686F3B95EFA8768DC6496992
          C46800522041F6929A3C82898083BE411C6EA9ED1A1E1DAF4B0174EC7FBFBFC0
          B1E3B1106B41340644E3A4BA7641228D01043DB04A00C62E5FC681D7DCDE91D1
          9F6A52004DCF3CDDEAAADEF5329F99078528FF2591FE134B001D011875C4280D
          F8E2642FDEDBD3F8827823DC9E3A464789B5EC892D876D5B1BEE01D15794257D
          8D40F26124FAE39333F0EE6D9E1DE83966054D07B44754FF0114DB8AB1728569
          4795A7FE784EE1A3E03846E3407B689A6C02BFDDC0C4D025F8FA4E5C2DEAE975
          73C0D03CB9D7229E04388B2111F70CF3EA3AE723A5EF666DD8643698CC90C8AF
          13A77FC5E0F98188A42C46AB6B3C6B32FC9FC8938D1D8DA2281D2483414C03B0
          D53AD2B3023ECC43504C39EB566697AF5D7EF7464992187F70EAC7B980D8FDDC
          F5F9826D5D55A7336DB3F8E3879BEAC5CAC1866064A14B49765A4566AFE736B8
          3697BF65E6D3D5C422A2ACC4EA2895A562098A3E77E9CB334F9DBE72D4B11CFB
          37D61A9F35ECDC8C7080973FAFBC503F1759E8A6500E3C709F75F7AB5B9B5B7A
          877BC01938D0693414464661560142DF28BE7D7B5F29FC7034AE98D3D159E211
          1A8C3BEFC7EFD7F4CAB76F5C6D4D026CF9F6D75D45AE37F79CDF0D4110A0E375
          88B37138F31CC80B3C38DC76ACA3A0E9CA4CDC14BCC50816743EB9CBEC4914E6
          E24297D843613B7087E5CEB2D68A7D1F1BF4C684A2A82AB53407185823FFD189
          E39F9EFDFEABBAF5B724D47F17C41CA05F65A1DEA6684A0D8B6AE7DFB35A5FBF
          6C2F8C410000000049454E44AE426082}
        Name = 'PngImage63'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002864944415478DA8D925D48536118C7FF9EB3B33377CEDC
          744E9B96BA0C35E64569B2561062771695177D80371105A51765A45203A75E15
          542B4B2CA20F410C2A6729063583A0082949C4BEBD09875A8462736E73E79CF7
          F44EBDA84CED853FCFFBC0F3FF3D2FCFFBC4619F0173476580880690382A1A15
          2A79219717EEB31A2B232A0FC1914C12E02AA021DEB8FF02101AA7B46B8544A5
          6353E5D88641104CDDB1CC62542C5D1910D3349F239AC8A3D22A7F5E564110CF
          26050CF471206D699F5606CC68B344A3FA64C7717F8E353F083E64C596B44AB4
          8E3D85D73586E501212E5730919E9D15DFB2D3ED3314968C5D1975E07819EECB
          B7D0DBCEB42E0D086BED3A13E92E39F4DD966D0F838B985196D508C20551EB69
          41DF4DE106F8F863FF0684B40EDE2CDF2BD83F9161CF9F8551B6A06C4D3DFD84
          006A2FB6A0BF5D68862456414FA4C5800857C41AD4EEECDD93A939EB24E4EA53
          B0D75687A03A851A6A7EEBD55F4254ACA5F55168F1D70C66380712D41E73F14F
          73A64D46A1C982C3796E04C80F9CBAD04C06BB0CE7A00867E686ABB0580024C4
          DC74E2CC5608E8D414052D49A90A9C660B6A0A1B1152C771D27305438FC57A28
          620314DA28CAFD0638A0A309B31A9CE283239AA731AA702459D1E07443863F66
          261F7AF52EA886B390A929A63F011AC4296CF9F6C2F56D6F523E629568C6F96D
          75F44D23A86E6A523EBFE0AB6967CFDCB7C68C8B00E5106CC6E42EDF514FC9DD
          D06BF04946A4EB14B8AE7A225FFBE3AB40F4D720C53A734B029C9B1337BEEA75
          B5212AF038ED73E3C1F3FB818961DD0928F1B7E70D9A650007D94EDE9FB1A7D8
          998F69323E32F0E5BD371C923AC09A5E22C2CCAFF3B28023CC3B48CC30C2F275
          04310416A360795A28D29D605704FC023BBA31C5F2A858A90000000049454E44
          AE426082}
        Name = 'PngImage64'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002554944415478DAA5D24D4894411807F0FFCCBCFBEEFBB9
          BA7EACAB2DEA524224E6A2255A445DA2340823E81074E85C79883EA888F09297
          820ED1EA26095A5DA2A02E1EEAD02150102B23E9A0AEF4B1C916ED47B9BCBBEB
          BEEF3458119AA1D4C0339767E63733CF3384738EFF19E417206F8D8CD4F8CDD6
          2FF1F968325938099FF721DC26C065C0AD018607A02AC07440D7C0FB8B9602E6
          968875B567AF52A2129CB93C8AD9B7D60D9479BBC1944F90D700E8CD11EB624F
          87D2B93B808F5319F40E4EE2FE93B9D78E5BBD00557FB42AC09A0762EDFB1BAB
          3A0E86A0B8288206C7F8D81CAE0C450BF114C228F29C85A4597F0548EB501BF2
          ECDAFA86EA966D7B1AE12931D11400BCDC42DFBD181E8F655E396EED1854E319
          0C01DC5C0E6CBF2326C544969ED3FD252782A13A43F357A22140B06F93839793
          295C7FF02D959897FA506A748B1B582B00EE1FA19A4DA27861DD57D622F96A60
          E82E1CDD01D4152FA077388391193ACA073C6D4B8103CF01073F836C3035D22F
          7B8A767ED5D66181C9A2AB407BBD83F7B13C9E4E62C28E28A195001D39E77885
          5F3B1DAAF7954E5BA5989B270894731472797C7857C8E6B3F41674769E87E5F4
          52A0737C237110AEAD2EDE55190C602AE14656A47CA68D74228F44CA9E7138EB
          122B87E1A25C00CB8AD8F962D65BE5AB3544E1E2690A430114496CFC9C4336CF
          8620D12E71C3D4E213459BFF00E8A137965C51AD104D87E9B261672D24537694
          1349FC463A2896FEAED14A00391CB5D4F24A45531932694B9C8ABB60EC92C84C
          8352AC0AD023B10997AA6EB63989DB0E3D0589DD5E4C3862235B03F0AFE33BD3
          A20AF0F35827A10000000049454E44AE426082}
        Name = 'PngImage65'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002664944415478DAA5D2DD4B14511806F0676676BE7546DD
          5114D90D33570B8CB2B4502393C00C0CBAB2AB208CD0D59B882E820AF1422248
          2F2213A2AEA43FA0885222592C14D2840CD60233365B4C575D77D7D9D90FE774
          BCE84245943A70E08573F8F1F2BC2F4308C1FF1CE62FC01CED07AC14203A009E
          034C5A33F441E401DB0656E2E7F55CB5D728D03C81C5E44472F4F2F13D005470
          B03908C7EFBA8AB23BEEDFA9E3D65809D76FFBACC8FB667977C0260DECBA7DEF
          42A3E788B7B51AEE831A5E0C2FA0B3F383B5E6BBB80320D19659464034D16D18
          4AC70D6FB578F24C19BEAFB1F4D9C6E0CB69BC7A3DF33BED6BCADF0E24D20041
          1552E9C7F575FB2BBCDE1AC41427C603402414C1D8DB297CF32F4E40166F9277
          8DC35B01192BE62D3D47696B6F3D6154D697E3CD570726676D9873B3F8F1693A
          1E5B8AF74157BB682E1132D4B0650AE58F46AA2A5CB56DD76A10B09D78EA03C2
          E138C8CC4744174293E01C5E9AC918047E235890A1739B01EE70DFF8A9D3078E
          15D55663702603F3211A45C2843E3F8174343A1A59575A2065F8A1A834681564
          C0BDA5838A7E05D164379F9B77D55553A90A0545980BB130441B65FC2F7CFE12
          0C0743A4079ADE0B498D6D0736425C270CD5CF3282FC30A7B8B834ABB40C4B09
          051CDDA3922C138B81206683C9115B50DBC9F37D53DB8134AD33343ACACC4C30
          428FA86B2D86C7C35882133193419E4E608696B1B46CFE24032EF7CE804C2F2B
          D285922FD16EBAB20BF34B78673E56130ED85612A9D8AA653FCB957707048506
          A6B9C1F29D92AE5D51F30CC4932CCCA8659127997B04366A07FDCB4ACD9CA23E
          E064A93065B37EBB4F3AB409F8D7F307512226F08CD8ACF60000000049454E44
          AE426082}
        Name = 'PngImage66'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003994944415478DA45937F4CD4651CC7DFCFF7C7FD3EEE57
          7077841E376207334B254193A160BA9C705463FDA083B5A21AB5B6A8592BB8B6
          3666659B91AD1A924D96FCE16C0D6C58312D9A8291A58B3C644A8AFC88080E38
          EEE7F7C77DBF3DA0CD677B7E6DCFF3FA7C9ECFFBFD90B60A40550199376EF16C
          7BEC0BDFD61D3E22CEA9DF7EDD73A5B377A8D12C9907BB9D0638D8307E9E65F1
          654CC58090C2DFB8D5487BA50E724AF0AEF3370C6D7BB12D93D31020310A2C86
          D0DAFA69F8F857C3EB4F65E9671C248CFE790A4872382F0977003D7E1EBA4CFB
          C1D296CE26434E11905C02A2370076019323BFE2BD678E0CECDB58925E5BE8CA
          FB652074F3D0D98BEFF643EDFBF77F405739905B54D0F760D3FE5DE02CF42D12
          202E409217317B7E183C36C2F148009C56853C7D1DC39F1F4E3DDBD65EFF8724
          9F5805BCBF09303BADAD75EFBCDE6CCECE852A08502061717A1CD2A409EE27DE
          00341CD44818445806A424DA5E7E756A5FCF99FB396081ACAF25881AD47B9B37
          94FD1E282AD308061D928908FE191A82273F00DBD62AA8528A669582928C8135
          1A30D8D5A9F8DF3A50A5E7B953042FC1B47DA7FF6CC0B36B43EEC20DE87F3C8D
          585AC05F9B3351E3AC4396A70C693909286948542D1D2BA3B7A35D7EEAC0D11A
          8D86E92179C1FC8E8EE73E6ED8E429C584B804DDDB1F42CC3061295803D7B929
          AC6179B05936280AC02423106F4EA0B6E5936BDD7F861E00D12E93278F3D3EFF
          DADE7AC75DFC1A58342E2831011A2D83B9188F9F060514A7AFC0CDCF414EC4A1
          48122E8905387C6126FCFDF18F764891B1CBA4B1F7E9F4C39B8B19BD62879133
          C16034639942AE5EF4A030C707974DC1E4D834C6A7E7607767C3B6F66E58A957
          DE6C3974EDBBA34DC5A4FA5885B467A78F631256FA3E13B41AE0FA651B32A45A
          3C546281DD482DC1D21A52C9F815D9681D2274F34DDF04820DBB83C455ED1DA9
          6EF616E6646780578DE0381157CF94639DBB1185F7508919404F6FF21422D13A
          24A94DE214121A4B61FFF38FF613582C45369FAECB5B6ECDB766E919868D2339
          5987DD7B83703AE86575D50660A8C3E91202054814383E25E1B317FC9708EC56
          6A87283DA25602DA152F139DBD627B65EBC9525F89115A994667EE00443A8834
          9BDF4E8670FA037F2F81C3463F4E7455670A588941BBC964F5D69E2BA80ADC97
          99E7257AA31E0C85A4D32A12D13866464631DA7D703631FF43FD2DC01205A495
          DB00E9F61CA7A9395FD15ADD5B589E4A431896065164312A88CB536334EA117A
          E8C27F1B356E0776E1FEAE0000000049454E44AE426082}
        Name = 'PngImage67'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002C34944415478DAA5535B4B545114FEF6384AA61E13418B
          C4D149D399B432C79920F31229081581E33C5999103EE9430A4E1228760121E8
          3F44944A89889441A582910F4ADEA2111AC712141B50CF8C39D77376EB9C9972
          5EEAA57DCE77F6D997B5F6F7ADBD16CB3B6EFF72B24C9F1708711E96008913E4
          48AF8CC3D171588ECE47D724A6616E87738D35B50D78ABDA6DC9DFD669531808
          4A5184F7118822145DF787808424607560D8CBAE343D17D3CA6B04CF8E1F711A
          40A613389D406F043C02393AA77C187D7EC62562F9ED848755D63F15DB3AEA84
          6A6392BA91314E5036B288011483D8C6A1A183C6168268B1BFF1B073D667624F
          F7552147EBC4D4C719184F1861369BE176BB313E3E0199446BC8822B0F390D06
          FC309D2AC08AE6341A5B473DCC62ED177BEE5E120A5236B1B8E4805E9F8BA222
          03B6B6B6313BFB8924298CC801E72A821414437E163EEFE9D1789B18945A07C5
          6E7BAD70B934759FA42A05FF6C2FA645DCE8A2189434BC147BEFD40A67D2DD98
          5F5A464E6E2E0C860295C1DCDC3C2492C0C89B2445C21A080451A83F82C5BD3C
          5CEB1CF7B062DBB0F8D07E513816EFC287E919A26F84C552868D8D1F148349BA
          5A5965A348E15C86CF1784A9588FEF09265CEF9AF43043C38878AFFDBC506F39
          F4875E2824213E3EEEEFFC83013C99F2A2E5C18C87E5DB46C5BE8E0AA142B70B
          A76B0D199999D0E9B2B1BD2DC2E572A91294DC88F44A1083C8CE4CC5B43B0BB7
          EE9303BDED95F8B8B352381A5AC0E8EBF73013FDBABA1AACACAC626868046162
          A35CA34CF43939F0F9FD385B62C04E7A359A7BC981CE36263E6A3509D6F2F418
          8A3E4043C2B509143759CD71990A234C7D38C47180F930380BDCEC73785861F3
          A4F742557172568AACE6B9126D89EE31425B291E1E534C5C95A16512BEEE24E2
          DD846397A5D5F43B0F661CCEF6EE51DD51A649BFF39E478C947F596631C541A0
          796889E2DEE63A53B2EB7FDA2F989586D63F813C6B0000000049454E44AE4260
          82}
        Name = 'PngImage68'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003084944415478DAA5936B48145114C7FF77677657D7DDD9
          5D052B8802B3B47CA4A80419646B6B246491AE50A05814F449A20769655A61D8
          E3531044925F4AD2E8A19424D243FB12151422954182BD56CB5A9C595D77DEDD
          9959A2EF0D9C39E7DE9973EEB9BF730EC95CD5F421BF24235394755D510155A7
          A259DA582B89B5A225F613DF54622333E3135F4943636FB4EC70ADFB7398FEA4
          00127592FED554C484C889FDB80C385280C9DEBE28A96AB8C5FB4B839CC08B60
          581B741A5DA3C7E8D4A0A6B5D62D6DAC8D17A1AF7926191F1F0F0B6463F54DBE
          F1C8562EB0DA056D5E844E5364DC0E10C6069665A9B34603AAA64D0881194357
          F1F0ED020E340D09647D75377FAABD96DBE2F8826F775AB0C04C233D7801AEEC
          B5980A87E1F6B8919AEAC7D4D43424493653F179DD189E74A1FEE02381ACABEE
          E15BDB43DC66FE15A4071B20FA55E885031073D6A3EBDA351414E4A3A2A21C5D
          5D37F0F3E70CE5A420505A88E8A272EC3E382890A2EADBFCE9B62AAE32751A91
          AB6711870C5F5D3392566441E06761B73BA838118FCF43A56C545A024FB20D03
          EF18D4373F134861CD5DBEF55839B7BDD80B5D363101760ACA84464C2759A6A9
          535BA334155ADB14BB827B6F75349C7C2E90BCD07DFECCD14DDC8E122F94054A
          5FA5F0526056C18026D3DA49462D1301540AD4C5C8B83BAA635FEB0B81AC0EF5
          F3E78E5770558B23F8D27B19312D82259587E0CDCA862C4AF444CB49331AC8CC
          463133E81FB361FFD9D70259197AC09F6FA9E4B6496F30371440DC1705BB6610
          625609BA3A3B9197978BB2B28DE8EEEEC1CCCC6F136269710E66D302D8D3F652
          2019A101FEE28920B7D33D01FE4A1D62AC08E7AEEB48CA2FC2AFEF61B08C1DCE
          242722915948A26C6690E661F174D28F031DA302595E3BC85F6A2CE66A4A7D80
          20D27EA5B97A19ABFD8C19502C27D5B83F1D085531AEA0A26FCC81868EF702C9
          DE3B120D94E5BA977A74C8ACD3221D37EEAE9943638133064B378368142E4B34
          7C9A4DC69391F139E20FF64CB8D2172F9B8B29BA96E87B4D27A636264F33E8AB
          D60CFC15BA0FD64610FB112646B9FEE7F903C96AAEDCB6E056A1000000004945
          4E44AE426082}
        Name = 'PngImage69'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002F24944415478DA4D93CF4F134114C7BFB35D2A22821052
          A1028A225A309AE00DFD03F4C6412F8403D18478E2E68593E1E24149146F5E08
          278289FCA8A237218610014BA180808AB6898010B06CBB6D7777F6876F760B61
          37B3DF373B6F3EFBDEDB376C606060F36673730096EE000E1C7A1E5DF989C38E
          D9744B920FA6234BCF7B7B236C792966490527A54F736B90FD27C0E072E08903
          B1D7269B31C170605B80CC0CDCBF7B1B2FFBFA54B614FDCAA757B7E4994C10E7
          6B82C8661C7003E09C9403A6494AC3343DDB820F5BDFA7F0E2411D3E7E185758
          2C32CB23F103F9CFA9EBB874E12CD269C0D0014D870B308C43CD4328A65F2B9F
          F1E45E11C6C36102CCCFF2E8EF03795D0AE1424D35D2290B067D5DA79288CD06
          29B73C5B4460DA27F0E7C7049EB697E0FD71C08A15422D01D4944900E40104D2
          E0A620E642B95D889D8D093C7F588A77A3A30A5B8CCCF085B8222F6A21D45413
          206DBACEDA2140F7EAE102452A5621F6129378F5A8146323231E6031919223EA
          159C0BD620A372E4346FA3D8741409A5A0931A6621929B9378DD7506C36F8715
          B6408058222DCF289771AEAA962230A0698E5B445DB7C9463E121A14494E2F42
          7A7B02FD8FCB0E015FF8424295E7D28D1441151511C8E5BC21F217D1E474AF16
          0292D17C50772631D87D9A002285E81C5F8E27E5FEE90CCACB03E0A268A2FAA6
          EDAA29F2E6B6FB172CD303FAB26B187ED682C1A1370A8B46E7ADABA14669757D
          833ACDF69A953A2EA3AA50520A0AA93BCBCACF4096655AB1E1505B16179D4243
          4303BABBBB55D6D6D616696969B9517FE9A22F180CC2B66D141717A3889C6CD1
          B774318941A2FBEFDE36F6F7FFE1605FC1DAFABA353434F48D959494F853A9D4
          2DBFDF7F8D7C6B5B5B5B3B3A3B3B2B24498265597406983B92C9247A7A7AB67E
          6EFC1CD3353D4E6BABE43FCF0281007677775DA7A6A6267F5757D76647474745
          369BCD1F48CAD9E773EDF6F6F678381CAE3B765E7104A8ACAC447D7D7D80344C
          EF429C73DB7520B080141414F8A6A6A612B158EC0EBDDB74F2C7FB3FA5C3E9ED
          3BAD57480000000049454E44AE426082}
        Name = 'PngImage70'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000032D4944415478DA6D935D6C14551CC57F7798DDED6E3BDB
          D229456841A069CBD20F2881606DA124D53442C203061A810790186942001313
          630926442D6AF8A80F9818E5051349E4A33C18A00A82612BA29506286C4514FB
          414B4B8BDB7677BB3BCCEEF5EE1A0811EE3CCD9D33E79E7BCEF90B9EB1969A94
          57665135C5C11C04F29EC59FFE7FF05F7EC08DFF63C5932F4B4CE6ED2CA449EA
          62E540C6F3FA78FAD414C0080F303DD463C52C4EEEBEC5CEEB416E3F45B0369F
          971B0B397238516C8AAA7AA6CD2E24C393865321429109FEFEA30BBDED08EBF4
          3BF7DE09B0B675908B8F09166733F7CBF95CDADA3F236BE19A3728CA7653EA89
          127A28E908824423CD9D46F7F01881E39FB36FC6E050FDAF54FE3ECE5F425314
          67AAF9765F8095F77DB52C2A29225346D9520073BCB0BF0BDA1F40DA24702B92
          0BEDD729EDF5533F8B63AF5E628DA8568635FAE858E1472B9FBF80E7A6E662DB
          71620938B810C236BC7D153C3AE8BA4E4F6F1F819B3738B70C7BC755CAC52E1F
          DB2D49F3C7EA24C330C8CBCB239E50A295B2A395302F136ACEC34054E01092BE
          BE3EC2E1301F96AABD091AC46715347F3FC8F696FEFFCC74B95CC49D1E1A0A44
          0A3449497F5F85B7B72B816645B02C2B85DB340B8A0DF68A83157C7A6E886D27
          EE82A6692494AFA6BAF0B53A8D26A5CA67406D2E949D8963C7935F134829795D
          11141A1C10EFCE6587527BA0A94B5326B98809074D6522192BC5ADB02C07CE2E
          87BA0BD03622B11F5AC4A2313E2A937487D5BF2AC28A0F4A687FE527A7E6F11A
          2C301D9CAD812DBF290F7A21DD41D230F29592F6FBF05A9B453038C677D576A2
          E10A8B933D10275FE4F4F14167DDD7C11CDE2AF1509605EF752AD79569E1B860
          FD4CA5200F5A7A24870221369B23544DB65B37FCC28A54917C5ECABF7941F8B7
          DDCE363AC925D3E3244317082152F755891251A5EA1F9D60A973884F0A46C757
          B5C99AEE081D8FAB5C3B8555CD15DA575F0C4FF69E0AE5A49270A9DCA57AA296
          8D6E8558ED1D6683393AF6E615B9F1E7115A9E1AA6228345BB4BD863A63B5E0A
          4C78E8B51C29C04CA785CF1DA17FDCFE6157278DEAE4CBCF9CC647ABD44B7595
          C9F27C37B3A5C2F444B87371841F55F79303249FC4FE0B0D182B60763A790F00
          00000049454E44AE426082}
        Name = 'PngImage71'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002E64944415478DAA5935B48936118C77FDF3E3737A75BAE
          4DDC42C332CA52A2938CCA20CBBC118B20A29BE848D44D27088A2E33BAE87455
          11847563073A9060278320A3B403CB6A66699142396A1EB7B9ED3BAD775A20D1
          4DF4F0BE1FDFF7BD0FBFE779FFCFF34856A79B7FB594D886AAA08E8E20FD09D0
          8C944FD3A9105EC5E2D38C493C6409B1C64CD50CCC66D9501289574622D23411
          6049681C765B8C9D95F92677499E1D554F1108C578FC1D62864486A1B3B6AA82
          A2C202AEDF7FC4E7EEAE8D6300919225A94B57D717B0E6686D19D32AAAC1ED13
          B91AF0ED332F1F34B1FB5E0F4F433A5B6B9651EC9D4CE3D3006D6F3B1BC70022
          72DD86C2D4A186D505B0723B37FAB2188C6BACF3A938B32C10EF67E8F65956DC
          8952387D16E5D3BC3CF9D0C39D678123926CB14FF5E43A83017FD89E3FBB148A
          CAE91A5168F86A65B65D40A624C16483E05D5A3AC3D4BE76E112D0AF03433125
          32B8501232EED832D775EEC2AC6F2065827706646572E05D361D51995B0B2298
          E3C310FA244012FE36376D21950C92D7B47874BD8439E7E429BF6DEF9E294229
          554899016DC3766ADA5DE82989CBA5FD54BB62A0A765862D1DF9D477EB981283
          5586AE3D4C034E9DF0DBF6EC4B0334E124CAE57F92C37CA7C1A8D0704081C6C5
          B171B80C9BDF7BB9D8197F41726849BAAA92B8DFCE8D65B9672ECDE913DD91E2
          5AAF996D1D0E7A960F108C98A97D95437DE9088B26E9F87232286FF5F0E24B78
          0746F23CE3F14C456E4F5EB0BD52B179E451E6B6B8D854A87260661C4D93A97C
          9ECBCB61330DF323F884444B9BB5901AE92F13350EFF02A453B31F5F3B67F2FE
          FAC5163E2A36E6390CE474EB994C04A356B2AD12994A94EAA661DEF4FE3828A2
          1FFBDD7DBF1A143B16C7CD9A12F7AAD3CBF398EECD158259C5A938D6145ABBC3
          EC6AEE23D013BE8216DB24FC937F02C621B2ADCEE1746C5D327552F64C8F3D3D
          17B4F74568ED1DEC5763D1B322729DF04B4C9C9D8980DFBF4A442DAB44FEC5E3
          83A77F10BB59BC76FD6D3225FED37E02ED491FFC678D6B770000000049454E44
          AE426082}
        Name = 'PngImage72'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002F94944415478DAA5D35B4814611407F0FFEC7D5312CBB6
          8BD51A28A9D9A652196581165962925DAC3428C28C4C8C6A217AD0DA88A20B86
          B95A699642A1216B1162D98DAC2048C18AB2CC1E92D2425B71DDB9ECECCECED7
          37AB650FBD795E66F838FCBECB398721846022C1280063A9A47F4C6041A54271
          428CE964F834A35F96FC4A0A5D6330E012D5AFDF0F5E9665B9209048F7256FF7
          8F01D176409402885EAF6EBC539DB9657DF25CB03E02D92F63B2418DF6AE01A4
          E4343DE3042925006818900F07460155E26590112F2043016EB6DED890AB9D67
          465D3B81C0F2489FAF46AC6108CB73EE3DE438292DB07D9006A473EC04AA040A
          703E40220A50DB7A2363972B2C02671FF3105C1CB6C76BB0763687953B9B1FB0
          9C6F3D94770BD282BCF9738545953331E409A3800815CE3CACCFDA24CC30E3DC
          FD6170231C7624EA911A2E2269EBDD369997F2E9557598A277917705DF024048
          724D679C39648EE49305C6234DBD726A95F1933C05175A86C053605BA201DBE2
          B5C82F7E29B2923C68D0A98DDDFDEE4167DB9E9800605A71BDB7B13C7DAE252A
          145E9F045310838AE72CAA9EBB29C02263810EB62C13FA874518750C9C6E099B
          0F3D1DFEFA6857E8E81522CBD6646746B7DC2E5DABBDFA82C5B36E0E2E178FBE
          011E227D44A3CA0BA3DF8BA8991AD80FC4C07AF10DAA1A3EEE203D450DA340AC
          5DA316247BDDA575FB9626456053F9777838010659A45F1EBF9C2CDC832C9A4E
          58A0A2EF975DF4C421C824977C2A14478138DA48BC3463DAACE0171D0D9991ED
          BD3E1CACFD06ADEC81C8F3F8F96304C5D966ECDF68C6AA3D8FFB7ABE38536815
          7AC8DB82B12A2C503A913607EFCB484B8D703457AED6D96EF5E2BCA317A29B45
          76F254D41CB620FF743BEA9B3EEF45B0EE9A924FABF00FA0844CCFE7916C4579
          96928BD6C528B477C1E9E4507D64214AEBBB612BEBAC40B0A61063E333DE0771
          95E3D3A120BC546D2D88CF3BBA3B966E4450E1F882E3A51D0E18345BA166FE4E
          DFFF012524BF163253B26CC974AB5EABD6B6BDEAB753F81826690430E3697F81
          89C46FBB1A7FF0E906CB2C0000000049454E44AE426082}
        Name = 'PngImage73'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000027B4944415478DAA5534D48545114FEEE7D6F9C711CE759
          2E2A8A68912B35901646138D2345A84DD468423F5894388B76819261525AF643
          20B6924828A2A560D22038096612B80B83C14D2D4C89D7F83330EA38CEBDEF75
          DEBC29C6B69EC7C73DF772CE77BE73EF79CC344DECC4D88E096A023EECD20E0D
          9597875A4AF679192B903623B303382790AF2A8043E548EA9C4F4D0E2F7E880C
          9E93D2FCCA6A03FEDD6587EB63A7CF74EC293E00986A2E59B1578B40E13681DB
          05A474E0E3E838FA5F84FA93C9F5DBCCEFF71D3D567DEBD3F193978A140F6020
          8FC022A364C66C15CE02524101B353313C791A9C585CFC718A05023557EBEAEF
          BFA9ACF27341F126B793B25072C891582A5C44A2CFC5D1F7A0F1FBECB7CF4758
          4343D3E3B3E7FBEEEC3F580691B1AB32252F99C0F294B89C8058951878D4BA3A
          3EFEBA9A5DBE121E6EB9FE3054E4D5B09512D6BBC02418043003B4CBFA262718
          26148709271C78F7F2797AE8556F9075DDEB9DBDDBD95EA95093E9740A421A90
          52921A818C1090244B889C4FE7520A385D85187D1F31BBBBBB3AD9E0E0D05238
          7CA354CAAD6CA06118594821ED0443C2205221ADD53E2B74BB313D3D83B6B6D6
          B76C6424920E047C056B6BEBF464DC1E016AD61A302B38DFFE0E9DC7E3C1C2C2
          2F34368626D8D8585454555528CBCB2B70381CB06204C95655156EAA943FA98C
          3E6BE77117418FC771B1B9F90B8B4627656DED093E3F3FFF4FBEAEEBD0340D15
          1595DB54288C23B1B98ADFF22758DC830BC1A619D6D3F32C110CD6699B9B2964
          3219AA68D0656E65D5685A89257C5B1B29B181244F408FADA0A3BD23CA4A4BF7
          5EF37A8B6F52FFD6AB1BF6FCF3AC74EB52FF374E43E2545DCA5242DF882FE903
          3BFE1BFF00A1EF2612FAA9DFB20000000049454E44AE426082}
        Name = 'PngImage75'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003B94944415478DA6D537B4C5B75183DBFF6F6B617EE6DA1
          3C3A603C3665C084C943E7066ECA86A80CCD244BE710996ECE2C248E44AA1951
          37B66438A2D3E942962A1AA92E3AB34716D060DD186E8C50419E9D71CC19A0D0
          91B2C25ADA727BFBB85E888989F1245FF2FBE33BE7F73DCE474413852FAF11EC
          6D096009111191F0F9BCCB6F865583F3F2A8150528A2F1FEC69D0F1B945CBC18
          0E0541734A72BBB3CF43FE232093A282619834510CF33C2FD89410BB7643EE7E
          BE98EDDDD6615E0F3A5F4AA120FA4760DA5A6621E2D7144E5F21A8F92A000545
          7DF872F5DEBAFCFCC7909212879B562B8CA6B33FE18FA1AB3F1E2AACCB6A3813
          07A25A16E87D673F7FA5F1FC1344FC8CC2BCF4796963B02432A7AAFD0BE349A5
          1814208644A4A727C23A368ED6DA578335FB1264AB2A0E2E5588D9DE9FD1FA8C
          A199B87080889F2BB6832574FDB7647746715D59517E167C4C2A1C0B0C0AF232
          A1D5B098FCBE11DA4778B00F964AF405D8CEB7E0AFCBC3BEB95197436A81B983
          A284D5589406373507CC0430CEEFC240622D72735621865160CAB40749C55AA8
          9232A18A67A54949012FDAB61DFF8D2C36C96A066EB1278374A4422B2507E6BD
          70F23AD89F7E0F05859B101FC561BEBF1353E64B58B9F626D6ECAB00481CAC27
          2EDEB7BCF5C31612FC88449DFB45DC78D159622CADD0273BEC93F0499DA6AE59
          8DBCBC0D60D56A884A1D5C974E21E3C91E68B21F8277C281CE17CEDE5D189CAB
          25E2056E02D99A18A74DCEC817880CF7FDE8982EC3DC8AA7909B9905D011E06F
          4FE001B119A92FC6002241C81FC6A2DD876EBDF93A59FC54D5362B8F2EA7053F
          642E2FC22E3F469DEB602B6D406A521A3C7C18D4E41856D84E237D87165C56AC
          24AAC29F1F0FF1BDF5BDCF11A701A9DF19F178BBA0ADDCF9B6A16C767A025E79
          108F56E8E1F55010841042B412B78E1EF11D3818A075956B295FCF0C3ACB3B8E
          38E7FD0DC45D4FF04D8B8843F7D8CD2F1D7EB7BDB8703DE7753B11CB25626C6C
          06729AA0DFD237BC61E882E335537649383E92DCD05FB64C75D94BE48087DC93
          BCD16C52C1E465214F4E39BEA76AD79B89892B152323E3F078DCC2B4C0FFAAB1
          0CD61F4BF8BD2EE5DCB3DBBB3F1846D3B181C35B81A37E699964D81081D2F602
          E854921D43210482788565B91C8EE3041945595DEAD833D557CDEBAAF6ABBB14
          9B92A377E8CD960EB7A097B8934BAE24A30606E56DB950D3C1E50B94C914502A
          55888ED2C04F33A8ECBB86CDFEBBD5699F14B7761BAD7D253D334BE471FC83FF
          1550A918286362F17AFF75E43AEC08EB22DFD064689AEEDC9829B285C28361FC
          8BBF01D9BD84B6DBDB58B50000000049454E44AE426082}
        Name = 'PngImage74'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002F44944415478DA95935D48544114C7FF73D7BDEEBA9B46
          2AFA5064516D20A5A12841F4B10B45465919D5961152961FB86A1F5A64598A59
          1695F9B5C4DA431A91952664BDB42681B4579488C8B708AD1435D37471BBBB73
          EF6DEEAA50D64BF332338739BF73E69CF3278AA260F99EF2973BB7ADDB401445
          9665FC73B16750C8F459A3D170CF9D42F787C6136B890AC8B3BF926F656C22F8
          8F75FE41374AADF1C40FC8B5B78B951966FEAFA8339125B61386177D00659779
          3A06B8DF45CB0E2668FD809C5AA7589565F10328A518EEE941D8AA55E08382E0
          536DA28891B7EF608C8981C205223810286E14E8E5D4C43F01D4EB459FC301F1
          C50B0458CC5862CB85C471E877D483B8DE80C4C721E4501A8C061DF2EF08D47E
          6C0E606C600043494958595282AF6D6D18339900830121DDDD5864DD8F7EBB03
          B4F82222A34D385C29D047B97300126BC197860668AAAAB0D06C469FCB0549A2
          58BA613D86DFF762342505C17BAD30E8781CAF16E843DB1C805A34B58B1FEF35
          20B0A8088B23C2D5F26160CA8391DC3C84A61F81E226D0EB81AC1A8136CDCD80
          3282CCAAFDF9591BA6AC5684B827A168B5F08487C377ED06820FEC833CCE7E15
          0464D7FDF6055B9D53BC9D69E1BDEC3CD8DC0CE9683A8CE363E8271C242D8FC5
          9161F0858663E27421F8ED2930680360B30BF4F12C20B3C629D6655BF8E1A161
          4C4447236AF41B3EB1E4DD15D741F441D05FBA8028D30A8C120D466AEE62C1EA
          65C8BB29D027F93380DD579D6273A18577B3360E9695812B2D85E75C11E69796
          F887E8074B3FC45E0D776A1A949C533018F538C9BED03C0BD851EE145BCF5AF8
          492FE05128BEBB0418D7C442D11820B1AAFA241193820B01B189E0343AE8D820
          153804DA320B48BED22E3E3D63E6C73D809739105624AF9B395256547697D471
          6636CA6C324B496F040AEBBB684BDECC28275774C8AD051B89C8D2FDA93AB047
          CCD71F5D7556E75FB54933DA086480FCDA1EB4E4C44D8B29625745E796AD9B13
          085333553DD4762AD3829267A53C6DF6AB8A6838AEB3E375EF40932DE61752FF
          89F08E82B78A0000000049454E44AE426082}
        Name = 'PngImage76'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002D04944415478DAA5936D48144118C7FFB3BBF7665A8667
          2412652F2062D09B645D68681651922019464918944251287AA41554DE958628
          652F86A66950FAA5540C95404EB0A03A3C83A2B324BF4828A51E77E7EEDEDDEE
          34A75708915F1C78606776E6B73BCFF37B08A5144B19240820E4367B0CB050D9
          8A006878C0A7001C4D5EB53EF2911226E8A766E40384C377AAAAA0C17D2BB4A0
          1F0BFF03A0886693D2CC9CF8A232F34EAEEABE7DF645DBE714846BECE0D81B81
          2C0200498B3246D45656A56ECECF4B04E1391CCEEB9CEA7EFEC98448FD97B9C3
          C188FC07E067AB4A715AFAA6EBF575FB0CE17146F47DA5C8DEA8E0F8A92E5F4F
          E748176734CC40E00408D0F8C28451C551703504A864005FF5D9334945F7EFA6
          61685A0BCB00B052F0A13153C59791698C4F8AD06AD937D8156495C0F2D881FE
          862C1202584BCE9FDB5175E76E06DA9C044F872864C98F28418469B51F617A8E
          FDAA82598F0C1D09E0C4DE689CB3BC511A6E64087380A4EDCD1EDB40EEB28E71
          1D9ADF53E8A90F0151C2AC57C4B44B84E49520B945B85D1E96BB005E5D494065
          E3B0D2643D300FD895DC22D9068EEB9E3805B4BE1561A0D23CC023E1D7B417B2
          370811E19AF1B0DC29786DD98AEAD6CF4A9365FF3C80E7AD37CC66D365AB3515
          B536375A065D50651F22590EB6C410E8780A1AF0C3E39660E055988FC5A1ACCE
          A13454840084DC1240947A73E99EFC5B374D687FE742D9B371C446A8E8BAB806
          133F654CBA245600C214611AB1D25E7B388CDEFA237F925815F480E9472BB28F
          26143FB893AA19F3A868E9FD81D2AC185CB834E8EFEB1EB511A3C1CD4AC8531E
          5A4943C602F682C20580A044C1BE5073D6C545596B6A52361CDC1F0B5156915B
          D83FD5F3F2DB6E18F54EF02113C30550C75F91160248B047E28856283F7132FE
          B4B9641BCA2B3F783BDA9DA958AEB5B33A32DBD955962D06D0B07E08B066A2F4
          D0DA44E33D59C79189096F3AE1C837CA44A202DBB710B094F11B2BC763F0FB03
          3EDD0000000049454E44AE426082}
        Name = 'PngImage78'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002D34944415478DAA5925948546114C7FFDFBD73D7199771
          2A37B08D08A4C5DC2B6AB40C7AA9C82C5A10EAA5452207DBA48C74B2A2A0450C
          9D0CEBA554D284A28D88269D0A5A2068B382C2282371C9D29C993B73EFD73753
          4451D14307CECBF9BEF33BE7F0FF134A29FE27480840A6D402831A88C0B10A07
          564A88348B97454D37F7BE195C8B2075433001DE206018EC8F29D40AAA6FFE09
          30A4856A4080E567FFE45979E3DCE55BA7DB6A5C0F71EECCD363007700067DF7
          6F001B828FBEB1D9F6319E9BAD0589124F70B2A103A53BDA5EF6BCFD540C42AE
          FE06E0535C65822F980C0E1A74E8B4D76B494F4B5870A1395FB9FA4E41EE78C0
          DFD587B545D7FDD7AFBDDA0B08FBC071FA0F40C6AA16EA5C3F0D329B064A1008
          18888D1631357904D65DE6F1C12FA2CC0EA4D9346C74B8515BF3C00522165163
          2B0D03F21D9782CD0773F8464F1FDB9E83D922813399F0C567E056178F1E5D85
          240B284C25583E91C2E1B881AAAAFBBB292D7586018B365D0C566FC9E417EEEF
          40E7004594D5025955215B1458A31498CD327859869F97509846B0744C00B3ED
          4DDEBB770BD51F80232569FCFC5D0FD1D96720DA16014955209B55D862CCE18D
          4CB2022F91B02C4345510A456E4E63B0AD7DA510062C66279CDA99C91F687A8D
          9E610A4BA4025E10A0193C9E74530C04055041C4CAEC286CCB8B4485F30E9C15
          EDD5BA5EBA290C98B9BA951E2E4E054F68D848BA4E61B508888B91B0A4BA0B2F
          FA292A0A12B0C66E45B9F31EF638DB5B0C9D5B45E9762D0C30A5BA8EAB1C9940
          40024C46C3E8F729E9D362B3EA0EE5C847AF7463C59C384C8917B1A1D863349C
          7EC614200EA65680A9F0DD4829B5209A11F6360D19A9CF373A3D2BFEF6F9FA79
          8923A325B8EF74C351E279DFF1E8433924E904730A42F90B800B7C0318433A30
          A04D9A3137E9664DE54C5B5DFD53B03C1BFCAC55B2FB1E43E4F1570035421BB0
          478326D962946B11841FD5F9BC7F237C7A336B0C6098C1FF04F89FF80AA9E468
          F0F481FC510000000049454E44AE426082}
        Name = 'PngImage77'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001BB4944415478DA8D93BF4B425114C7BF2F10955AB41FFF
          414B2ED5524DFD1C0A92D008310DA440A2A5ADADA0B67E0C39B4440445923FCA
          088B5C2497B0966869129A23C1A6D2F4E5EDDCFBAE5959F40E7C3997F3389F7B
          CEB9E72900EAB6572CEFF861FEA5671BB90CA94CAAF95E318592D9F4C27DCD87
          DD351B870CD2F19A5494612681EC1B606A2E58033034B40BC87F950980C7BF25
          F91453EA344F66B40CFC55593F1DAF48250170FB96A1E61F100DEF41AF552002
          E0F2CE237C10C06FB3F8CB6425DD0230E1F2D0ED41786777642BEF604C255FA2
          6E8AA43771E66DBF3E86606E7120B4BFCE018B0230EE1CC6712C81C9990D2834
          836AB2AA2583FB9288E59F8E616AB22372B8CD019B02E0B077E1247E03B76F49
          DCC2CA6591242A21C06715142B642F606C1CC25134C2010101181B6EC5692203
          3E0BED059848E2FBC3CA0579BB56C55BEE12466B2F557C5E05D8079B114F66C1
          6741F56B63F832030DA40A483E9786D9DA83D869AA0A18ED33E12C55C0B873E4
          73E12A09DAD2A9B22DE025778B7A6B27B59CE6805585626D04D1FF7ED53D8890
          3BE10003A983C4F7DEAA333F4FBA23251519E0DE28617A8CFF9D7C38AAC218D3
          99F3BB7D000FD0FDF43A15E96F0000000049454E44AE426082}
        Name = 'PngImage80'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D45000000000000000973942E000001B149
          44415478DAA592BD6B024110C5DF9926A04520011BC142141B150453898D8556
          8960E3075858E55AC1DE22106CD42298BFC0EA4002D75868A382120DDAD8280A
          828D1821858285A7B99D782A8A68C8C2E3F66E6E7E33FB76B8F57A8DFF2C2E10
          083CAA54AAF7C3C0783CE64BA592206FBF65492701A150689DCBE58E02E17018
          BD5EEFB9D168BC31DE29080192C9E45140A7D311E45C670448241214647E701C
          07C51793C974B63302C4E3714C261394CBE58B8C9BCFE7A8542A2FCD66F39500
          3CCF239FCF23954A5DEC7E2C16433A9D7E2040241241B55A45341AA5E06AB522
          4992445A2E97247634B92A6C361B044160800401FC7E3F5AAD1682C120797098
          ACEC99DAED362C160B445164800C01BC5E2FBADD2E7C3E1F5561623F33900260
          4FF6DEE97460369B512C16770097CB85D168048FC77312A074C50A198D46327C
          0B70381C984EA7703A9DDB2BDC3F86E20953BFDF87C16040BD5EDF01AC562B66
          B319EC76FB761EF69314B1351C0EA1D7EB51ABD590CD66339CDBED7ED26AB56F
          6AB51A1A8DE6ECF52D160B32BA50287C0E06039193BFDDCABADFE8E6E241F81D
          E50F06B8DA24DEC9BAFE036021EBEB07AC0A36AC191010440000000049454E44
          AE426082}
        Name = 'PngImage79'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          53000000017352474200AECE1CE900000300504C5445FFFFFFFCF305FF6402DD
          0806F208844600A50000D402ABEA1FB714006411562C0590713AC0C0C0808080
          4040400000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000D04A3FED000000674944
          415478DA4D8E510A0021084447F62398FB9F55F063611D75ABA0E23D75CA702D
          3A6037C77B0922B0E0BF602CA4D91D62A9CE200A5D911255CDF1AAD32D59CD13
          4918B3D291BD734477CDE808DB91FD90DBD3916DF5CA7CE9E714CEC928AE9F12
          03471CC607E8F5332813DD95170000000049454E44AE426082}
        Name = 'PngImage81'
        Background = clWindow
      end>
    Left = 710
    Top = 4
    Bitmap = {}
  end
  object ilTabs: TPngImageList
    PngImages = <>
    Left = 620
    Top = 4
  end
  object odOpen: TOpenDialog
    Filter = 
      'Pawn Scripts (*.sma;*.p;*.sp;*.pwn;*.inc)|*.sma;*.p;*.sp;*.pwn;*' +
      '.inc|Batch Files (*.bat;*.cmd)|*.bat;*.cmd|C++ Files (*.cpp;*.hp' +
      'p)|*.cpp;*.hpp|C Files (*.c;*.h)|*.c;*.h|E-Mail Messages (*.msg)' +
      '|*.msg|HTML Files (*.htm;*.html)|*.htm;*.html|XML Files (*.xml)|' +
      '*.xml|PHP Files (*.php;*.php3;*.php4;*.php5;*.phtml)|*.php;*.php' +
      '3;*.php4;*.php5;*.phtml|SQL Files (*.sql)|*.sql|Textfiles (*.txt' +
      ')|*.txt|All Files (*.*)|*.*'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 620
    Top = 34
  end
  object sdSave: TSaveDialog
    Filter = 
      'Pawn Scripts (*.sma;*.p;*.sp;*.pwn;*.inc)|*.sma;*.p;*.sp;*.pwn;*' +
      '.inc|Batch Files (*.bat;*.cmd)|*.bat;*.cmd|C++ Files (*.cpp;*.hp' +
      'p)|*.cpp;*.hpp|C Files (*.c;*.h)|*.c;*.h|E-Mail Messages (*.msg)' +
      '|*.msg|HTML Files (*.htm;*.html)|*.htm;*.html|XML Files (*.xml)|' +
      '*.xml|PHP Files (*.php;*.php3;*.php4;*.php5;*.phtml)|*.php;*.php' +
      '3;*.php4;*.php5;*.phtml|SQL Files (*.sql)|*.sql|Textfiles (*.txt' +
      ')|*.txt|All Files (*.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 650
    Top = 34
  end
  object sciPrinter: TSciPrinter
    Editor = sciEditor
    Title = 'DelphiSci'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -11
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = []
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clBlack
    FooterFont.Height = -11
    FooterFont.Name = 'Arial'
    FooterFont.Style = []
    ColorMode = sccmNormal
    WordWrap = sciNoWrap
    Magnification = 0
    Left = 680
    Top = 34
  end
  object sciPropLoader: TSciPropertyLoader
    Editor = sciEditor
    StoreWhat = [stColors, stStyles, stOther, stLexerProperties, stExtensions]
    Left = 740
    Top = 34
  end
  object sciSearchReplace: TSciSearchReplace
    SearchForSelWord = False
    Editor = sciEditor
    OnTextNotFound = sciSearchReplaceTextNotFound
    Left = 770
    Top = 34
  end
  object sciOptionsDialog: TScintillaOptionsDlg
    Editor = sciEditor
    Pages = [opOptions, opColors, opHighlighter, opKeyboard]
    Left = 800
    Top = 34
  end
  object IdFTP: TIdFTP
    OnStatus = IdFTPStatus
    MaxLineAction = maSplit
    ReadTimeout = 10000
    OnDisconnected = IdFTPDisconnected
    OnWork = IdFTPWork
    OnWorkBegin = IdFTPWorkBegin
    OnWorkEnd = IdFTPWorkEnd
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    OnAfterClientLogin = IdFTPAfterClientLogin
    Left = 590
    Top = 34
  end
  object IdAntiFreeze: TIdAntiFreeze
    OnlyWhenIdle = False
    Left = 800
    Top = 4
  end
  object ilFileExtensions: TImageList
    Left = 590
    Top = 4
  end
  object IdUDPRCON: TIdUDPClient
    Port = 0
    ReceiveTimeout = 2000
    Left = 560
    Top = 4
  end
  object IdTCPRCON: TIdTCPClient
    MaxLineAction = maSplit
    ReadTimeout = 2000
    Port = 0
    Left = 560
    Top = 34
  end
  object xpmFTPBrowser: TXPManifest
    Left = 710
    Top = 34
  end
  object ppmTasks: TSpTBXPopupMenu
    OnInitPopup = ppmTasksInitPopup
    Left = 832
    Top = 4
    object mnuAddTask: TSpTBXItem
      Caption = 'Add Task'
      ImageIndex = 43
      Images = ilMain
      OnClick = mnuAddTaskClick
    end
    object mnuDeleteTask: TSpTBXItem
      Caption = 'Delete Task'
      ImageIndex = 62
      Images = ilMain
      OnClick = mnuDeleteTaskClick
    end
    object sepTasks: TSpTBXSeparatorItem
    end
    object mnuModifyTask: TSpTBXItem
      Caption = 'Modify Task'
      ImageIndex = 64
      Images = ilMain
      OnClick = mnuModifyTaskClick
    end
  end
  object ppmOutput: TSpTBXPopupMenu
    OnInitPopup = ppmOutputInitPopup
    Left = 832
    Top = 34
    object mnuCopyItem: TSpTBXItem
      Caption = 'Copy Item'
      OnClick = mnuCopyItemClick
    end
    object mnuCopyEverything: TSpTBXItem
      Caption = 'Copy Everything'
      OnClick = mnuCopyEverythingClick
    end
  end
end
