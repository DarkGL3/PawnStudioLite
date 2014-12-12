unit UnitConfigManager;

interface

uses SysUtils, Windows, Classes, Messages, SciLexerMemo, SpTBXItem, Forms,
     Controls, umysqlvio, uMysqlCT, uMysqlClient, uMysqlHelpers, Registry;

type
  THighlighterType = (htNone, htAMXX, htSM, htPawn);
  { FTP }
  TFTPServer = class(TCollectionItem)
    protected
      MenuItem: TSpTBXItem;
    private
      FName: String;
      FHost: String;
      FPort: Integer;
      FUsername: String;
      FPassword: String;
      FPassive: Boolean;
      FUploadDestination: String;
      function GetPassword: String;
      procedure SetPassword(const Value: String);
      procedure SetName(const Value: String);
    published
      property Name: String read FName write SetName;
      property Host: String read FHost write FHost;
      property Port: Integer read FPort write FPort;
      property Username: String read FUsername write FUsername;
      property Password: String read GetPassword write SetPassword;
      property Passive: Boolean read FPassive write FPassive default True;
      property UploadDestination: String read FUploadDestination write FUploadDestination;
    public
      procedure OnMenuItemClick(Sender: TObject);
      
      constructor Create(ACollection: TCollection); override;
      destructor Destroy; override;
  end;

  { RCON }
  TRCONServer = class;
  TRCONReadThread = class(TThread)
    protected
      procedure Execute; override;
    private
      Data: String;
      Owner: TRCONServer;
      procedure SyncData;
  end;

  TServerType = (stHL1, stHL2, stSAMP, stTelnet, stSSH);

  TRCONServer = class(TCollectionItem)
    protected
      MenuItem: TSpTBXItem;
      ChallengeId: String;
      RealIP: String;
    private
      FName: String;
      FHost: String;
      FPort: Integer;
      FUsername: String;
      FPassword: String;
      FServerType: TServerType;
      ReadThread: TRCONReadThread;
      function GetPassword: String;
      procedure SetPassword(const Value: String);
      procedure SetName(const Value: String);
    published
      property Name: String read FName write SetName;
      property Host: String read FHost write FHost;
      property Port: Integer read FPort write FPort;
      property Username: String read FUsername write FUsername;
      property Password: String read GetPassword write SetPassword;
      property ServerType: TServerType read FServerType write FServerType default stHL1;
    public
      procedure OnMenuItemClick(Sender: TObject);
      procedure OnDataReceived(Data: String);
      procedure Send(const Data: String);
      function IsConsoleProt: Boolean;

      constructor Create(ACollection: TCollection); override;
      destructor Destroy; override;
  end;

  { MySQL }
  TMySQLServer = class(TCollectionItem)
    protected
      MenuItem: TSpTBXItem;
    private
      FPort: Integer;
      FDatabase: String;
      FHost: String;
      FName: String;
      FUsername: String;
      FPassword: String;
      function GetPassword: String;
      procedure SetName(const Value: String);
      procedure SetPassword(const Value: String);
    published
      property Name: String read FName write SetName;
      property Host: String read FHost write FHost;
      property Port: Integer read FPort write FPort;
      property Username: String read FUsername write FUsername;
      property Password: String read GetPassword write SetPassword;
      property Database: String read FDatabase write FDatabase;
    public
      procedure OnMenuItemClick(Sender: TObject);

      constructor Create(ACollection: TCollection); override;
      destructor Destroy; override;
  end;

  { Compiler }
  TCompiler = class(TCollectionItem)
    private
      FSaveOrigFile: Boolean;
      FCaptureOut: Boolean;
      FGameExec: String;
      FArguments: String;
      FDefOutDir: String;
      FLanguage: String;
      FHighlighter: THighlighterType;
      FFilename: String;
      FAlignFirstLine: Boolean;
      FCopyOnly: Boolean;
      procedure SetLanguage(const Value: String);
    published
      property Language: String read FLanguage write SetLanguage;
      property Highlighter: THighlighterType read FHighlighter;
      property Filename: String read FFilename write FFilename;
      property Arguments: String read FArguments write FArguments;
      property DefOutDir: String read FDefOutDir write FDefOutDir;
      property GameExec: String read FGameExec write FGameExec;
      property SaveOrigFile: Boolean read FSaveOrigFile write FSaveOrigFile;
      property CaptureOut: Boolean read FCaptureOut write FCaptureOut;
      property AlignFirstLine: Boolean read FAlignFirstLine write FAlignFirstLine;
      property CopyOnly: Boolean read FCopyOnly write FCopyOnly;
    public
      constructor Create(ACollection: TCollection); override;
  end;
  // Argument Specifiers:
  // %in%  - file to compile
  // %out% - output, compiled file

  { Configuration }
  TConfiguration = class(TComponent)
    private
      FDefaultPluginName: String;
      FDefaultVersion: String;
      FDefaultAuthor: String;
      FUseOldSearchDialog: Boolean;
      FUseOldReplaceDialog: Boolean;
      FSearch_FromCaret: Boolean;
      FSearch_RegEx: Boolean;
      FSearch_MatchWholeWord: Boolean;
      FSearch_CaseSensitive: Boolean;
      FSearch_SearchForward: Boolean;
      FOutputAutoScroll: Boolean;
      FOutputTrimRight: Boolean;
      FOutputShowLength: Boolean;
      FEditorSettings: String;
      FProfileName: String;
      FStartPageSubstitute: Integer;
      FShowStartPageOnStart: Boolean;
      FAutoIndentTemplates: Boolean;
      FReloadSavedFiles: Boolean;
      FLastUsedFiles: TStringList;
      FRecentFiles: TStringList;
      FSaveToolbarLayout: Boolean;
      FLastTheme: String;
      FIndent_UnindentClosingBrace: Boolean;
      FIndent_AutoIndent: Boolean;
      FIndent_IndentOpenBrace: Boolean;
      FIndent_UnindentPrevLine: Boolean;
      FIndent_PrevLineInsertBrace: Boolean;
      FIndent_ActivateIndentationGuides: Boolean;
      FIndent_IndentString: String;
      FIndent_HandleOLS: Boolean;
      FIndent_TabSize: Integer;
      FRCONServers: TCollection;
      FFTPServers: TCollection;
      FMySQLServers: TCollection;
      FActiveFTPSrv: TFTPServer;
      FActiveRCONSrv: TRCONServer;
      FActiveMySQLSrv: TMySQLServer;
      FCompilers: TCollection;
      FEnableModMarkers: Boolean;
      FSortEntries: Boolean;
      FHideEmptyGroups: Boolean;
      FCS_IntelligentCommentBehavior: Boolean;
      FCS_AutoScrollBack: Boolean;
      FAC_Enable: Boolean;
      FAC_TabCompletes: Boolean;
      FAC_ShowFilter: Boolean;
      FAC_AutoShow: Boolean;
      FAC_AutoInsert: Boolean;
      FCT_Enable: Boolean;
      FCT_HighlightParams: Boolean;
      FCT_EditorOwnsCalltip: Boolean;
      FCT_AutoHide: Boolean;
      FCT_AutoShowCalltip: Boolean;
      procedure SetActiveFTPSrv(const Value: TFTPServer);
      procedure SetActiveRCONSrv(const Value: TRCONServer);
      procedure SetActiveMySQLSrv(const Value: TMySQLServer);
      procedure SetEnableModMarkers(const Value: Boolean);
      procedure SetHideEmptyGroups(const Value: Boolean);
      procedure SetSortEntries(const Value: Boolean);
    published
      // Profile
      property ProfileName: String read FProfileName write FProfileName;
      // Miscellaneous
      property DefaultPluginName: String read FDefaultPluginName write FDefaultPluginName;
      property DefaultVersion: String read FDefaultVersion write FDefaultVersion;
      property DefaultAuthor: String read FDefaultAuthor write FDefaultAuthor;
      property UseOldSearchDialog: Boolean read FUseOldSearchDialog write FUseOldSearchDialog;
      property UseOldReplaceDialog: Boolean read FUseOldReplaceDialog write FUseOldReplaceDialog;
      property Search_FromCaret: Boolean read FSearch_FromCaret write FSearch_FromCaret;
      property Search_MatchWholeWord: Boolean read FSearch_MatchWholeWord write FSearch_MatchWholeWord;
      property Search_CaseSensitive: Boolean read FSearch_CaseSensitive write FSearch_CaseSensitive;
      property Search_RegEx: Boolean read FSearch_RegEx write FSearch_RegEx;
      property Search_SearchForward: Boolean read FSearch_SearchForward write FSearch_SearchForward;
      property OutputAutoScroll: Boolean read FOutputAutoScroll write FOutputAutoScroll;
      property OutputTrimRight: Boolean read FOutputTrimRight write FOutputTrimRight;
      property OutputShowLength: Boolean read FOutputShowLength write FOutputShowLength;
      property EnableModMarkers: Boolean read FEnableModMarkers write SetEnableModMarkers;
      // Essential/Auto-Save
      property EditorSettings: String read FEditorSettings write FEditorSettings; // has been changed to String but unimportant because nothing has ever been stored in here
      // General
      property StartPageSubstitute: Integer read FStartPageSubstitute write FStartPageSubstitute;
      property ShowStartPageOnStart: Boolean read FShowStartPageOnStart write FShowStartPageOnStart;
      property AutoIndentTemplates: Boolean read FAutoIndentTemplates write FAutoIndentTemplates;
      property ReloadSavedFiles: Boolean read FReloadSavedFiles write FReloadSavedFiles;
      property LastUsedFiles: TStringList read FLastUsedFiles write FLastUsedFiles;
      property RecentFiles: TStringList read FRecentFiles write FRecentFiles;
      property LastTheme: String read FLastTheme write FLastTheme;
      // Indentation
      property Indent_AutoIndent: Boolean read FIndent_AutoIndent write FIndent_AutoIndent;
      property Indent_IndentOpenBrace: Boolean read FIndent_IndentOpenBrace write FIndent_IndentOpenBrace;
      property Indent_UnindentClosingBrace: Boolean read FIndent_UnindentClosingBrace write FIndent_UnindentClosingBrace;
      property Indent_UnindentPrevLine: Boolean read FIndent_UnindentPrevLine write FIndent_UnindentPrevLine;
      property Indent_PrevLineInsertBrace: Boolean read FIndent_PrevLineInsertBrace write FIndent_PrevLineInsertBrace;
      property Indent_ActivateIndentationGuides: Boolean read FIndent_ActivateIndentationGuides write FIndent_ActivateIndentationGuides;
      property Indent_HandleOLS: Boolean read FIndent_HandleOLS write FIndent_HandleOLS;
      property Indent_IndentString: String read FIndent_IndentString write FIndent_IndentString;
      property Indent_TabSize: Integer read FIndent_TabSize write FIndent_TabSize;
      // Servers
      property FTPServers: TCollection read FFTPServers write FFTPServers;
      property RCONServers: TCollection read FRCONServers write FRCONServers;
      property MySQLServers: TCollection read FMySQLServers write FMySQLServers;
      // Compilers
      property Compilers: TCollection read FCompilers write FCompilers;
      // Code Explorer
      property SortEntries: Boolean read FSortEntries write SetSortEntries;
      property HideEmptyGroups: Boolean read FHideEmptyGroups write SetHideEmptyGroups;
      // ClamSense
      property CS_IntelligentCommentBehavior: Boolean read FCS_IntelligentCommentBehavior write FCS_IntelligentCommentBehavior;
      property CS_AutoScrollBack: Boolean read FCS_AutoScrollBack write FCS_AutoScrollBack;
      // Auto-Complete
      property AC_Enable: Boolean read FAC_Enable write FAC_Enable;
      property AC_AutoShow: Boolean read FAC_AutoShow write FAC_AutoShow;
      property AC_ShowFilter: Boolean read FAC_ShowFilter write FAC_ShowFilter;
      property AC_TabCompletes: Boolean read FAC_TabCompletes write FAC_TabCompletes;
      property AC_AutoInsert: Boolean read FAC_AutoInsert write FAC_AutoInsert;
      // Call-Tips
      property CT_Enable: Boolean read FCT_Enable write FCT_Enable;
      property CT_HighlightParams: Boolean read FCT_HighlightParams write FCT_HighlightParams;
      property CT_AutoHide: Boolean read FCT_AutoHide write FCT_AutoHide;
      property CT_EditorOwnsCalltip: Boolean read FCT_EditorOwnsCalltip write FCT_EditorOwnsCalltip;
      property CT_AutoShowCalltip: Boolean read FCT_AutoShowCalltip write FCT_AutoShowCalltip;
      // !! Backwards-Compatibility !!
      property SaveToolbarLayout: Boolean read FSaveToolbarLayout write FSaveToolbarLayout;
    public
      property ActiveFTPSrv: TFTPServer read FActiveFTPSrv write SetActiveFTPSrv;
      property ActiveRCONSrv: TRCONServer read FActiveRCONSrv write SetActiveRCONSrv;
      property ActiveMySQLSrv: TMySQLServer read FActiveMySQLSrv write SetActiveMySQLSrv;
    public
      constructor Create; reintroduce;
      destructor Destroy; override;
  end;

