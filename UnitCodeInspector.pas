unit UnitCodeInspector;

interface

uses SysUtils, Classes, Windows, JvInspector, Contnrs, StrUtils, Forms,
  SciSupport;

type
  { New Code-Inspector Item with changeable combobox [thanks to jbg!] }
  TJvInspectorSelectionTextListItem = class(TJvCustomInspectorItem)
    protected
      function GetDisplayValue: String; override;
      procedure GetValueList(const Strings: TStrings); override;
      procedure SetDisplayValue(const Value: String); override;
      procedure SetFlags(const Value: TInspectorItemFlags); override;
  end;

  TStringElem = class;
  TSelectionTextList = class(TStringList)
    private
      FStringElem: TStringElem;
      FSelected: Integer;
      function GetSelectedText: String;
      function GetSelected: Integer;
      procedure SetSelectedText(const Value: String);
      procedure SetSelected(const Value: Integer);
    published
      property Selected: Integer read GetSelected write SetSelected;
      property SelectedText: String read GetSelectedText write SetSelectedText;
    public
      constructor Create(const StringElem: TStringElem);
  end;

  { Virtual items }
  TSEOptions = set of (seoNameElem, seoNested, seoNoLF, seoIncType, seoType, seoStrictVals);
  TStringElem = class(TPersistent) // TPersistent required by JvInspector
    private
      FSTL: TSelectionTextList;
      function GetValue: String;
      procedure SetValue(const Value: String);
    published
      property StringVal: String read GetValue write SetValue;
      property STLValue: TSelectionTextList read FSTL write FSTL;
    public
      StartPos, Len: Integer;
      Options: TSEOptions;
      Item: TJvCustomInspectorItem;
      OldVal: String;
      constructor Create(const Start, Length: Integer; const Opts: TSEOptions); reintroduce;
  end;

  TROBehavior = (robEquals, robTrimEquals, robTrimNoLF);
  TROElem = class(TObject)
    protected
      TextBuff: String;
    public
      StartPos, Len: Integer;
      Behavior: TROBehavior;
      function SectionModified(const Start,  Length: Integer; const TextMod: PChar): Boolean;
      constructor Create(const Start, Length: Integer; const ROBehavior: TROBehavior); reintroduce;
  end;


procedure CleanEntries;
function AddCategory(const Caption: String; const Parent: TJvInspectorCustomCategoryItem = nil): TJvInspectorCustomCategoryItem;
function AddStringElem(const Category: TJvInspectorCustomCategoryItem; const Caption: String; const Start, Length: Integer; const Options: TSEOptions): TJvCustomInspectorItem;
function AddComboElem(const Category: TJvInspectorCustomCategoryItem; const Caption: String; const Start, Length: Integer; const Values: String; const Options: TSEOptions): TJvCustomInspectorItem;
function AddROElem(const Start, Length: Integer; const Behavior: TROBehavior): TROElem;
procedure NoInfoAvail;

procedure RecreateInspector(const Position: Integer);

var StringElems: TObjectList;
    ROElems: TObjectList;
    STLList: TObjectList;

    ComboIdx: Integer;

const PragmaTypes = 'align'#10'amxlimit'#10'amxram'#10'codepage'#10'compress'#10'ctrlchar'#10'deprecated'#10'dynamic'#10'library'#10'pack'#10'rational'#10'semicolon'#10'tabsize'#10'unused';

implementation

uses UnitfrmMain, UnitCodeProcessor, UnitFunctions, UnitDocuments,
  UnitCSResultSaver, UnitConfigManager;

procedure CleanEntries;
begin
  frmMain.jviInspector.BeginUpdate;
  frmMain.jviInspector.Root.Clear;
  StringElems.Clear;
  ROElems.Clear;
  STLList.Clear;
  frmMain.jviInspector.EndUpdate;
end;

function AddCategory(const Caption: String; const Parent: TJvInspectorCustomCategoryItem = nil): TJvInspectorCustomCategoryItem;
begin
  if (Parent = nil) then
    Result := TJvInspectorCustomCategoryItem.Create(frmMain.jviInspector.Root, nil)
  else
    Result := TJvInspectorCustomCategoryItem.Create(Parent, nil);
  Result.DisplayName := Caption;
  Result.Expanded := True;
end;

function AddStringElem(const Category: TJvInspectorCustomCategoryItem; const Caption: String; const Start, Length: Integer; const Options: TSEOptions): TJvCustomInspectorItem;
var Item: TStringElem;
begin
  Result := nil;
  Item := TStringElem.Create(Start, Length, Options);
  Item.Item := TJvInspectorPropData.New(Category, Item, 'StringVal');
  Item.Item.DisplayName := Caption;

  StringElems.Add(Item);
end;

function AddComboElem(const Category: TJvInspectorCustomCategoryItem; const Caption: String; const Start, Length: Integer; const Values: String; const Options: TSEOptions): TJvCustomInspectorItem;
var StringItem: TStringElem;
    STLItem: TSelectionTextList;
