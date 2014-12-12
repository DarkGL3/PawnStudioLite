unit UnitExtensionManager;

interface

uses SysUtils, Classes, IniFiles;

// this was supposed to get a manager for extensions only but got expanded
// after some time

type
  TExtension = class(TCollectionItem)
    private
      FCategory: String;
      FSection: String;
      FExtension: String;
      FIconIndex: Integer;
      FHighlighter: String;
      FTitle: String;
      FTab: String;
      FStartLine: Integer;
      FFileName: String;
      FFileType: String;
      FMarkStartLine: Boolean;
      FTypicalKeywords: TStringList;
      procedure SetExtension(const Value: String);
    published
      property Category: String read FCategory write FCategory;
      property Section: String read FSection write FSection;
      property Extension: String read FExtension write SetExtension;
      property IconIndex: Integer read FIconIndex write FIconIndex;
      property Highlighter: String read FHighlighter write FHighlighter;
      property FileName: String read FFileName write FFileName;
      property FileType: String read FFileType write FFileType;
      property Title: String read FTitle write FTitle;
      property Tab: String read FTab write FTab;
      property StartLine: Integer read FStartLine write FStartLine;
      property MarkStartLine: Boolean read FMarkStartLine write FMarkStartLine;
      property TypicalKeywords: TStringList read FTypicalKeywords write FTypicalKeywords;
    public
      constructor Create(Collection: TCollection); override;
      destructor Destroy; override;
  end;

var Extensions: TCollection;
    BigFileList: TStringList;
    Textfile: TExtension;

procedure LoadExtensions(eCategory: String);
function GetExtension(const Extension, Text: String): TExtension;
function GetImageIndex(Category, Section: String): Integer;

implementation

uses UnitfrmMain, UnitFunctions;

{ TExtension }

constructor TExtension.Create(Collection: TCollection);
begin
  inherited;
  FTypicalKeywords := TStringList.Create;
end;

destructor TExtension.Destroy;
begin
  FTypicalKeywords.Free;
  inherited;
end;

procedure TExtension.SetExtension(const Value: String);
begin
  FExtension := LowerCase(Trim(Value));
end;

{ Functions }

procedure LoadExtensions(eCategory: String);
var Config: TIniFile;
    Entries: TStringList;
    i, k: Integer;
    Ext: TExtension;
    Buff, Buff2: String;
    InQuote: Boolean;
begin
  Config := TIniFile.Create(ApplicationPath + 'Templates\' + StringReplace(eCategory, ':', '', [rfReplaceAll]) + '\config.ini');
  Entries := TStringList.Create;
  Config.ReadSections(Entries);
  frmMain.ilTabs.PngImages.BeginUpdate;
  for i := 0 to Entries.Count -1 do begin
    Ext := TExtension(Extensions.Add);
    with Ext do begin
      Category := eCategory;
      Section := Entries[i];
      Extension := ExtractFileExt(Config.ReadString(Entries[i], 'Tab', '.txt'));
      Highlighter := Config.ReadString(Entries[i], 'Highlighter', 'null');
      IconIndex := -1;
      Title := Config.ReadString(Entries[i], 'Title', '');
      Tab := Config.ReadString(Entries[i], 'Tab', 'Untitled% NUM%.txt');
      StartLine := Config.ReadInteger(Entries[i], 'StartLine', -1);
      FileName := ExtractFilePath(Config.FileName) + Config.ReadString(Entries[i], 'Source', '');
      FileType := Config.ReadString(Entries[i], 'FileType', '');
      if (AnsiSameText(FileType, 'Textfile')) then
        Textfile := Ext;
      MarkStartLine := Config.ReadBool(Entries[i], 'MarkStartLine', False);
      InQuote := False;
      Buff2 := '';
      Buff := Config.ReadString(Entries[i], 'TypicalKeywords', '');
      for k := 1 to Length(Buff) do begin
        if (InQuote) then begin
          if (Buff[k] = '"') then begin
            TypicalKeywords.Add(Buff2);
            Buff2 := '';
          end
          else
            Buff2 := Buff2 + Buff[k];
        end
        else if (Buff[k] = ' ') then begin
          TypicalKeywords.Add(Buff2);
          Buff2 := '';
        end
        else if (Buff[k] = '"') then
          InQuote := True
        else
          Buff2 := Buff2 + Buff[k];
      end;
      BigFileList.AddObject(eCategory + ' -> ' + Title, Ext);
      try
        with frmMain.ilTabs.PngImages.Add do begin
          PngImage.LoadFromFile(ApplicationPath + 'Templates\Pictures\' + Config.ReadString(Entries[i], 'Icon', ''));
          IconIndex := -(Index +1);
        end;
      except
        on E: Exception do
          AddDebugLog('LoadExtensions', 'Warning: Couldn''t load icon for extension manager: ' + E.Message);
      end;
    end;
  end;
  frmMain.ilTabs.PngImages.EndUpdate;
  Entries.Free;
  Config.Free;
end;

function GetExtension(const Extension, Text: String): TExtension;
var i, k: integer;
    BTmp: Boolean;
    ResList: TList;
begin
  Result := nil;
  ResList := TList.Create;
  // get all extensions
  for i := 0 to Extensions.Count -1 do begin
    if (AnsiSameText(TExtension(Extensions.Items[i]).Extension, Extension)) then
      ResList.Add(Extensions.Items[i]);
  end;
  // end here if there's only one
  if (ResList.Count = 1) then
    Result := TExtension(ResList[0])
  else if (ResList.Count <> 0) then begin
    for i := 0 to ResList.Count -1 do begin
      with TExtension(ResList[i]) do begin
        for k := 0 to TypicalKeywords.Count -1 do begin
          // Whitespace at start
          BTmp := (Pos(TypicalKeywords[k], Text) <> 0);
          if (BTmp) and (Copy(TypicalKeywords[k], 1, 1) = '$') then
            BTmp := (Pos(#9 + TypicalKeywords[k], Text) <> 0) or (Pos(#10 + TypicalKeywords[k], Text) <> 0) or (Pos(#13 + TypicalKeywords[k], Text) <> 0) or (Pos(#32 + TypicalKeywords[k], Text) <> 0);
          if (BTmp) and (Copy(TypicalKeywords[k], Length(TypicalKeywords[k])-1, 1) = '$') then
            BTmp := (Pos(TypicalKeywords[k] + #9, Text) <> 0) or (Pos(TypicalKeywords[k] + #10, Text) <> 0) or (Pos(TypicalKeywords[k] + #13, Text) <> 0) or (Pos(TypicalKeywords[k] + #32, Text) <> 0);
          // Check now
          if (BTmp) then begin
            Result := TExtension(ResList[i]);
            ResList.Free;
            exit;
          end;
        end;
      end;
    end;
    Result := TExtension(ResList[0])
  end;
  // else go to advanced check
  ResList.Free;
end;

function GetImageIndex(Category, Section: String): Integer;
var i: integer;
begin
  Result := -1;

  Category := LowerCase(Category);
  Section := LowerCase(Section);
  for i := 0 to Extensions.Count -1 do begin
    if (AnsiSameText(TExtension(Extensions.Items[i]).Category, Category)) and (AnsiSameText(TExtension(Extensions.Items[i]).Section, Section)) then begin
      Result := i;
      break;
    end;
  end;
end;

initialization

Extensions := TCollection.Create(TExtension);
BigFileList := TStringList.Create;

finalization

Extensions.Free;
BigFileList.Free;

end.