var Configuration: TConfiguration;
    Backup: TConfiguration; // needed for settings dialog

    MySQLClient: TMySQLClient;

function GetProfiles: String;
procedure SetDefaults;
procedure RefillCompilers;

procedure LoadConfig(Filename: String);
procedure SaveConfig(Filename: String);

{$I mysqlinc.inc}

implementation

uses UnitfrmMain, UnitfrmSettings, UnitFunctions, UnitExtensionManager,
  UnitXPMs, UnitCSResultSaver;

function GetProfiles: String;
var fRec: TSearchRec;
begin
  Result := '';
  if (FindFirst(ApplicationPath + 'configs\*.prof', faAnyFile, fRec) = 0) then begin
    repeat
      if (fRec.Name <> '.') and (fRec.Name <> '..') and (not AnsiSameText(fRec.Name, 'Configuration.prof')) then
        Result := Result + Copy(fRec.Name, 1, Pos('.', fRec.Name)-1) + #13#10;
    until (FindNext(fRec) <> 0);
    Result := Copy(Result, 1, Length(Result)-2);
    SysUtils.FindClose(fRec);
  end;
end;

procedure SetDefaults;
begin
  with Configuration do begin
    ProfileName := '(Default)';

    DefaultPluginName := 'New Plugin';
    DefaultVersion := '1.0';
    DefaultAuthor := 'Unknown';

    UseOldSearchDialog := False;
    UseOldReplaceDialog := False;

    Search_FromCaret := True;
    Search_MatchWholeWord := False;
    Search_CaseSensitive := False;
    Search_RegEx := True;
    Search_SearchForward := True;

    OutputAutoScroll := True;
    OutputTrimRight := True;
    OutputShowLength := True;
    EnableModMarkers := True;

    EditorSettings := '';
    
    StartPageSubstitute := -1;
    ShowStartPageOnStart := True;
    ReloadSavedFiles := False;
    LastUsedFiles.Clear;
    SaveToolbarLayout := False;

    Indent_AutoIndent := True;
    Indent_IndentOpenBrace := True;
    Indent_UnindentClosingBrace := True;
    Indent_UnindentPrevLine := False;
    Indent_PrevLineInsertBrace := False;
    Indent_ActivateIndentationGuides := False;
    Indent_HandleOLS := True;
    Indent_IndentString := #9;
    Indent_TabSize := 4;

    RefillCompilers;

    FTPServers.Clear;
    RCONServers.Clear;
    MySQLServers.Clear;

    HideEmptyGroups := False;
    SortEntries := False;
    ShowStartPageOnStart := True;
    LastTheme := 'Nexos5';

    CS_IntelligentCommentBehavior := True;

    AC_Enable := True;
    AC_AutoShow := True;
    AC_ShowFilter := True;
    AC_TabCompletes := True;
    AC_AutoInsert := False;

    CS_AutoScrollBack := True;

    CT_Enable := True;
    CT_HighlightParams := True;
    CT_EditorOwnsCalltip := True;
    CT_AutoShowCalltip := False;
    CT_AutoHide := True;

    frmMain.ShowCaret := frmMain.sciEditor.Caret.LineVisible;
    frmMain.MinXPos := frmMain.sciEditor.PointXFromPosition(0);
  end;