begin
  Result := nil;
  // initialize StringItem (yes, we kind of abuse it here)
  StringItem := TStringElem.Create(Start, Length, Options);
  // then SelectionTextList with our combobox items
  STLItem := TSelectionTextList.Create(StringItem);
  STLItem.Text := Values;
  STLItem.Sort;
  StringItem.FSTL := STLItem;
  // add VarData (no EventData) item to the inspector
  StringItem.Item := TJvInspectorPropData.New(Category, StringItem, 'STLValue');
  StringItem.Item.DisplayName := Caption;
  if (not (seoStrictVals in Options)) then
    StringItem.Item.Flags := StringItem.Item.Flags + [iifAllowNonListValues];
  // register items to prevent memory leak
  STLList.Add(STLItem);
  StringElems.Add(StringItem);
end;

function AddROElem(const Start, Length: Integer; const Behavior: TROBehavior): TROElem;
begin
  Result := TROElem.Create(Start, Length, Behavior);
  ROElems.Add(Result);
end;

// TODO (low priority): add function for code snippet below

{  CompItem := TJvInspectorCompoundItem.Create(InspCat, nil);
  CompItem.AddColumn(TJvInspectorVarData.New(CompItem, 'First', TypeInfo(string), @FirstName));
  CompItem.AddColumn(TJvInspectorVarData.New(CompItem, 'Initial', TypeInfo(string), @Initial));
  CompItem.AddColumn(TJvInspectorVarData.New(CompItem, 'Last', TypeInfo(string), @LastName));
  CompItem.Columns[0].Width := 25;
  CompItem.Columns[1].Width := 15; }

procedure NoInfoAvail;
begin
  // Inspector
  CleanEntries;
  TJvInspectorCustomCategoryItem.Create(frmMain.jviInspector.Root, nil).DisplayName := 'No Information Available';
  // Combobox
  frmMain.cboInspector.Items.Text := '(None)';
  frmMain.cboInspector.ItemIndex := 0;
  ComboIdx := -1;
end;

procedure RecreateInspector(const Position: Integer);
procedure FillComboBox(const Collection: TCollection; const CurrLine: Integer);
var i, k: integer;
begin
  { Function }
  if (Collection.ItemClass = TFunction) then begin
    for i := 0 to Collection.Count -1 do begin
      with TFunction(Collection.Items[i]) do begin
        if (Position >= DocPos) and (FuncEnd > Position) then begin
          frmMain.cboInspector.Items.BeginUpdate;
          frmMain.cboInspector.Items.Clear;
          for k := 0 to Collection.Count -1 do begin
            // we can *almost* always rely on the node, add it as object here
            with TFunction(Collection.Items[k]) do
              frmMain.cboInspector.Items.AddObject(Name, TObject(DocPos));
          end;
          frmMain.cboInspector.ItemIndex := i;
          frmMain.cboInspector.Items.EndUpdate;
          ComboIdx := i;
          exit;
        end;
      end;
    end;
  end
  { Code Element }
  else if (Collection.ItemClass = TCodeElement) then begin
    for i := 0 to Collection.Count -1 do begin
      with TCodeElement(Collection.Items[i]) do begin
        if (Line = CurrLine) then begin
          frmMain.cboInspector.Items.BeginUpdate;
          frmMain.cboInspector.Items.Clear;
          for k := 0 to Collection.Count -1 do begin
            // we can *almost* always rely on the node, add it as object here
            with TCodeElement(Collection.Items[k]) do
              frmMain.cboInspector.Items.AddObject(Element, TObject(-(Line +1)));
          end;
          frmMain.cboInspector.ItemIndex := i;
          frmMain.cboInspector.Items.EndUpdate;
          ComboIdx := i;
          exit;
        end;
      end;
    end;
  end
  { Nothing, erase box }
  else begin
    frmMain.cboInspector.Items.BeginUpdate;
    frmMain.cboInspector.Items.Text := '(None)';
    frmMain.cboInspector.ItemIndex := 0;
    frmMain.cboInspector.Items.EndUpdate;
  end;
end;

function StockVarCheck(const Text: String; const EscChr: Char; const Position: Integer): Boolean;
var bpos: integer;
begin
  Result := True;
  bpos := CodeFind('(', Text, EscChr, Position);
  if (bpos = -1) then exit;
  if (bpos > CodeFind(',', Text, EscChr, Position)) then exit;
  if (bpos > CodeFind('[', Text, EscChr, Position)) then exit;
  Result := False;
end;

function CheckForAssignment(const SLine: String): Boolean;
var i: integer;
    InBrace: Boolean;
begin
  InBrace := False;
  Result := False;
  for i := 1 to Length(SLine) do begin
    if (InBrace) then
      InBrace := (not (SLine[i] = ')'))
    else if (SLine[i] = '(') then
      InBrace := True
    else if (SLine[i] = '=') then begin
      Result := True;
      break;
    end;
  end;