end;

procedure RefillCompilers;
var Registry: TRegistry;
    Buffer: String;
begin
  Registry := TRegistry.Create;
  with Configuration.Compilers do begin
    Clear;
    { AMX Mod X }
    with TCompiler(Add) do begin
      Language := 'AMXModX';
      Arguments := '"%in%" -o"%out%"';
      try
        { Part 1 - Find compiler }
        Registry.RootKey := HKEY_LOCAL_MACHINE;
        if (Registry.OpenKeyReadOnly('SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\AMX Mod X Installer')) then begin
          Buffer := ExtractFilePath(Registry.ReadString('UninstallString'));
          Buffer := Buffer + 'files\base\scripting\amxxpc.exe';
          if (FileExists(Buffer)) then
            Filename := Buffer;
          Registry.CloseKey;
        end;
        { Part 2 - Find game executable (and dedicated server) }
        Registry.RootKey := HKEY_CURRENT_USER;
        if (Registry.OpenKeyReadOnly('Software\Valve\Steam')) then begin
          Buffer := ExtractFilePath(Registry.ReadString('ModInstallPath'));
          if (FileExists(Buffer + 'counter-strike\hl.exe')) then
            GameExec := Buffer + 'counter-strike\hl.exe'
          else if (FileExists(Buffer + 'half-life\hl.exe')) then
            GameExec := Buffer + 'half-life\hl.exe';

          if (GameExec <> '') then begin
            if (DirectoryExists(Buffer + 'dedicated server\cstrike\addons\amxmodx\plugins')) then
              DefOutDir := Buffer + 'dedicated server\cstrike\addons\amxmodx\plugins'
            else if (DirectoryExists(Buffer + 'dedicated server\valve\addons\amxmodx\plugins')) then
              DefOutDir := Buffer + 'dedicated server\valve\addons\amxmodx\plugins';
          end;
          Registry.CloseKey;
        end;
      except
        on E: Exception do
          AddDebugLog('ConfigManager', 'Cannot open registry (AMXX): ' + E.Message);
      end;
    end;
    { SourceMod }
    with TCompiler(Add) do begin
      Language := 'SourceMod';
      Arguments := '"%in%" -o"%out%"';
      try
        { Part 1  - Find game executable (and dedicated server) }
        Registry.RootKey := HKEY_CURRENT_USER;
        if (Registry.OpenKeyReadOnly('Software\Valve\Steam')) then begin
          Buffer := ExtractFilePath(Registry.ReadString('ModInstallPath'));
          if (FileExists(Buffer + 'counter-strike source\hl2.exe')) then
            GameExec := Buffer + 'counter-strike source\hl2.exe'
          else if (FileExists(Buffer + 'half-life 2\hl2.exe')) then
            GameExec := Buffer + 'half-life 2\hl2.exe';

          if (GameExec <> '') then begin
            if (DirectoryExists(Buffer + 'source dedicated server\cstrike\addons\sourcemod\plugins')) then
              DefOutDir := Buffer + 'source dedicated server\cstrike\addons\sourcemod\plugins'
            else if (DirectoryExists(Buffer + 'source dedicated server\valve\addons\sourcemod\plugins')) then
              DefOutDir := Buffer + 'source dedicated server\valve\addons\sourcemod\plugins';

            { Part 2 - Compiler }
            if (DefOutDir <> '') then begin
              Buffer := ExtractFilePath(DefOutDir);
              if (FileExists(Buffer + 'scripting\spcomp.exe')) then
                Filename := Buffer + 'scripting\spcomp.exe';
            end;
          end;
          Registry.CloseKey;
        end;
      except
        on E: Exception do
          AddDebugLog('ConfigManager', 'Cannot open registry (SM): ' + E.Message);
      end;
    end;
    { Pawn }
    with TCompiler(Add) do begin
      Language := 'Pawn';
      Arguments := '"%in%" -o"%out%"'
      // TODO (perhaps): find sa:mp compiler
    end;
    { Batch }
    with TCompiler(Add) do begin
      Language := 'Batch';
      Arguments := '/C "%in%"';
      Filename := 'cmd.exe';
    end;
    { C/C++ }
    with TCompiler(Add) do begin
      Language := 'C/C++';
      Arguments := '"%in%" -o"%out%"'
    end;
    { Rest }
    TCompiler(Add).Language := 'CSS';
    TCompiler(Add).Language := 'EMailMessage';
    TCompiler(Add).Language := 'HTML';
    TCompiler(Add).Language := 'Makefile';
    TCompiler(Add).Language := 'MSSQL';
    TCompiler(Add).Language := 'null';
    TCompiler(Add).Language := 'PHP';
    TCompiler(Add).Language := 'SQL';
    TCompiler(Add).Language := 'XML';
  end;
  Registry.Free;
end;

procedure LoadConfig(Filename: String);
var FileStream: TFileStream;
    StrStream: TStringStream;
begin
  // load object from file
  FileStream := TFileStream.Create(Filename, fmOpenRead or fmShareDenyWrite);
  try
    FileStream.Seek(0, soFromBeginning);
    FileStream.ReadComponent(Configuration);
  finally
    FileStream.Free;
  end;
  // assign values
  frmMain.ShowCaret := frmMain.sciEditor.Caret.LineVisible;
  if (frmMain.sciEditor.GetXOffset <> 0) then
    frmMain.sciEditor.Perform(WM_HSCROLL, SB_LEFT, 0);
  frmMain.MinXPos := frmMain.sciEditor.PointXFromPosition(0);
  if (Configuration.CT_EditorOwnsCalltip) then
    frmMain.pnlCallTip.Parent := frmMain.jspCode
  else
    frmMain.pnlCallTip.Parent := frmMain;
  // reload editor settings
  StrStream := TStringStream.Create(Configuration.EditorSettings);
  frmMain.sciPropLoader.LoadFromStream(StrStream);
  StrStream.Free;
  // defaults for upgraded configs
  if (Configuration.Indent_TabSize = 0) then
    Configuration.Indent_TabSize := 4;
  // assign backup config here
  Backup := Configuration;
end;

procedure SaveConfig(FileName: String);
var FileStream: TFileStream;
begin
  FileStream := TFileStream.Create(Filename, fmCreate);
  try
    // don't seek here - new file has been created, pos=0
    FileStream.WriteComponent(Configuration);
  finally
    FileStream.Free;
  end;
end;

{ TConfiguration }

constructor TConfiguration.Create;
begin
  inherited Create(nil);
  LastUsedFiles := TStringList.Create;
  RecentFiles := TStringList.Create;
  FTPServers := TCollection.Create(TFTPServer);
  RCONServers := TCollection.Create(TRCONServer);
  MySQLServers := TCollection.Create(TMySQLServer);
  Compilers := TCollection.Create(TCompiler);
end;

destructor TConfiguration.Destroy;
begin
  LastUsedFiles.Free;
  RecentFiles.Free;
  FTPServers.Free;
  RCONServers.Free;
  MySQLServers.Free;
  Compilers.Free;
  inherited;
end;