end;

var i, line, Start, LPos: integer;
    Temp1, Temp2: Integer;
    EscChr, TmpChr: Char;
    Text, Buff, BuffS: String;
    IncludeDir, Path, Keyword: String;
    Parent, HeadCat: TJvInspectorCustomCategoryItem;
    SearchRec: TSearchRec;
    BTmp, Exists: Boolean;
begin
  if (ActiveDoc = nil) or (ActiveDoc.ParsingRes = nil) then exit;
  line := frmMain.sciEditor.LineFromPosition(Position);
  EscChr := GetEscapeChr(ActiveDoc.HighlighterType);
  Buff := Trim(frmMain.sciEditor.Lines[Line]);
  BuffS := RemoveFrom(Buff, EscChr, True, True, True, True, ' ', False);
  if (Length(Buff) = 0) then begin
    NoInfoAvail;
    exit;
  end;
  Start := frmMain.sciEditor.GetLineIndentPosition(line) + (Length(BuffS) - Length(TrimLeft(BuffS)));
  LPos := Start;
  Text := frmMain.sciEditor.Lines.Text;
  frmMain.jviInspector.BeginUpdate;
  { Precompiler }
  if (Copy(TrimLeft(BuffS), 1, 1) = '#') then begin
    { Definition >> #define VALUE[(PARAMS)] EXPRESSION }
    if (IsAtStart('#define', Trim(BuffS), True)) then begin
      CleanEntries;
      // Create category item
      Parent := AddCategory('Definition');
      // Add #define as read-only section
      Inc(LPos, 8);
      LPos := GetNextRealChr(Text, EscChr, LPos).Y -1;
      AddROElem(Start, LPos - Start, robTrimNoLF);
      // Then VALUE as normal value
      Start := LPos;
      LPos := Length(GetExp(Text, EscChr, Start));
      AddStringElem(Parent, 'Name', Start, LPos, [seoNameElem, seoNoLF]);
      Inc(Start, LPos);
      // Check for parameters
      with GetNextRealChr(Text, EscChr, Start +1) do begin
        if (X = Ord('(')) then begin
          // add new Paramters item
          LPos := GetMatchingBrace(Text, EscChr, Y, #0, True) - Y;
          if (Text[Y+LPos] = #10) then begin
            AddStringElem(Parent, 'Paramaters', Y, LPos - TN(Text[Y+LPos-1] = #13, 2, 1), []);
            Start := LPos +Y;
          end
          else begin
            AddStringElem(Parent, 'Paramaters', Y, LPos -1, []);
            Start := GetNextRealChr(Text, EscChr, Y + LPos).Y +1;
          end;
          // rename category to Macro as this looks like one
          Parent.Name := 'Macro';
          // Fill ComboBox
          FillComboBox(ActiveDoc.ParsingRes.Macros, line);
        end
        else begin
          FillComboBox(ActiveDoc.ParsingRes.Definitions, line);
          Start := Y -1;
        end;
      end;
      // Then value
      AddStringElem(Parent, 'Value', Start, Length(RemSem(RemoveFrom(Copy(Text, Start, PosEx(#10, Text, Start) - Start), EscChr, True, True, False, False))), []);
      // End
    end
    { Include >> #include </"INCLUDE>/" }
    else if (IsAtStart('#include', TrimLeft(BuffS), True)) then begin
      CleanEntries;
      // Create category item
      Parent := AddCategory('Include');
      // Add #include as read-only section
      Inc(LPos, 9);
      with GetNextRealChr(Text, EscChr, LPos, False, True, False) do begin
        AddROElem(Start, Y - Start -1, robTrimNoLF);
        // local include
        if (X = Ord('"')) then begin
          AddROElem(Y -1, 1, robTrimNoLF);
          BuffS := GetExp(Text, EscChr, Y);
          { make valid filename }
          BuffS := Copy(Text, Y, GetMatchingBrace(Text, EscChr, Y, #0, True) - Y +1);
          Buff := Trim(StringReplace(Copy(BuffS, 2, Length(BuffS)), '/', '\', [rfReplaceAll]));
          if (Pos(Copy(Buff, Length(Buff), 1), frmMain.sciEditor.WordChars) = 0) then
            Delete(Buff, Length(Buff), 1);
          //if (ExtractFileExt(Buff) = '') then
          //  Buff := Buff + '.inc';
          { get files and create combobox item if possible }
          if (Pos('\', Buff) = 0) then
            Path := ExtractFilePath(ActiveDoc.Filename)
          else begin
            Path := ExtractFilePath(ActiveDoc.Filename) + ExtractFilePath(Buff);
            if (not DirectoryExists(Path)) then
              Path := ExtractFilePath(ActiveDoc.Filename);
          end;

          if (DirectoryExists(Path)) then begin
            BTmp := (ExtractFileExt(Buff) = '');
            if (FindFirst(Path + '*.*', faAnyfile, SearchRec) = 0) then begin
              Text := Buff;
              repeat
                if (ExtractFileExt(SearchRec.Name) = '.inc') or ((not BTmp) and (ExtractFileExt(Buff) = ExtractFileExt(SearchRec.Name))) then begin
                  // check if it's already included
                  Exists := False;
                  for i := 0 to ActiveDoc.ParsingRes.Includes.Count -1 do begin
                    with TInclude(ActiveDoc.ParsingRes.Includes.Items[i]) do begin
                      if (IncludeType = itLocal) and (AnsiSameText(ExtractFileName(FileName), SearchRec.Name)) then begin
                        Exists := True;
                        break;
                      end;
                    end;
                  end;
                  // add it if it doesn't exist
                  if (not Exists) then begin
                    if (BTmp) then
                      Text := Text + #10 + Copy(SearchRec.Name, 1, Pos('.', SearchRec.Name) -1)
                    else
                      Text := Text + #10 + SearchRec.Name;
                  end;
                end
              until (FindNext(SearchRec) <> 0);
              SysUtils.FindClose(SearchRec);
              AddComboElem(Parent, 'File', Y -1, Length(BuffS), Text, [seoNested, seoNoLF]);
            end
            else
              AddStringElem(Parent, 'File', Y -1, Length(BuffS), [seoNested, seoNoLF]);
          end
          { just add item as StringElem }
          else
            AddStringElem(Parent, 'File', Y -1, Length(BuffS), [seoNested, seoNoLF]);
          AddComboElem(Parent, 'Type', Y -1, Length(BuffS), 'Global'#10'Local', [seoIncType, seoStrictVals]);
        end
        // global include
        else if (X = Ord('<')) then begin
          AddROElem(Y -1, 1, robTrimNoLF);
          IncludeDir := ExtractFilePath(GetCompiler(GetHighlighterName(ActiveDoc.HighlighterType)).Filename) + 'include\';
          { make valid filename }
          BuffS := Copy(Text, Y, GetMatchingBrace(Text, EscChr, Y, #0, True) - Y +1);
          Buff := Trim(StringReplace(Copy(BuffS, 2, Length(BuffS)), '/', '\', [rfReplaceAll]));
          if (Pos(Copy(Buff, Length(Buff), 1), frmMain.sciEditor.WordChars) = 0) then
            Delete(Buff, Length(Buff), 1);
          //if (ExtractFileExt(Buff) = '') then
          //  Buff := Buff + '.inc';
          { get files and create combobox item if possible }
          if (Pos('\', Buff) = 0) then
            Path := IncludeDir
          else begin
            Path := IncludeDir + ExtractFilePath(Buff);
            if (not DirectoryExists(Path)) then
              Path := IncludeDir;
          end;
          
          if (DirectoryExists(Path)) then begin
            BTmp := (ExtractFileExt(Buff) = '');
            if (FindFirst(Path + '*.*', faAnyfile, SearchRec) = 0) then begin
              Text := Buff;
              repeat
                if (ExtractFileExt(SearchRec.Name) = '.inc') or ((not BTmp) and (ExtractFileExt(Buff) = ExtractFileExt(SearchRec.Name))) then begin
                  // check if it's already included
                  Exists := False;
                  for i := 0 to ActiveDoc.ParsingRes.Includes.Count -1 do begin
                    with TInclude(ActiveDoc.ParsingRes.Includes.Items[i]) do begin
                      if (IncludeType = itGlobal) and (AnsiSameText(ExtractFileName(FileName), SearchRec.Name)) then begin
                        Exists := True;
                        break;
                      end;
                    end;
                  end;
                  // add it if it doesn't exist
                  if (not Exists) then begin
                    if (BTmp) then
                      Text := Text + #10 + Copy(SearchRec.Name, 1, Pos('.', SearchRec.Name) -1)
                    else
                      Text := Text + #10 + SearchRec.Name;
                  end;
                end
              until (FindNext(SearchRec) <> 0);
              SysUtils.FindClose(SearchRec);
              AddComboElem(Parent, 'File', Y -1, Length(BuffS), Text, [seoNested, seoNoLF]);
            end
            else
              AddStringElem(Parent, 'File', Y -1, Length(BuffS), [seoNested, seoNoLF]);
          end
          { just add item as StringElem }
          else
            AddStringElem(Parent, 'File', Y -1, Length(BuffS), [seoNested, seoNoLF]);
          AddComboElem(Parent, 'Type', Y -1, Length(BuffS), 'Global'#10'Local', [seoIncType, seoStrictVals]);
        end
        // unknown include type
        else begin
          LPos := Length(GetExp(Text, EscChr, Y));
          AddStringElem(Parent, 'File', Y -1, LPos, [seoNoLF, seoNested]);
          AddComboElem(Parent, 'Type', Y -1, LPos, 'Global'#10'Local'#10'Unknown', [seoIncType, seoStrictVals]);
        end;
      end;
    end
    { Pragma >> #pragma TYPE [VALUE] }
    else if (IsAtStart('#pragma', Trim(BuffS), True)) then begin
      CleanEntries;
      Parent := AddCategory('Pragma');
      Delete(BuffS, 1, 7);
      with (GetNextRealChr(BuffS, EscChr, 1)) do begin
        Inc(LPos, 6); // Y will always be >= 1
        Inc(LPos, Y);
        // get pragma type
        Text := GetExp(BuffS, EscChr, Y);
        // see what's here
        if (Text = 'align') then begin
          AddComboElem(Parent, 'Type', LPos, 6, PragmaTypes, [seoNoLF, seoStrictVals]);
          AddROElem(LPos, 6, robTrimNoLF);
        end
        else if (Text = '') then
          NoInfoAvail
        else begin
          AddComboElem(Parent, 'Type', LPos, Length(Text), PragmaTypes, [seoNoLF, seoStrictVals]);
          AddROElem(LPos, Length(Text) +1, robTrimNoLF);
          Delete(Buff, 1, 6 + Y + Length(Text));
          if (Length(Buff) <> 0) then begin
            with (GetNextRealChr(Buff, EscChr, 1)) do
              AddStringElem(Parent, 'Value', LPos + Length(Text) + Y -1, Length(GetExp(Buff, EscChr, 1, True)), [seoNested, seoNoLF]);
          end;
        end;
      end;
    end
    { If-Condition >> #if [CONDITION] }
    else if (IsAtStart('#if', Trim(BuffS), True)) then begin
      CleanEntries;
      Parent := AddCategory('If-Condition');
      with GetNextRealChr(Text, EscChr, Start +3) do begin
        AddROElem(Start, Y - Start -1, robTrimEquals);
        AddStringElem(Parent, 'Condition', Y +1, Length(TrimRight(BuffS)) - Y + start -1, []);
      end;
    end
    else
      NoInfoAvail;
  end
  else begin
    Keyword := GetKeywordAt(Text, Start, False, EscChr);
    // Variables + Constants
    if (Keyword = 'new') or (Keyword = 'decl') or ((Keyword = 'stock') and (StockVarCheck(Text, EscChr, Start))) then begin
      // ro section for "new"
      AddROElem(Start, Length(Keyword), robTrimEquals);
      LPos := Start + Length(Keyword);
      Start := GetNextRealChr(Text, EscChr, LPos +1).Y;
      // create category
      CleanEntries;
      Parent := AddCategory('Variable');
      Temp1 := 0;  // consts
      Temp2 := 0;  // vars
      // add entries
      repeat
        // check if it's a const
        Buff := GetKeywordAt(Text, Start, False, EscChr);
        if (Buff = 'const') then begin
          Inc(Temp1, 1);
          HeadCat := AddCategory('Constant ' + IntToStr(Temp1), Parent);
          LPos := GetNextRealChr(Text, EscChr, Start+6).Y;
          AddROElem(Start, LPos - Start, robTrimEquals);
          Start := LPos;
        end
        else begin
          Inc(Temp2, 1);
          HeadCat := AddCategory('Variable ' + IntToStr(Temp2), Parent);
          AddROElem(LPos, Start - LPos +1, robTrimEquals);
        end;
        // then type
        Buff := GetKeywordAt(Text, Start, False, EscChr);
        if (GetNextRealChr(Text, EscChr, Start+Length(Buff)).X <> Ord(':')) then
          Buff := '';
        case ActiveDoc.HighlighterType of
          htSM: AddComboElem(HeadCat, 'Type', Start -1, Length(Buff), 'AdminId'#10'bool'#10'GroupId'#10'Action'#10'Float'#10'Function'#10'Handle'#10'Plugin'#10'String', [seoNoLF, seoType]);
          else  AddComboElem(HeadCat, 'Type', Start -1, Length(Buff), 'Float'#10'bool', [seoNoLF, seoType]);
        end;
        Inc(Start, Length(Buff));
        if (Buff <> '') then
          Inc(Start, 1);
        // name
        Buff := GetKeywordAt(Text, Start, True, EscChr);
        AddStringElem(HeadCat, 'Name', Start -1, Length(Buff), [seoNoLF]);
        LPos := Start + Length(Buff);
        // value
        Start := LPos;
        with GetNextRealChr(Text, EscChr, LPos) do begin
          if (X = Ord('=')) then begin
            LPos := Y +2; // start from char after =
            with GetNextRealChr(Text, EscChr, LPos) do begin
              AddROElem(Start, Y - Start, robTrimEquals);
              // "nested" value
              AddStringElem(HeadCat, 'Value', Y -1, Length(GetExp(Text, EscChr, Y, True)), []);
            end;
          end;
        end;
        // get next (possible) start and next char
        with GetNextRealChr(Text, EscChr, LPos) do begin
          TmpChr := Chr(X);
          Start := GetNextRealChr(Text, EscChr, Y+2).Y;
        end;
      until (TmpChr <> ',');
      // rename head elems if possible
    end
    // Return Statement
    else if (Keyword = 'return') then begin
      CleanEntries;
      Parent := AddCategory('Return');
      with GetNextRealChr(Text, EscChr, Start +6) do begin
        AddROElem(Start, Y - Start -1, robTrimEquals);
        AddStringElem(Parent, 'Value', Y +1, Length(TrimRight(BuffS)) - Y + start -1, []);
      end;
    end
    // Conditions (if+while)
    else if (Keyword = 'if') or (Keyword = 'do') or (Keyword = 'while') then begin
      // go to 'while'
      i := Start;
      if (Keyword = 'do') then begin
        with GetNextRealChr(Text, EscChr, i +3) do begin
          if (X = Ord('{')) then begin
            i := GetMatchingBrace(Text, EscChr, Y);
            if (i = Length(Text)) then begin
              NoInfoAvail;
              frmMain.jviInspector.EndUpdate;
              exit;
            end;

            with GetNextRealChr(Text, EscChr, i +1) do begin
              if (X = Ord('w')) and (GetKeywordAt(Text, Y, False, EscChr) = 'while') then begin
                i := Y;
                Keyword := 'while';
              end
              else begin
                NoInfoAvail;
                frmMain.jviInspector.EndUpdate;
                exit;
              end;
            end;
          end
          else begin
            NoInfoAvail;
            frmMain.jviInspector.EndUpdate;
            exit;
          end;
        end;
      end;
      Start := i;
      i := i + Length(Keyword) +1;
      // parse condition
      CleanEntries;
      with GetNextRealChr(Text, EscChr, i) do begin
        if (X = Ord('(')) then begin
          i := GetMatchingBrace(Text, EscChr, Y);
          if (i = Length(Text)) then begin
            NoInfoAvail;
            frmMain.jviInspector.EndUpdate;
            exit;
          end;
          // add RO sections
          AddROElem(Start, Length(Keyword), robTrimEquals);                               // if
          AddROElem(Start + Length(Keyword), Y - Start - Length(Keyword), robTrimEquals); // (
          AddROElem(i, 1, robTrimEquals);                                                 // )
          i := i - Y -1;
          // parse everything
          BuffS := RemoveFrom(Copy(Text, Y +1, i), EscChr, True, True, True, True, ' ', False);
          Parent := AddCategory('If-Condition');
          if (Pos('&&', BuffS) + Pos('||', BuffS) = 0) then
            AddStringElem(Parent, 'Condition', Y , i, [])
          else begin
            i := 1;
            repeat
              // get next condition element
              LPos := i;
              Temp1 := PosEx('&&', BuffS, i);
              i := PosEx('||', BuffS, i);
              if ((Temp1 < i) or (i = 0)) and (Temp1 <> 0) then
                i := Temp1;
              // add everything
              if (i <> 0) then begin
                HeadCat := AddCategory('Condition ' + IntToStr(Parent.Count +1), Parent);
                AddStringElem(HeadCat, 'Condition', Y + LPos -1, i - LPos, []);
                if (Parent.Count <> 1) then
                  AddComboElem(HeadCat, 'Connector', Y + LPos -3, 2, '&&'#10'||', []);
              end;
              // increase i by 2
              Inc(i, 2);
            until (i = 2);
            i := Length(BuffS) - LPos +1;
            HeadCat := AddCategory('Condition ' + IntToStr(Parent.Count +1), Parent);
            AddStringElem(HeadCat, 'Condition', Y + LPos -1, i, []);
            AddComboElem(HeadCat, 'Connector', Y + LPos -3, 2, '&&'#10'||', []);
          end;
        end
        else
          NoInfoAvail;
      end;
    end
    else
      NoInfoAvail;
    // Assignment
    {else if (CheckForAssignment(BuffS)) then begin

    end
    // Functions (Declarations+Calls)
    else begin
      if (Keyword = 'forward') or (Keyword = 'native') then begin
        i := GetNextRealChr(Text, EscChr, Start +8).Y;
        AddROElem(Start, i - Start, robTrimEquals);
        Temp1 := Length(GetKeywordAt(Text, i, False, EscChr));

        CleanEntries;
        if (Keyword = 'forward') then
          Parent := AddCategory('Forward')
        else
          Parent := AddCategory('Native');
        AddStringElem(Parent, 'Name', i -1, Temp1, [seoNameElem]);

      end
      else if (Keyword = 'public') or (Keyword = 'stock') then begin

      end
      // Nothing found
      else
        NoInfoAvail;
    end;}
  end;
  frmMain.jviInspector.EndUpdate;
end;

{ TStringElem }

constructor TStringElem.Create(const Start, Length: Integer; const Opts: TSEOptions);
begin
  StartPos := Start;
  Len := Length;
  Options := Opts;
end;

function TStringElem.GetValue: String;
begin
  Result := Trim(Copy(frmMain.sciEditor.Lines.Text, StartPos +1, Len));
  // Include check
  if (seoIncType in Options) and (Result <> '') then begin
    case Result[1] of
      '<': begin
        Result := 'Global';
        if (FSTL.IndexOf('Unknown') <> -1) then
          FSTL.Delete(FSTL.IndexOf('Unknown'));
      end;
      '"': begin
        Result := 'Local';
        if (FSTL.IndexOf('Unknown') <> -1) then
          FSTL.Delete(FSTL.IndexOf('Unknown'));
      end;
      else Result := 'Unknown';
    end;
    exit;
  end;
  // LF check
  if (seoNoLF in Options) and (CountChars(Result, #10) <> 0) then
    frmMain.CI_RecreationNeeded := True;
  // Nested, modify value a little bit
  if (seoNested in Options) and (Result <> '') then begin
    if (Result[1] = '"') then begin
      if (Result[Length(Result)] = '"') then begin
        Result := Copy(Result, 2, Length(Result) -2);
        // RO section for first "
        AddROElem(StartPos, 1, robTrimNoLF);
        Inc(StartPos, 1);
        // then for second "
        AddROElem(StartPos + Len, 1 + (Length(Result) - Length(TrimRight(Result))), robTrimNoLF);
        // and finally set Value and Len to current values
        Result := TrimRight(Result);
        Len := Length(Result);
      end;
    end
    else if (Result[1] = '<') then begin
      if (Result[Length(Result)] = '>') then begin
        Result := Copy(Result, 2, Length(Result) -2);
        AddROElem(StartPos, 1, robTrimNoLF);
        Inc(StartPos, 1);
        AddROElem(StartPos + Len, 1 + (Length(Result) - Length(TrimRight(Result))), robTrimNoLF);
        Result := TrimRight(Result);
        Len := Length(Result);
      end;
    end;
  end;
  // Name Element
  if (seoNameElem in Options) and (ComboIdx <> -1) and (frmMain.cboInspector.Text <> Result) then begin
    frmMain.cboInspector.Items[ComboIdx] := Result;
    frmMain.cboInspector.ItemIndex := ComboIdx;
  end;
  // Set OldVal
  OldVal := Result;
end;


procedure TStringElem.SetValue(const Value: String);
var i, LenOffset, Tmp: integer;
    Val, Text: String;
begin
  // begin update (don't let modified-handler rebuild us now)
  frmMain.AC_IgnoreChar := True;
  frmMain.jviInspector.BeginUpdate;
  if (seoIncType in Options) then begin
    if (OldVal <> Value) then begin
      Text := frmMain.sciEditor.Lines.Text;
      // replace first char
      frmMain.sciEditor.BeginUndoAction;
      frmMain.sciEditor.SetTargetStart(StartPos);
      if (Pos(Text[StartPos], frmMain.sciEditor.WordChars) = 0) then
        frmMain.sciEditor.SetTargetEnd(StartPos +1)
      else
        frmMain.sciEditor.SetTargetEnd(StartPos);
      frmMain.sciEditor.ReplaceTarget(-1, PChar(String(TN(Value = 'Global', '<', '"'))));
      // replace last char
      frmMain.sciEditor.SetTargetStart(StartPos + Len -1);
      if (Pos(Text[StartPos], frmMain.sciEditor.WordChars) = 0) then
        frmMain.sciEditor.SetTargetEnd(StartPos + Len)
      else
        frmMain.sciEditor.SetTargetEnd(StartPos + Len -1);
      frmMain.sciEditor.ReplaceTarget(-1, PChar(String(TN(Value = 'Global', '>', '"'))));
      // end
      frmMain.sciEditor.EndUndoAction;
    end;
  end
  else begin
    // if this is a variable type, check special case
    if (seoType in Options) then begin
      frmMain.sciEditor.SetTargetStart(StartPos);
      if (Trim(Value) = '') then begin
        Val := '';
        LenOffset := -len -1; // for :
        frmMain.sciEditor.SetTargetEnd(StartPos + len +1);
        frmMain.sciEditor.ReplaceTarget(-1, PChar(''));
      end
      else if (Len = 0) then begin
        Val := Value + ':';
        LenOffset := Length(Val);
        frmMain.sciEditor.SetTargetEnd(StartPos + Len);
        frmMain.sciEditor.ReplaceTarget(-1, PChar(Val));
      end
      else begin
        Val := Value;
        LenOffset := (Length(Val) - Len);
        frmMain.sciEditor.SetTargetEnd(StartPos + Len);
        frmMain.sciEditor.ReplaceTarget(-1, PChar(Value));
      end;
      Len := Length(Value);
    end
    else begin
      Val := Value;
      LenOffset := (Length(Val) - Length(OldVal));
      if (len <> 0) then begin
        with GetNextRealChr(frmMain.sciEditor.Lines.Text, GetEscapeChr(ActiveDoc.HighlighterType), StartPos +1, False, False, False) do begin
          frmMain.sciEditor.SetTargetStart(Y -1);
          frmMain.sciEditor.SetTargetEnd(Y + Length(Trim(OldVal)) -1);
          Len := Length(Value) + Len - Length(Trim(OldVal));
        end;
      end
      else begin
        frmMain.sciEditor.SetTargetEnd(StartPos + len);
        frmMain.sciEditor.SetTargetStart(StartPos);
        Len := Length(Value);
      end;
      frmMain.sciEditor.ReplaceTarget(-1, PChar(Value));
    end;
    // update start positions
    for i := 0 to StringElems.Count -1 do begin
      Tmp := TStringElem(StringElems[i]).StartPos;
      if (Tmp >= StartPos) and (TStringElem(StringElems[i]) <> Self) then
        TStringElem(StringElems[i]).StartPos := Tmp + LenOffset;
    end;
    for i := 0 to ROElems.Count -1 do begin
      Tmp := TROElem(ROElems[i]).StartPos;
      if (Tmp >= StartPos) then
        TROElem(ROElems[i]).StartPos := Tmp + LenOffset;
    end;
  end;
  // oh, we're done here
  frmMain.AC_IgnoreChar := False;
  frmMain.jviInspector.EndUpdate;
end;

{ TROElem }

constructor TROElem.Create(const Start, Length: Integer; const ROBehavior: TROBehavior);
begin
  StartPos := Start;
  Len := Length;
  case ROBehavior of
    robEquals: TextBuff := Copy(frmMain.sciEditor.Lines.Text, Start, Length);
    robTrimEquals, robTrimNoLF: TextBuff := Trim(Copy(frmMain.sciEditor.Lines.Text, Start, Length));
  end;
  TextBuff := Copy(frmMain.sciEditor.Lines.Text, Start, Length);
end;

function TROElem.SectionModified(const Start, Length: Integer; const TextMod: PChar): Boolean;
var Buff: String;
begin
  Result := False;
  if (CountChars(TextMod, #10) <> 0) then begin
    Inc(Len, Start - StartPos + Length);
    case Behavior of
      robEquals: Result := (Copy(frmMain.sciEditor.Lines.Text, StartPos, Len) = TextBuff);
      robTrimEquals: Result := (Trim(Copy(frmMain.sciEditor.Lines.Text, StartPos, Len)) = TextBuff);
      robTrimNoLF: begin
        Buff := Trim(Copy(frmMain.sciEditor.Lines.Text, StartPos, Len));
        Result := (CountChars(Buff, #10) = 0) and (Buff = TextBuff);
      end;
    end;
  end;
end;

{ TSelectionTextList } 

constructor TSelectionTextList.Create(const StringElem: TStringElem);
begin
  inherited Create;
  FStringElem := StringElem;
end;

function TSelectionTextList.GetSelected: Integer;
begin 
  if FSelected < -1 then 
    FSelected := -1 
  else if FSelected >= Count then 
    FSelected := Count - 1; 
  Result := FSelected; 
end; 

function TSelectionTextList.GetSelectedText: String; 
begin 
  if Selected >= 0 then 
    Result := Strings[Selected] 
  else 
    Result := '';
end; 

procedure TSelectionTextList.SetSelected(const Value: Integer); 
begin 
  FSelected := Value; 
  GetSelected; // adjust FSelected 
end; 

procedure TSelectionTextList.SetSelectedText(const Value: String); 
begin 
  FSelected := IndexOf(Value); 
end; 

{ TJvInspectorSelectionTextListItem } 

function TJvInspectorSelectionTextListItem.GetDisplayValue: String; 
begin
  with TSelectionTextList(Data.AsOrdinal) do begin
    Result := FStringElem.StringVal;
    SelectedText := Result;
  end;
end;

procedure TJvInspectorSelectionTextListItem.GetValueList(const Strings: TStrings); 
begin 
  Strings.Assign(TSelectionTextList(Data.AsOrdinal));
end; 

procedure TJvInspectorSelectionTextListItem.SetDisplayValue(const Value: string);
begin
  TSelectionTextList(Data.AsOrdinal).SelectedText := Value;
  TSelectionTextList(Data.AsOrdinal).FStringElem.StringVal := Value;
end;

procedure TJvInspectorSelectionTextListItem.SetFlags(const Value: TInspectorItemFlags); 
begin
  inherited SetFlags(Value + [iifValueList]);
end;

initialization

ROElems := TObjectList.Create;
StringElems := TObjectList.Create;
STLList := TObjectList.Create;

finalization

ROElems.Free;
StringElems.Free;
STLList.Free;

end.