procedure TConfiguration.SetActiveFTPSrv(const Value: TFTPServer);
begin
  // if a mistake ever happened, exit here
  if (Value = Configuration.ActiveFTPSrv) then
    exit;
  // disconnect first
  if (frmMain.IdFTP.Connected) then
    frmMain.IdFTP.Disconnect;
  // uncheck old item and check if the new one is valid
  if (Configuration.ActiveFTPSrv <> nil) then
    Configuration.ActiveFTPSrv.MenuItem.Checked := False;
  if (not Assigned(Value)) then begin
    FActiveFTPSrv := nil;
    exit;
  end;
  // reset values
  frmMain.IdFTP.Host := Value.Host;
  frmMain.IdFTP.Port := Value.Port;
  frmMain.IdFTP.Username := Value.Username;
  frmMain.IdFTP.Password := Value.Password;
  frmMain.IdFTP.Passive := Value.Passive;
  // cursor
  Screen.Cursor := crHourGlass;
  // connect
  try
    frmMain.IdFTP.Connect;
    // and assign item
    FActiveFTPSrv := Value;
    Value.MenuItem.Checked := True;
    frmMain.AllowFTPSwitch := False;
    // show message
    Application.MessageBox(PChar('Established connection successfully to ' + frmMain.IdFTP.Host + ':' + IntToStr(frmMain.IdFTP.Port) + '!'), 'Information', MB_ICONINFORMATION)
  except
    on E: Exception do begin
      // otherwise.. uncheck server item
      Value.MenuItem.Checked := False;
      FActiveFTPSrv := nil;
      frmMain.IdFTPDisconnected(frmMain.IdFTP);
      // debug+error message
      Application.MessageBox(PChar('Failed to connect to server:' + #13#10 + #13#10 + E.Message), 'Error', MB_ICONERROR);
      AddDebugLog('FTP-Explorer', 'Failed to connect to ' + frmMain.IdFTP.Host + ':' + OptionalPort(frmMain.IdFTP.Port, 21) + '!');
    end;
  end;
  // reset cursor
  Screen.Cursor := crDefault;
end;

procedure TConfiguration.SetActiveRCONSrv(const Value: TRCONServer);
var i, k: integer;
    Buffer: String;
    StrList: TStringList;
begin
  // if a mistake ever happened, exit here
  if (Value = Configuration.ActiveRCONSrv) then
    exit;
  // select menu item
  for i := 0 to frmMain.mnuRCONS.Count -1 do
    frmMain.mnuRCONS.Items[i].Checked := False;
  // check if we're disconnecting
  if (frmMain.IdTCPRCON.Connected) then
    frmMain.IdTCPRCON.Disconnect;
  frmMain.IdUDPRCON.Active := False;
  // well, disable controls if we're disabling
  if (Assigned(Value)) then
    frmMain.txtRCONCommand.Visible := not (Value.IsConsoleProt)
  else begin
    frmMain.tbxToolbar.ActiveTabIndex := 0;
    frmMain.tbxRCON.Enabled := False;
    FActiveRCONSrv := nil;
    exit;
  end;
  // now connect to server
  Screen.Cursor := crHourGlass;
  try
    case Value.ServerType of
      stHL1: begin
        with frmMain.IdUDPRCON do begin
          // set info and connect
          Active := False;
          Host := Value.Host;
          Port := Value.Port;
          Active := True;
          // request challange id
          Send('ÿÿÿÿchallenge rcon');
          Value.ChallengeId := ReceiveString;
          Value.ChallengeId := Trim(Copy(Value.ChallengeId, 19, Length(Value.ChallengeId)));
          // check data and set it if check is okay
          Send('ÿÿÿÿrcon ' + Value.ChallengeId + ' "' + Value.Password + '" echo Pawn Studio: Test');
          Buffer := ReceiveString;
          if (Pos('Pawn Studio : Test', Buffer) <> 0) then begin
            frmMain.tbxRCON.Enabled := True;
            Value.MenuItem.Checked := True;
            frmMain.txtRCONLog.Clear;
            frmMain.txtRCONCommand.Clear;
            with TRCONReadThread.Create(True) do begin
              Owner := Value;
              Resume;
            end;
            FActiveRCONSrv := Value;
            Application.MessageBox('Connection to Half-Life 1 Server established successfully!', 'Pawn Studio', MB_ICONINFORMATION);
          end
          else if (Pos('Bad rcon_password.', Buffer) <> 0) then
            Application.MessageBox('Your RCON password appears to be invalid. Please update your password and try again.', 'Pawn Studio', MB_ICONWARNING)
          else
            Application.MessageBox('Connect failed. Please check your data and try again.', 'Pawn Studio', MB_ICONWARNING);
        end;
      end;
      stHL2: begin
        with frmMain.IdTCPRCON do begin
          // set info
          if (Connected) then
            Disconnect;
          Host := Value.Host;
          Port := Value.Port;
          Connect(2000);
          // read all the stuff we don't need
          while (Socket.Readable(100)) do
            ReadChar;
          // send auth packet
          WriteInteger(10 + Length(Value.Password), False);
          WriteInteger(20, False);
          WriteInteger(3 { SERVERDATA_AUTH }, False);
          Write(Value.Password + #0#0);
          { get response }
          repeat
            i := ReadInteger(False);
            if (i < 10) or (i > 8192) then begin
              Application.MessageBox('Error: Received invalid size.', 'RCON Check', MB_ICONWARNING);
              break;
            end
            else begin
              i := ReadInteger(False);            // request id
              k := ReadInteger(False);            // command
              // these two are not required but need to be removed from the stack
              ReadLn(#0); // string1
              ReadLn(#0); // string2
              // well, process incoming data
              if (k <> 0) then begin { this would be the junk packet }
                if (i = -1) then begin
                  Application.MessageBox('Error: Password refused.', 'RCON Check', MB_ICONWARNING);
                  break;
                end
                else if (k = 2) then begin
                  frmMain.tbxRCON.Enabled := True;
                  Value.MenuItem.Checked := True;
                  frmMain.txtRCONLog.Clear;
                  frmMain.txtRCONCommand.Clear;
                  // create read thread
                  with TRCONReadThread.Create(True) do begin
                    Owner := Value;
                    Data := '';
                    Resume;
                  end;
                  // set values; end
                  FActiveRCONSrv := Value;
                  Application.MessageBox('Connection to Half-Life 2 Server established successfully!', 'Pawn Studio', MB_ICONINFORMATION);
                  break;
                end;
              end
            end;
          until (not Connected);
        end;
      end;
      stSAMP: begin
        with frmMain.IdUDPRCON do begin
          // set info and connect
          Active := False;
          Host := Value.Host;
          Port := Value.Port;
          Active := True;
          // set up packet and send it
          StrList := TStringList.Create;
          if (not GetIpAddressByName(StrList, Host)) then
            StrList.Text := Value.RealIP;
          Value.RealIP := Trim(StrList.Text);
          StrList.Text := StringReplace(Value.RealIP, '.', #13, [rfReplaceAll]);
          if (StrList.Count = 4) then begin
            { SAMP+IP }
            Buffer := 'SAMP' + Chr(StrToIntDef(StrList[0], 100)) + Chr(StrToIntDef(StrList[1], 100)) + Chr(StrToIntDef(StrList[2], 100)) + Chr(StrToIntDef(StrList[3], 100));
            { Port+x }
            Buffer := Buffer + Chr(Port and 255) + Chr((Port shr 8) and 255) + 'x';
            { Password Length+Password }
            i := Length(Value.Password);
            Buffer := Buffer + Chr(i and 255) + Chr((i shr 8) and 255) + Value.Password;
            { Command Length+Command }
            Buffer := Buffer + Chr(SAMP_LENGTH and 255) + Chr((SAMP_LENGTH shr 8) and 255) + SAMP_COMMAND;
            { Send Call }
            Send(Buffer);
            { Receive... Something? }
            Buffer := ReceiveString(2000);
            repeat
              Delete(Buffer, 1, 1);
            until (Length(Buffer) = 0) or (Pos(#0, Buffer) = 0);
            if (Pos('Pawn Studio: Test', Buffer) = 1) then begin
              frmMain.tbxRCON.Enabled := True;
              Value.MenuItem.Checked := True;
              frmMain.txtRCONLog.Clear;
              frmMain.txtRCONCommand.Clear;
              // create read thread
              with TRCONReadThread.Create(True) do begin
                Owner := Value;
                Resume;
              end;
              FActiveRCONSrv := Value;
              Application.MessageBox('Connection to GTA SA:MP Server established successfully!', 'Pawn Studio', MB_ICONINFORMATION);
            end
            else if (Length(Buffer) = 0) then
              Application.MessageBox('Connect failed: Server does not reply.', 'RCON Check', MB_ICONWARNING)
            else
              Application.MessageBox(PChar('Connect failed: ' + Buffer + #13#10 + #13#10 + 'Please check your data and try again.'), 'RCON Check', MB_ICONWARNING);
          end
          else begin
            Active := False;
            Application.MessageBox('Error: You have to enter a valid IP address to use this function!', 'RCON Check', MB_ICONWARNING);
          end;
          StrList.Free;
        end;
      end;
      stTelnet: begin
        with frmMain.IdTCPRCON do begin
          Host := Value.Host;
          Port := Value.Port;
          
          Connect(2000);
          // create read thread
          with TRCONReadThread.Create(True) do begin
            Owner := Value;
            Data := '';
            Resume;
          end;
          
          frmMain.tbxRCON.Enabled := True;
          Value.MenuItem.Checked := True;
          frmMain.txtRCONLog.Clear;
          frmMain.txtRCONCommand.Clear;
          FActiveRCONSrv := Value;
          Application.MessageBox('Connection to Telnet Server established successfully!', 'Pawn Studio', MB_ICONINFORMATION);
        end;
      end;
      stSSH: begin
        // start executable here, blahblah
      end;
    end;
  except
    on E: Exception do begin
      frmMain.tbxToolbar.ActiveTabIndex := 0;
      frmMain.tbxRCON.Enabled := False;
      FActiveRCONSrv := nil;
      if (frmMain.IdTCPRCON.Connected) then
        frmMain.IdTCPRCON.Disconnect;
      frmMain.IdUDPRCON.Active := False;
      Application.MessageBox(PChar('Couldn''t connect to server:' + #13#10 + #13#10 + E.Message), 'Pawn Studio', MB_ICONERROR);
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TConfiguration.SetActiveMySQLSrv(const Value: TMySQLServer);
var i: integer;
begin
  // if a mistake ever happened, exit here
  if (Value = Configuration.ActiveMySQLSrv) then
    exit;
  // select menu item
  for i := 0 to frmMain.mnuSQLS.Count -1 do
    frmMain.mnuSQLS.Items[i].Checked := False;
  // disconnect first
  if (MySQLClient.Connected) then
    MySQLClient.close;
  // disable stuff if Value is nil
  if (Value = nil) then begin
    frmMain.tbxToolbar.ActiveTabIndex := 0;
    frmMain.tbxMySQL.Enabled := False;
    FActiveMySQLSrv := nil;
    exit;
  end;
  // set new values
  MySQLClient.Host := Value.Host;
  MySQLClient.Port := Value.Port;
  MySQLClient.User := Value.Username;
  MySQLClient.Password := Value.Password;
  MySQLClient.Db := Value.Database;
  // connect
  if (MySQLClient.connect) then begin
    frmMain.sgSQLResult.FixedRows := 0;
    frmMain.sgSQLResult.RowCount := 1;
    frmMain.sgSQLResult.ColCount := 1;
    frmMain.sgSQLResult.Cells[0, 0] := '';
    FActiveMySQLSrv := Value;
    Value.MenuItem.Checked := True;
    frmMain.tbxMySQL.Enabled := True;
    Application.MessageBox('Connection successfully established!', 'Pawn Studio', MB_ICONINFORMATION);
  end
  else
    Application.MessageBox(PChar('Couldn''t establish connection:' + #13#10 + #13#10 + MySQLClient.LastError), 'Pawn Studio', MB_ICONERROR);
end;

{ TFTPServer }

// not a very good encryption but uh, this is open-source anyway
function TFTPServer.GetPassword: String;
var i: integer;
begin
  Result := '';
  if (Length(FPassword) > 0) then begin
    for i := 0 to (Length(FPassword) -2) div 2 do
      Result := Result + Chr(StrToInt('$' + Copy(FPassword, i*2+1, 2)));
  end;
end;

procedure TFTPServer.SetPassword(const Value: String);
var i: integer;
begin
  FPassword := '';
  for i := 1 to Length(Value) do
    FPassword := FPassword + IntToHex(Integer(Value[i]), 2);
end;

procedure TFTPServer.SetName(const Value: String);
begin
  FName := Value;
  if (Assigned(MenuItem)) then
    MenuItem.Caption := Value;
end;

constructor TFTPServer.Create(ACollection: TCollection);
begin
  inherited;
  // add menu item
  if (frmMain.mnuFTPS.Count = 1) and (not frmMain.mnuFTPS.Items[0].Enabled) then
    frmMain.mnuFTPS.Clear;
  // menu item
  MenuItem := TSpTBXItem.Create(frmMain.mnuFTPS);
  MenuItem.RadioItem := True;
  MenuItem.Caption := '';
  MenuItem.OnClick := Self.OnMenuItemClick;
  // add it
  frmMain.mnuFTPS.Add(MenuItem);
end;

destructor TFTPServer.Destroy;
var TempItem: TSpTBXItem;
begin
  if (not Application.Terminated) then begin
    if (frmMain.mnuFTPS.Count = 1) then begin
      TempItem := TSpTBXItem.Create(frmMain.mnuFTPS);
      TempItem.Caption := '(None)';
      TempItem.Enabled := False;
      frmMain.mnuFTPS.Add(TempItem);
    end;
    MenuItem.Free;
  end;
  
  inherited;
end;

procedure TFTPServer.OnMenuItemClick(Sender: TObject);
begin
  Configuration.ActiveFTPSrv := Self;
end;

procedure TConfiguration.SetEnableModMarkers(const Value: Boolean);
begin
  FEnableModMarkers := Value;
  if (Value) then
    UpdateBarImages(frmMain.sciEditor.TextHeight(0))
  else begin
    frmMain.sciEditor.MarkerDeleteAll(MODIFIED_MARKER);
    frmMain.sciEditor.MarkerDeleteAll(UNMODIFIED_MARKER);
  end;
end;

procedure TConfiguration.SetHideEmptyGroups(const Value: Boolean);
begin
  FHideEmptyGroups := Value;
  frmMain.mnuHideEmptyGroups.Checked := Value;
end;

procedure TConfiguration.SetSortEntries(const Value: Boolean);
begin
  FSortEntries := Value;
  frmMain.mnuSortEntries.Checked := Value;
end;

{ TRCONReadThread }

procedure TRCONReadThread.Execute;
var Size: Integer;
begin
  try
    case Owner.ServerType of
      stHL1, stSAMP: begin
        repeat
          Data := frmMain.IdUDPRCON.ReceiveString(100); // no exception here
          if (Data <> '') then begin
            if (Owner.ServerType = stHL1) then
              Delete(Data, 1, 5)
            else begin
              repeat
                Delete(Data, 1, 1);
              until (Length(Data) = 0) or (Pos(#0, Data) = 0);
            end;
            
            Synchronize(SyncData);
          end;
        until (not frmMain.IdUDPRCON.Active) or (Terminated);
      end;
      stHL2: begin
        repeat
          if (frmMain.IdTCPRCON.Socket.Readable(100)) then begin
            Size := frmMain.IdTCPRCON.ReadInteger(False);
            if (Size > 10) and (Size < 8192) then begin
              frmMain.IdTCPRCON.ReadInteger(False);  // request id
              frmMain.IdTCPRCON.ReadInteger(False);  // command id
              Data := frmMain.IdTCPRCON.ReadLn(#0);  // string1
              frmMain.IdTCPRCON.ReadLn(#0);          // string2
              Synchronize(SyncData);
            end;
          end;
        until (Terminated) or (not frmMain.IdTCPRCON.Connected);
      end;
      stTelnet: begin
        repeat
          Data := '';
          while (frmMain.IdTCPRCON.Socket.Readable(100)) do
            Data := Data + frmMain.IdTCPRCON.ReadChar;
          if (Data <> '') then
            Synchronize(SyncData);
        until (not frmMain.IdTCPRCON.Connected) or (Terminated);
      end;
      stSSH: begin
        // finish this and fix telnet someday
      end;
    end;
  except
    on E: Exception do begin
      if (Configuration.ActiveRCONSrv = Owner) and (not Application.Terminated) then begin
        frmMain.tbxToolbar.ActiveTabIndex := 0;
        frmMain.tbxRCON.Enabled := False;
        Owner.MenuItem.Checked := False;
        Application.MessageBox(PChar('Error: Couldn''t read from the RCON server.' + #13#10 + #13#10 + E.Message), 'Pawn Studio', MB_ICONWARNING);
      end;
    end;
  end;

  Free;
end;

procedure TRCONReadThread.SyncData;
begin
  Owner.OnDataReceived(Data);
end;

{ TRCONServer }

constructor TRCONServer.Create(ACollection: TCollection);
begin
  inherited;
  // add menu item
  if (frmMain.mnuRCONS.Count = 1) and (not frmMain.mnuRCONS.Items[0].Enabled) then
    frmMain.mnuRCONS.Clear;
  // menu item
  MenuItem := TSpTBXItem.Create(frmMain.mnuRCONS);
  MenuItem.RadioItem := True;
  MenuItem.Caption := '';
  MenuItem.OnClick := Self.OnMenuItemClick;
  // add it
  frmMain.mnuRCONS.Add(MenuItem);
end;

destructor TRCONServer.Destroy;
var TempItem: TSpTBXItem;
begin
  // menu item
  if (not Application.Terminated) then begin
    if (frmMain.mnuRCONS.Count = 1) then begin
      TempItem := TSpTBXItem.Create(frmMain.mnuRCONS);
      TempItem.Caption := '(None)';
      TempItem.Enabled := False;
      frmMain.mnuRCONS.Add(TempItem);
    end;
    MenuItem.Free;
  end;
  // read thread
  if (Assigned(ReadThread)) then begin
    ReadThread.Terminate;
    while (Assigned(ReadThread)) do
      Sleep(100);
  end;

  inherited;
end;

function TRCONServer.GetPassword: String;
var i: integer;
begin
  Result := '';
  if (Length(FPassword) > 0) then begin
    for i := 0 to (Length(FPassword) -2) div 2 do
      Result := Result + Chr(StrToInt('$' + Copy(FPassword, i*2+1, 2)));
  end;
end;

function TRCONServer.IsConsoleProt: Boolean;
begin
  Result := (ServerType = stTelnet) or (ServerType = stSSH);
end;

procedure TRCONServer.OnDataReceived(Data: String);
var TimeStr, Buff: String;
    tlen, i: integer;
    StrList: TStringList;
begin
  if (ServerType = stTelnet) or (ServerType = stSSH) then
    frmMain.txtRCONLog.Text := frmMain.txtRCONLog.Text + Data
  else begin
    // time string
    Buff := '';
    TimeStr := '[' + TimeToStr(Now) + '] ';
    tlen := frmMain.Canvas.TextWidth(TimeStr);
    repeat
      Buff := Buff + #32;
    until (frmMain.Canvas.TextWidth(Buff) >= tlen);
    // fill up string list
    StrList := TStringList.Create;
    StrList.Text := TimeStr + Trim(Data);
    for i := 1 to StrList.Count -1 do
      StrList[i] := Buff + StrList[i];
    // append list
    frmMain.txtRCONLog.Lines.AddStrings(StrList);
    // free list
    StrList.Free;
  end;
  frmMain.txtRCONLog.Perform(WM_VSCROLL, SB_BOTTOM, 0);
end;

procedure TRCONServer.OnMenuItemClick(Sender: TObject);
begin
  Configuration.ActiveRCONSrv := Self;
end;

procedure TRCONServer.Send(const Data: String);
var StrList: TStringList;
    len: Integer;
    Buffer: String;
begin
  case ServerType of
    stHL1: frmMain.IdUDPRCON.Send('ÿÿÿÿrcon ' + ChallengeId + ' "' + Password + '" ' + Data);
    stHL2: begin
      with frmMain.IdTCPRCON do begin
        WriteInteger(10 + Length(Data), False);            // size
        WriteInteger(20, False);                           // request id
        WriteInteger(2 { SERVERDATA_EXECCOMMAND }, False); // command
        Write(Data + #0#0);                                // string1 (string2 = #0)
      end;
    end;
    stSAMP: begin
      StrList := TStringList.Create;
      StrList.Text := StringReplace(RealIP, '.', #13, [rfReplaceAll]);
      if (StrList.Count = 4) then begin
        { SAMP+IP }
        Buffer := 'SAMP' + Chr(StrToIntDef(StrList[0], 100)) + Chr(StrToIntDef(StrList[1], 100)) + Chr(StrToIntDef(StrList[2], 100)) + Chr(StrToIntDef(StrList[3], 100));
        { Port+x }
        Buffer := Buffer + Chr(Port and 255) + Chr((Port shr 8) and 255) + 'x';
        { Password Length+Password }
        len := Length(Password);
        Buffer := Buffer + Chr(len and 255) + Chr((len shr 8) and 255) + Password;
        { Command Length+Command }
        len := Length(Data);
        Buffer := Buffer + Chr(len and 255) + Chr((len shr 8) and 255) + Data;
        { Send Call }
        frmMain.IdUDPRCON.Send(Buffer);
      end
      else begin
        Configuration.ActiveRCONSrv := nil;
        Application.MessageBox('Invalid IP for GTA SA:MP server!', 'Pawn Studio', MB_ICONERROR);
      end;
      StrList.Free;
    end;
    stTelnet: begin
      // finish this
    end;
    stSSH: begin
      // finish this
    end;
  end;
end;

procedure TRCONServer.SetName(const Value: String);
begin
  FName := Value;
  if (Assigned(MenuItem)) then
    MenuItem.Caption := Value;
end;

procedure TRCONServer.SetPassword(const Value: String);
var i: integer;
begin
  FPassword := '';
  for i := 1 to Length(Value) do
    FPassword := FPassword + IntToHex(Integer(Value[i]), 2);
end;

{ TMySQLServer }

constructor TMySQLServer.Create(ACollection: TCollection);
begin
  inherited;
  // add menu item
  if (frmMain.mnuSQLS.Count = 1) and (not frmMain.mnuSQLS.Items[0].Enabled) then
    frmMain.mnuSQLS.Clear;
  // menu item
  MenuItem := TSpTBXItem.Create(frmMain.mnuSQLS);
  MenuItem.RadioItem := True;
  MenuItem.Caption := '';
  MenuItem.OnClick := Self.OnMenuItemClick;
  // add it
  frmMain.mnuSQLS.Add(MenuItem);
end;

destructor TMySQLServer.Destroy;
var TempItem: TSpTBXItem;
begin
  if (not Application.Terminated) then begin
    if (frmMain.mnuSQLS.Count = 1) then begin
      TempItem := TSpTBXItem.Create(frmMain.mnuSQLS);
      TempItem.Caption := '(None)';
      TempItem.Enabled := False;
      frmMain.mnuSQLS.Add(TempItem);
    end;
    MenuItem.Free;
  end;
  
  inherited;
end;

function TMySQLServer.GetPassword: String;
var i: integer;
begin
  Result := '';
  if (Length(FPassword) > 0) then begin
    for i := 0 to (Length(FPassword) -2) div 2 do
      Result := Result + Chr(StrToInt('$' + Copy(FPassword, i*2+1, 2)));
  end;
end;

procedure TMySQLServer.OnMenuItemClick(Sender: TObject);
begin
  Configuration.ActiveMySQLSrv := Self;
end;

procedure TMySQLServer.SetName(const Value: String);
begin
  FName := Value;
  if (Assigned(MenuItem)) then
    MenuItem.Caption := Value;
end;

procedure TMySQLServer.SetPassword(const Value: String);
var i: integer;
begin
  FPassword := '';
  for i := 1 to Length(Value) do
    FPassword := FPassword + IntToHex(Integer(Value[i]), 2);
end;

{ TCompiler }

constructor TCompiler.Create(ACollection: TCollection);
begin
  inherited;
  CaptureOut := True;
  AlignFirstLine := True;
  CopyOnly := True;
end;

procedure TCompiler.SetLanguage(const Value: String);
begin
  FLanguage := Value;
  FHighlighter := GetHighlighterByName(Value);
end;

initialization
MySQLClient := TMySQLClient.Create;

finalization
MySQLClient.Free;
Configuration.Free;

end.
