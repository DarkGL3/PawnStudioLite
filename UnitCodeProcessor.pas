unit UnitCodeProcessor;

interface

uses SysUtils, Classes, Windows, ComCtrls, UnitConfigManager, StrUtils;

type
  TCommentInfo = set of (ciIsDoxygen, ciIsDeprecated, ciParamInfo, ciReturnsValue,
                         ciReturnInfo, ciDeprecatedInfo, ciErrorInfo);

  TComment = class(TObject)
    private
      FText: String;
      FCaption: String;
      FDescription: String;
      FParams: TStringList;
      FReturnInfo: String;
      FErrorInfo: String;
      FDeprecatedInfo: String;
      FInfo: TCommentInfo;
    published
      property Text: String read FText write FText;
      property Caption: String read FCaption write FCaption;
      property Description: String read FDescription write FDescription;
      property Params: TStringList read FParams write FParams;
      property ReturnInfo: String read FReturnInfo write FReturnInfo;
      property ErrorInfo: String read FErrorInfo write FErrorInfo;
      property DeprecatedInfo: String read FDeprecatedInfo write FDeprecatedInfo;
      property Info: TCommentInfo read FInfo write FInfo;
    public
      constructor Create; overload;
      destructor Destroy; override;
  end;

  TCodeElement = class(TCollectionItem)
    private
      FLine: Integer;
      FDocPos: Integer;
      FTag: String;
      FElement: String;
      FValue: String;
      FCaption: String;
      FComment: TComment;
    published
      property Line: Integer read FLine write FLine;
      property DocPos: Integer read FDocPos write FDocPos;
      property Tag: String read FTag write FTag;
      property Element: String read FElement write FElement;
      property Value: String read FValue write FValue;
      property Caption: String read FCaption write FCaption;
      property Comment: TComment read FComment write FComment;
    public
      Node: TTreeNode;
      constructor Create(ACollection: TCollection); override;
      destructor Destroy; override;
  end;

  TFunction = class(TCollectionItem)
    private
      FParamCount: Integer;
      FLine: Integer;
      FDocPos: Integer;
      FFuncEnd: Integer;
      FTag: String;
      FName: String;
      FCaption: String;
      FParameters: String;
      FValue: String;
      FComment: TComment;
    published
      property Line: Integer read FLine write FLine;
      property DocPos: Integer read FDocPos write FDocPos;
      property FuncEnd: Integer read FFuncEnd write FFuncEnd;
      property Tag: String read FTag write FTag;
      property Name: String read FName write FName;
      property Caption: String read FCaption write FCaption;
      property Parameters: String read FParameters write FParameters;
      property Value: String read FValue write FValue; // used for macros only
      property ParamCount: Integer read FParamCount write FParamCount;
      property Comment: TComment read FComment write FComment;
    public
      Node: TTreeNode;
      constructor Create(ACollection: TCollection); override;
      destructor Destroy; override;
  end;

  TIncType = (itUnknown, itLocal, itGlobal); // in file's dir or in includes dir (see '""' and '<>')
  TInclude = class(TCollectionItem)
    private
      FDocPos: Integer;
      FLine: Integer;
      FCaption: String;
      FFileName: String;
      FIncludeType: TIncType;
      FComment: TComment;
      FIsCircularLink: Boolean;
    published
      property Line: Integer read FLine write FLine;
      property DocPos: Integer read FDocPos write FDocPos;
      property FileName: String read FFileName write FFileName;
      property Caption: String read FCaption write FCaption;
      property IncludeType: TIncType read FIncludeType write FIncludeType;
      property Comment: TComment read FComment write FComment;
      property IsCircularLink: Boolean read FIsCircularLink write FIsCircularLink;
    public
      Node: TTreeNode;
      FileInfo: TObject;
      constructor Create(ACollection: TCollection); override;
      destructor Destroy; override;
  end;

  TEnum = class(TCollectionItem)
    private
      FFuncEnd: Integer;
      FLine: Integer;
      FDocPos: Integer;
      FName: String;
      FComment: String;
      FEntries: TStringList;
      FComments: TStringList;
    published
      property Line: Integer read FLine write FLine;
      property DocPos: Integer read FDocPos write FDocPos;
      property PosEnd: Integer read FFuncEnd write FFuncEnd;
      property Name: String read FName write FName;
      property Comment: String read FComment write FComment;
      property Entries: TStringList read FEntries write FEntries;
      property Comments: TStringList read FComments write FComments;
    public
      constructor Create(ACollection: TCollection); override;
      destructor Destroy; override;
  end;

  TCodeResult = class(TComponent)
    private
      FConsts: TOwnedCollection;
      FPublicConst: TOwnedCollection;
      FStockConst: TOwnedCollection;
      FStaticConst: TOwnedCollection;
      FPrivFuncs: TOwnedCollection;
      FPubFuncs: TOwnedCollection;
      FNatives: TOwnedCollection;
      FGlobalVars: TOwnedCollection;
      FPublicVars: TOwnedCollection;
      FIncludes: TOwnedCollection;
      FDefinitions: TOwnedCollection;
      FMacros: TOwnedCollection;
      FForwards: TOwnedCollection;
      FStockFuncs: TOwnedCollection;
      FStockVars: TOwnedCollection;
      FStaticVars: TOwnedCollection;
      FEnums: TOwnedCollection;
      FFuncEnums: TOwnedCollection;

      FDocComment: String;
      FFileName: String;
      FExtraPubs: String;
    published
      property Consts: TOwnedCollection read FConsts;
      property PublicConst: TOwnedCollection read FPublicConst;
      property StaticConst: TOwnedCollection read FStaticConst;
      property StockConst: TOwnedCollection read FStockConst;
      property Definitions: TOwnedCollection read FDefinitions;
      property Macros: TOwnedCollection read FMacros;
      property Forwards: TOwnedCollection read FForwards;
      property PrivFuncs: TOwnedCollection read FPrivFuncs;
      property PubFuncs: TOwnedCollection read FPubFuncs;
      property Includes: TOwnedCollection read FIncludes;
      property Natives: TOwnedCollection read FNatives;
      property GlobalVars: TOwnedCollection read FGlobalVars;
      property PublicVars: TOwnedCollection read FPublicVars;
      property StockFuncs: TOwnedCollection read FStockFuncs;
      property StockVars: TOwnedCollection read FStockVars;
      property StaticVars: TOwnedCollection read FStaticVars;
      property Enums: TOwnedCollection read FEnums;
      property FuncEnums: TOwnedCollection read FFuncEnums;

      property DocComment: String read FDocComment write FDocComment;
      property FileName: String read FFileName write FFileName;
      property ExtraPubs: String read FExtraPubs write FExtraPubs;
    public
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;
  end;

function ParseCode(const Code, IncludeDir, ScriptFile: String; const Highlighter: THighlighterType): TCodeResult;

function GetKeywordAt(const Text: String; Position: Integer; const FullExpression: Boolean; const EscChr: Char; const IgnoreNormalBraces: Boolean = True): String;
function PossibleOLSKeyword(const Keyword: String): Boolean;
function FullOLSCheck(const Text: String; Start: Integer; const CompleteCheck: Boolean): Boolean;
function RemoveFrom(const Code: String; const EscChr: Char; const Comments, LineComments, Strings, Chars: Boolean; const ReplaceWith: String = ''; const ReplaceOnce: Boolean = True): String;
function RemoveConditionBreaks(const Buff: String): String;
function RemoveBraces(const Code: String; const Braces, CurlingBraces: Boolean): String;
//function GetFirstWord(const StrIn: String): String;
function GetOLSEnd(const Text: String; const StartPos, StopPos: Integer; const EscChr: Char; const CheckKeyword: Boolean): Integer;
function GetFirstChar(const StrIn: String; const Start: Integer = 1): Char;
function GetLastChar(const StrIn: String; const Start: Integer = 1): Char;
function GetMatchingBrace(const Text, EscapeChr: String; const Pos: Integer; const OpenBrace: Char = #0; const BreakOnLF: Boolean = False): Integer;
function FastOLSCheck(const StrIn: String): Boolean;
function MakeIdentifier(const StrIn: String): String;
function CountLines(StrIn: String): Integer;
// MakeLines not needed; only relevant in mac os [x] files but that os sucks anyway
function CountChars(const StrIn: String; const CharIn: Char): Integer;
function CountCharsRange(const StrIn: String; const Char: Char; const Start, Stop: Integer): Integer;
function GetFirstLine(const StrIn: String): String;
function CodeFind(const SubStr, Str: String; const EscapeChr: Char; const Start: Integer = -1): Integer;
function CodeFindReverse(const SubStr, Str: String; const EscapeChr: Char; const Start: Integer = -1): Integer;
function PosNextChr(const SubChr: Char; const Str: String; const Start: Integer; const CountOnly: Boolean): Integer;
function IsAtPos(const SubStr, Str: String; const Pos: Integer; const AllowBrace: Boolean): Boolean;
function IsAtStart(SubStr, Str: String; const WSCheck: Boolean = False): Boolean;
function GetNextRealChr(const StrIn: String; const EscChr: Char; const StartPos: Integer; const IgnoreStrings: Boolean = False; const IgnoreComments: Boolean = True; const IgnoreStates: Boolean = True): TPoint; // X = Char, Y = Pos
function GetLineAt(const Code: String; const Pos: Integer): String;
function RemoveWhitespaces(const StrIn: String): String;
function IndentCode(const StrIn: String; const EscChr: Char; const IndentStr: String): String;
function UnindentCode(const StrIn: String): String;
function GetExp(const Code: String; const EscChr: Char; const Start: Integer; const FullExp: Boolean = False): String;
function RemSem(const StrIn: String): String;

var FileList: TList;


implementation

uses UnitfrmMain, UnitFunctions, UnitCSResultSaver;

function ParseCode(const Code, IncludeDir, ScriptFile: String; const Highlighter: THighlighterType): TCodeResult;
function CheckForLineBreak(const Buff: String; const StartPos: Integer): Boolean;
var i: integer;
    Chr: String;
begin
  Result := True;
  for i := StartPos to Length(Buff) do begin
    Chr := Copy(Buff, i, 1);
    if (Chr = #10) then
      break
    else if (Chr <> #32) and (Chr <> #9) and (Chr <> #13) then begin
      Result := False;
      break;
    end;
  end;
end;

function CheckFunc(const PairIn, Cmp1, Cmp2: String; const Code: String; const Pos: Integer; var Buff: String): Boolean;
begin
  if (PairIn = Copy(Cmp1, 1, 2)) and (TrimRight(Copy(Code, Pos, Length(Cmp1)+1)) = Cmp1) then begin
    Buff := Cmp1;
    Result := True;
  end
  else if (PairIn = Copy(Cmp2, 1, 2)) and (TrimRight(Copy(Code, Pos, Length(Cmp2)+1)) = Cmp2) then begin
    Buff := Cmp2;
    Result := True;
  end
  else
    Result := False;
end;

procedure HandleVariable(const Code: String; var PrevComment: String; const EscChr: Char; var Pos, CurrLine: Integer; Vars, Consts: TCollection);
var BTmp: Boolean;
    StartPos, ITmp, len: Integer;
    sTag, sElement, sValue: String;
    ChrPair: array[0..1] of Char;
    Buff: String;
    Chr: Char;
    VarObj: TObject;
begin
  len := Length(Code);
  StartPos := Pos;
  repeat
    // check if there's const before the expression
    BTmp := (TrimRight(Copy(Code, Pos, 6)) = 'const');
    if (BTmp) then begin
      Inc(Pos, 6); // +1 whitechar
      Pos := GetNextRealChr(Code, EscChr, Pos).Y;
    end;
    Inc(CurrLine, CountCharsRange(Code, #10, StartPos, Pos));
    // get variable [or tag]
    sElement := GetKeywordAt(Code, Pos, True, EscChr);
    StartPos := Pos;
    Pos := GetNextRealChr(Code, EscChr, Pos+Length(sElement)).Y;
    // get tag
    if (Code[Pos] = ':') then begin
      sTag := sElement;
      sElement := GetKeywordAt(Code, Pos, True, EscChr);
      Pos := GetNextRealChr(Code, EscChr, Pos+Length(sElement)+1).Y;
    end
    else
      sTag := '';
    // const -> get value
    if (Code[Pos] = '=') then begin
      Pos := GetNextRealChr(Code, EscChr, Pos+1).Y;
      Chr := Code[Pos];
      if (Chr = '"') then begin
        BTmp := False;
        Inc(Pos, 1);
        sValue := '"';
        repeat
          ChrPair[0] := Code[Pos];
          ChrPair[1] := Code[Pos+1];
          sValue := sValue + ChrPair[0];
          if (ChrPair[0] = EscChr) then begin
            Inc(Pos, 1);
            sValue := sValue + '"';
          end
          else if (ChrPair[0] = '"') then
            break
          else if (ChrPair[0] = '\') then begin
            BTmp := True;
            sValue := sValue + '\';
          end
          else if (BTmp) and (Trim(ChrPair[0]) <> '') then
            BTmp := False
          else if (not BTmp) and (ChrPair[0] = #10) then
            break;
          Inc(Pos, 1);
        until (Pos > len);
        Inc(Pos, 1);
        sValue := Trim(sValue);
      end
      else if (Chr = '''') then begin
        Inc(Pos, 1);
        sValue := '''';
        repeat
          ChrPair[0] := Code[Pos];
          ChrPair[1] := Code[Pos+1];
          sValue := sValue + ChrPair[0];
          if (ChrPair[0] = EscChr) then begin
            Inc(Pos, 1);
            sValue := sValue + '''';
          end
          else if (ChrPair[0] = '''') or (ChrPair[0] = #10) then
            break;
          Inc(Pos, 1);
        until (Pos > len);
        Inc(Pos, 1);
        sValue := Trim(sValue);
      end
      else if (Chr = '{') then begin
        ITmp := Pos;
        Pos := GetMatchingBrace(Code, EscChr, Pos) +1;
        sValue := Copy(Code, ITmp, Pos - ITmp);
      end
      else begin
        sValue := GetKeywordAt(Code, Pos, True, EscChr);
        Inc(Pos, Length(sValue));
      end;
      BTmp := True;
    end
    else
      sValue := '';
    // add to list
    if (BTmp) then
      VarObj := Consts.Add
    else
      VarObj := Vars.Add;
    // set values
    with TCodeElement(VarObj) do begin
      sElement := RemoveWhitespaces(sElement);
      if (System.Pos('[', sElement) = 0) then
        Caption := sElement
      else
        Caption := Copy(sElement, 1, System.Pos('[', sElement)-1);
      DocPos := StartPos;
      Element := sElement;
      Line := CurrLine;
      Tag := sTag;
      Value := sValue;
      // comments?
      Buff := GetLineAt(Code, Pos);
      if (System.Pos('//', Buff) <> 0) then begin
        Buff := Trim(RemoveFrom(Buff, EscChr, True, False, True, True));
        PrepareComment(Trim(Copy(Buff, System.Pos('//', Buff)+2, Length(Buff))), Comment);
      end
      else
        PrepareComment(PrevComment, Comment);
      PrevComment := '';
    end;
    Inc(CurrLine, CountCharsRange(Code, #10, StartPos, Pos-1));
    StartPos := Pos;
    // check if there are any other variables
    with GetNextRealChr(Code, EscChr, Pos) do begin
      BTmp := (X = Ord(','));
      if (BTmp) then
        Pos := GetNextRealChr(Code, EscChr, Y+1).Y;
    end;
  until (not BTmp) or (Pos = len);
end;

var InComment, InLineComment, InString, InChr, InState: Boolean;
    DontCountLine, InFunc, BTmp, IsOperator: Boolean;
    i, k, len, CurrLine: integer;
    Tmp1, Tmp2, Tmp3, Tmp4: Integer;
    LineBuff, Buff, Buff2: String;
    ChrPair: array[0..1] of Char; 
    Chr, PrevChr, EscChr: Char;
    FuncName: String;
    Res: Byte;

    WaitForBrace: Boolean;
    CommentStart, FuncStart, FuncLine: Integer;
    PrevComment: String;
    sTag, sElement, sValue, STmp, STmp2: String;
    VarObj: TObject;
    Cache: THighlighterCache;
begin
  Cache := GetHighlighterCache(Highlighter);
  Result := TCodeResult.Create(Cache);
  Result.FileName := ScriptFile;
  EscChr := GetEscapeChr(Highlighter);
  // set vars
  InComment := False;
  InLineComment := False;
  InString := False;
  InChr := False;
  InState := False;
  DontCountLine := False;
  CurrLine := 0;
  LineBuff := Copy(Code, 1, Pos(#10, Code));
  FuncName := '';
  len := Length(Code)-1;
  CommentStart := 1;
  FuncStart := -1;
  FuncLine := 0;
  PrevChr := #0;
  if (len < 2) then exit;
  // forwards
  i := 1;
  repeat
    ChrPair[0] := Code[i];
    ChrPair[1] := Code[i+1];
    // get next line
    if (ChrPair[0] = #10) then begin
      Inc(CurrLine, 1);
      LineBuff := Copy(Code, i+1, PosNextChr(#10, Code, i+1, True) -1);

      InString := (InString) and (PrevChr = '\');
      InChr := (InChr) and (PrevChr = '\');
      PrevChr := #0;

      FuncName := '';
      FuncStart := -1;
    end
    else if (ChrPair[0] <> #9) and (ChrPair[0] <> #13) and (ChrPair[0] <> #32) then
      PrevChr := ChrPair[0];
    // then parse
    if (InLineComment) or (DontCountLine) then begin
      if (ChrPair[0] = #10) then begin
        if (InLineComment) then
          InLineComment := False;
        Inc(i, 1);
        if (DontCountLine) then begin
          DontCountLine := False;
          continue;
        end;
      end;
    end
    else begin
      if (InString) then begin
        if (ChrPair[0] = EscChr) then begin
          Inc(i, 2);
          continue;
        end
        else if (ChrPair[0] = '"') then begin
          InString := False;
          Inc(i, 1);
          continue;
        end;
      end
      else if (InChr) then begin
        if (ChrPair[0] = EscChr) then begin
          Inc(i, 2);
          continue;
        end
        else if (ChrPair = '''''') then begin
          Inc(i, 2);
          continue;
        end
        else if (ChrPair[0] = '''') then begin
          InChr := False;
          Inc(i, 1);
          continue;
        end;
      end
      else if (InState) then begin
        if (ChrPair[0] = '>') then
          InState := False;
      end
      else if (not InComment) and (ChrPair[0] = '"') then
        InString := True
      else if (not InComment) and (ChrPair[0] = '''') then
        InChr := True
      else if (not InComment) and (ChrPair[0] = '<') then
        InState := True
      else if (not InComment) and (ChrPair[0] = '>') then
        InState := False
      else if (ChrPair = '/*') then begin
        InComment := True;
        CommentStart := i;
        Inc(i, 2);
        continue;
      end
      else if (ChrPair = '*/') then begin
        Inc(i, 2);
        InComment := False;
        if (CommentStart = 1) then
          Result.DocComment := Copy(Code, CommentStart, i - CommentStart)
        else
          PrevComment := Copy(Code, CommentStart, i - CommentStart);
        DontCountLine := (CheckForLineBreak(Code, i));
        continue;
      end
      else if (not InComment) and (ChrPair = '//') then begin
        STmp := Copy(Code, i, PosNextChr(#10, Code, i, True));
        Inc(i, Length(TrimRight(STmp)));
        PrevComment := Trim(PrevComment + #10 + STmp);
        continue;
      end
      else if (not InComment) and (not InLineComment) then begin
        // -- parsing starts here --
        { compiler instructions go here }
        if (ChrPair[0] = '#') then begin
          Buff2 := Copy(Code, i, PosNextChr(#10, Code, i, True)-1);
          Buff := Trim(Buff2);
          if (IsAtStart('#define', Buff)) then begin
            Delete(Buff, 1, 8);
            sElement := Trim(RemoveFrom(Buff, EscChr, True, True, True, False));
            if (Pos('(', sElement) <> Pos(')', sElement)) and (Pos('%', sElement) > Pos('(', sElement)) then begin // macro
              with TFunction(Result.Macros.Add) do begin
                DocPos := i;
                FuncEnd := PosNextChr(#10, Code, i, False) -1;
                Line := CurrLine;
                // get definition+value
                BTmp := False;
                for k := 1 to Length(sElement) do begin
                  Chr := sElement[k];
                  if (Chr = #9) or (Chr = #10) or (Chr = #32) then begin
                    if (BTmp) then
                      break;
                    BTmp := True;
                  end;
                  if (BTmp) then
                    Value := Value + Chr
                  else
                    Name := Name + Chr;
                end;
                // set caption
                if (Pos('(', Name) > 1) then begin
                  Name := Copy(Name, 1, Pos('(', Name) -1);
                  Caption := Name;
                  Parameters := Trim(Copy(sElement, Length(Name), Length(sElement)));
                end
                else begin
                  Caption := Name;
                  Parameters := '';   
                end;
                // set paramcount
                sElement := '';
                sValue := RemoveFrom(Parameters, EscChr, True, False, True, True);
                BTmp := True;
                for k := 1 to Length(sValue) do begin
                  Chr := sValue[k];
                  if (Chr = '{') then
                    BTmp := False
                  else if (Chr = '}') then
                    BTmp := True
                  else if (BTmp) then
                    sElement := sElement + Chr;
                end;
                ParamCount := CountChars(sElement, ',');
                // check if there's a comment
                Buff := Trim(RemoveFrom(Buff2, EscChr, False, False, True, True));
                if (Pos('//', Buff) <> 0) then
                  PrepareComment(Trim(Copy(Buff, Pos('//', Buff)+2, Length(Buff))), Comment)
                else if (Pos('/*', Buff) <> 0) and (Pos('*/', Buff) <> 0) then
                  PrepareComment('/*' + Between(Buff, '/*', '*/') + '*/', Comment)
                else
                  PrepareComment(PrevComment, Comment);
                PrevComment := '';
              end;
            end
            else begin // definition
              with TCodeElement(Result.Definitions.Add) do begin
                DocPos := i;
                Line := CurrLine;
                Caption := sElement;
                Element := '';
                BTmp := False;
                // get definition+value
                for k := 1 to Length(sElement) do begin
                  Chr := sElement[k];
                  if (Chr = #9) or (Chr = #10) or (Chr = #32) then begin
                    if (BTmp) then
                      break;
                    BTmp := True;
                  end;
                  if (BTmp) then
                    Value := Value + Chr
                  else
                    Element := Element + Chr;
                end;
                // set caption
                Caption := Element;
                // check if there's a comment
                Buff := Trim(RemoveFrom(Buff2, EscChr, False, False, True, True));
                if (Pos('//', Buff) <> 0) then
                  PrepareComment(Trim(Copy(Buff, Pos('//', Buff)+2, Length(Buff))), Comment)
                else if (Pos('/*', Buff) <> 0) and (Pos('*/', Buff) <> 0) then
                  PrepareComment('/*' + Between(Buff, '/*', '*/') + '*/', Comment)
                else
                  PrepareComment(PrevComment, Comment);
                PrevComment := '';
              end;
            end;
          end
          else if (IsAtStart('#include', Buff)) or (IsAtStart('#tryinclude', Buff)) then begin
            if (IsAtStart('#include', Buff)) then
              Delete(Buff, 1, 9)
            else
              Delete(Buff, 1, 12);
            with TInclude(Result.Includes.Add) do begin
              DocPos := i;
              Line := CurrLine;
              Caption := Trim(RemoveFrom(Buff, EscChr, True, True, False, False));
              // get file type and set path
              if (Pos('<', Caption) <> 0) and (Pos('>', Caption) <> 0) and (Pos('<', Caption) < Pos('>', Caption)) then begin
                FileName := IncludeDir + Between(Caption, '<', '>');
                IncludeType := itGlobal;
              end
              else if (CountChars(Caption, '"') >= 2) then begin
                FileName := ExtractFilePath(ScriptFile) + Between(Caption, '"', '"');
                IncludeType := itLocal;
              end
              else begin
                if (Copy(Caption, 1, 1) = '<') then begin
                  FileName := Copy(Caption, 2, Length(Caption) -1);
                  IncludeType := itGlobal;
                end
                else if (Copy(Caption, 1, 1) = '"') then begin
                  FileName := Copy(Caption, 2, Length(Caption) -1);
                  IncludeType := itLocal;
                end
                else begin
                  FileName := Caption;
                  IncludeType := itUnknown;
                end;
              end;
              // set caption
              Caption := ExtractFileName(FileName);
              // replace slashes with backslashes .com
              FileName := StringReplace(FileName, '/', '\', [rfReplaceAll]);
              // check for extension
              if (ExtractFileExt(FileName) = '') then
                FileName := FileName + '.inc';
              // comments?
              Buff := Trim(RemoveFrom(Buff2, EscChr, False, False, True, True));
              if (Pos('//', Buff) <> 0) then
                PrepareComment(Trim(Copy(Buff, Pos('//', Buff)+2, Length(Buff))), Comment)
              else if (Pos('/*', Buff) <> 0) and (Pos('*/', Buff) <> 0) then
                PrepareComment('/*' + Between(Buff, '/*', '*/') + '*/', Comment)
              else
                PrepareComment(PrevComment, Comment);
              PrevComment := '';
              // find include object
              if (FileExists(FileName)) then
                FileInfo := FindFileItem(FileName, Cache);
            end;
          end
          else if (IsAtStart('#pragma', Buff)) then begin
            Delete(Buff, 1, 8);
            Buff := TrimLeft(Buff);
            if (IsAtStart('ctrlchar', Buff)) then begin
              Delete(Buff, 1, 9);
              Buff := Trim(RemoveFrom(Buff, EscChr, True, True, False, False));
              if (Length(Buff) > 0) then begin
                // real char
                if (Buff[1] = '''') and (Length(Buff) > 1) then
                  Chr := Buff[2]
                else if (Buff[1] = '0') and (Buff[2] = 'x') then
                  Chr := System.Chr(StrToIntDef('$' + Copy(Buff, 3, 3), Ord(EscChr)))
                else
                  Chr := System.Chr(StrToIntDef(Buff, Ord(EscChr)));
                EscChr := Chr;
              end;
            end;
          end;
          PrevComment := '';
          // jump to next doc comment if there's one, urgh
          Buff2 := RemoveFrom(Buff2, EscChr, False, True, True, True, 'x', False);
          Tmp1 := Length(TrimRight(RemoveFrom(Buff2, EscChr, True, False, False, False, ' ', False)));
          if (Tmp1 <> 0) then
            Inc(i, Tmp1);
        end
        { everything else }
        else begin
          // Publics+Stocks ("()" will determinate if it's a var or a func
          if (CheckFunc(ChrPair, 'public', 'stock', Code, i, Buff2)) then begin
            Tmp1 := i;
            i := GetNextRealChr(Code, EscChr, i + Length(Buff2)).Y;
            // get tag
            Inc(CurrLine, CountCharsRange(Code, #10, Tmp1, i));
            Tmp2 := CurrLine;
            sElement := GetKeywordAt(Code, i, True, EscChr);
            i := GetNextRealChr(Code, EscChr, i + Length(sElement)).Y;
            // then expression and jump after it if there's a tag
            // so we always know if a function or a variable follows
            if (Code[i] = ':') then begin
              sTag := sElement;
              i := GetNextRealChr(Code, EscChr, i +1).Y;
              sElement := GetKeywordAt(Code, i, True, EscChr);
              i := GetNextRealChr(Code, EscChr, i + Length(sElement)).Y;
              
              Inc(CurrLine, CountCharsRange(Code, #10, Tmp1, i));
              Tmp2 := CurrLine;
            end
            else
              sTag := '';
            // check what type of public/stock we have
            sValue := Copy(Code, Tmp1, i - Tmp1 +2);
            IsOperator := (Code[i] <> '(') and (sElement = 'operator');
            if (IsOperator) then begin
              // operators are not parsed here
              repeat
                Inc(i, 1);
              until (i >= len) or (Code[i] = '(');
            end;
            // function [operator]:
            if (Code[i] = '(') or (IsOperator) then begin
              if (IsOperator) then
                VarObj := nil
              else begin
                if (Buff2 = 'stock') then
                  VarObj := Result.StockFuncs.Add
                else
                  VarObj := Result.PubFuncs.Add;
              end;
              Inc(CurrLine, CountCharsRange(Code, #10, Tmp1, i));
              Tmp3 := GetMatchingBrace(Code, EscChr, i);
              sValue := Copy(Code, i, Tmp3 - i +1);
              if (Tmp3 <> len) then
                i := Tmp3;
              // STATES?!
              with GetNextRealChr(Code, EscChr, i+1) do begin
                if (X = Ord('<')) then begin
                  Tmp3 := GetMatchingBrace(Code, EscChr, Y);
                  if (Tmp3 <> len) then
                    i := Tmp3;
                end;
              end;
              // get to end of function
              with GetNextRealChr(Code, EscChr, i+1) do begin
                if (X = Ord('{')) then begin
                  Tmp3 := GetMatchingBrace(Code, EscChr, Y);
                  if (Tmp3 = len) then
                    break;
                  i := Tmp3;
                end
                else if (Y > i)then begin
                  i := Y;
                  // skip return if there's one
                  STmp := GetKeywordAt(Code, i, False, #0);
                  Tmp3 := i;
                  if (STmp = 'return') then begin
                    i := GetNextRealChr(Code, EscChr, i +6).Y;
                    STmp := GetKeywordAt(Code, i, False, #0);
                  end;
                  // skip command
                  with GetNextRealChr(Code, EscChr, i + Length(STmp)) do begin
                    if (X = Ord('(')) then begin
                      Tmp3 := GetMatchingBrace(Code, EscChr, Y); // and parameters
                      if (Tmp3 <> len) then
                        i := Tmp3;
                    end
                    else if (i = Tmp3) then
                      i := Y -1
                    else begin
                      Tmp3 := PosNextChr(#10, Code, Tmp3, False);
                      if (Tmp3 <> -1) then
                        i := Tmp3;
                    end;
                  end;
                end;
              end;
              // add function
              if (not IsOperator) then begin
                with TFunction(VarObj) do begin
                  sElement := RemoveWhitespaces(sElement);
                  Caption := sElement;
                  DocPos := Tmp1;
                  FuncEnd := i;
                  Line := Tmp2;
                  Tag := sTag;
                  Name := sElement;
                  Parameters := sValue;
                  // count parameters
                  BTmp := False;
                  sValue := Trim(RemoveFrom(sValue, EscChr, True, True, True, True));
                  if (sValue = '') then
                    ParamCount := 0
                  else
                    ParamCount := 1;
                  for k := 1 to Length(sValue) do begin
                    Chr := sValue[k];
                    if (BTmp) then begin
                      if (Chr = '}') then
                        BTmp := False;
                    end
                    else begin
                      if (Chr = '{') then
                        BTmp := True
                      else if (Chr = ',') then
                        ParamCount := ParamCount + 1;
                    end;
                  end;
                  // comments
                  Buff := Trim(RemoveFrom(LineBuff, EscChr, False, False, True, True));
                  if (Pos('//', Buff) <> 0) then
                    PrepareComment(Trim(Copy(Buff, Pos('//', Buff)+2, Length(Buff))), Comment)
                  else if (Pos('/*', Buff) <> 0) and (Pos('*/', Buff) <> 0) then
                    PrepareComment('/*' + Between(Buff, '/*', '*/') + '*/', Comment)
                  else
                    PrepareComment(PrevComment, Comment);
                end;
              end;
              PrevComment := '';
              // add missing lines
              Inc(CurrLine, CountCharsRange(Code, #10, Tmp1, i));
            end
            // variable:
            else begin
              i := GetNextRealChr(Code, EscChr, Tmp1+6).Y;
              if (Buff2 = 'stock') then
                HandleVariable(Code, PrevComment, EscChr, i, CurrLine, Result.StockVars, Result.StockConst)
              else
                HandleVariable(Code, PrevComment, EscChr, i, CurrLine, Result.PublicVars, Result.PublicConst);
              Dec(i, 1); // we increase it later again
            end;
          end
          // Statics
          else if (ChrPair = 'st') and (TrimRight(Copy(Code, i, 7)) = 'static') then begin
            Inc(i, 7);
            i := GetNextRealChr(Code, EscChr, i).Y;
            HandleVariable(Code, PrevComment, EscChr, i, CurrLine, Result.StaticVars, Result.StaticConst);
            Dec(i, 1); // we increase it later again
          end
          // Natives+Forwards
          else if (CheckFunc(ChrPair, 'native', 'forward', Code, i, Buff2)) then begin
            Tmp1 := i;
            Inc(i, Length(Buff2));
            i := GetNextRealChr(Code, EscChr, i).Y;
            sElement := GetKeywordAt(Code, i, True, EscChr);
            Inc(i, Length(sElement));
            i := GetNextRealChr(Code, EscChr, i).Y;
            if (Code[i] = ':') then begin
              sTag := sElement;
              Inc(i, 1); // for :
              i := GetNextRealChr(Code, EscChr, i).Y;
              sElement := GetKeywordAt(Code, i, True, EscChr);
              Inc(i, Length(sElement));
              i := GetNextRealChr(Code, EscChr, i).Y;
            end
            else
              sTag := '';
            Inc(CurrLine, CountCharsRange(Code, #10, Tmp1, i));
            if (Code[i] = '(') then begin
              Tmp2 := GetMatchingBrace(Code, EscChr, i) - i;
              sValue := Copy(Code, i, Tmp2+1);
              if (Tmp2 < len) then
                Inc(i, Tmp2);

              if (Buff2 = 'native') then
                VarObj := Result.Natives.Add
              else
                VarObj := Result.Forwards.Add;

              with TFunction(VarObj) do begin
                // normal values
                if (Pos('[', sElement) <> 0) then
                  Caption := Copy(sElement, 1, Pos('[', sElement))
                else
                  Caption := sElement;
                DocPos := Tmp1;
                Line := CurrLine;
                Tag := sTag;
                Name := sElement;
                Parameters := sValue;
                // param count
                Buff := RemoveFrom(sValue, EscChr, True, True, True, True);
                if (Pos('{', Buff) <> 0) then begin
                  BTmp := True;
                  sValue := '';
                  for k := 1 to Length(Buff) do begin
                    Chr := Buff[k];
                    if (Chr = '{') then
                      BTmp := False
                    else if (Chr = '}') then
                      BTmp := True
                    else if (BTmp) then
                      sValue := sValue + Chr;
                  end;
                  ParamCount := CountChars(sValue, ',');
                end
                else
                  ParamCount := CountChars(Buff, ',');
                // comments
                Buff := Trim(RemoveFrom(LineBuff, EscChr, False, False, True, True));
                if (Pos('//', Buff) <> 0) then
                  PrepareComment(Trim(Copy(Buff, Pos('//', Buff)+2, Length(Buff))), Comment)
                else if (Pos('/*', Buff) <> 0) and (Pos('*/', Buff) <> 0) then
                  PrepareComment('/*' + Between(Buff, '/*', '*/') + '*/', Comment)
                else
                  PrepareComment(PrevComment, Comment);
                PrevComment := '';
              end;
              // add missing lines
              Inc(CurrLine, CountCharsRange(Code, #10, Tmp1, i));
            end;
          end
          // Variables+Consts
          else if (ChrPair = 'ne') and (TrimRight(Copy(Code, i, 4)) = 'new') then begin
            Inc(i, 4);
            i := GetNextRealChr(Code, EscChr, i).Y;
            HandleVariable(Code, PrevComment, EscChr, i, CurrLine, Result.GlobalVars, Result.Consts);
            Dec(i, 1); // we increase it later again
          end
          else if (ChrPair = 'en') and ((TrimRight(Copy(Code, i, 5)) = 'enum') or (Copy(Code, i+4, 1) = '{')) then begin
            Tmp1 := i;
            Inc(i, 4);
            // get name of enum if exists
            with GetNextRealChr(Code, EscChr, i) do begin
              if (X <> Ord('{')) then begin
                sElement := GetKeywordAt(Code, Y, True, EscChr);
                i := Y + Length(sElement);
                Inc(CurrLine, CountCharsRange(Code, #10, Tmp1, Y));
              end
              else
                sElement := '';
              Tmp3 := i;
            end;
            // get enum values
            with GetNextRealChr(Code, EscChr, i) do begin
              if (X = Ord('{')) then begin
                Tmp2 := GetMatchingBrace(Code, EscChr, Y);
                if (Tmp2 <> len) then begin
                  // create new object
                  with TEnum(Result.Enums.Add) do begin
                    // set values
                    DocPos := Tmp1;
                    Line := CurrLine;
                    Name := sElement;
                    PosEnd := Tmp2;
                    Comment := PrevComment;
                    // scan for items
                    STmp := Copy(Code, Y+1, Tmp2 - Y -1);
                    //STmp := RemoveFrom(STmp, EscChr, True, True, True, True);
                    Entries.Text := STmp; //StringReplace(STmp, ',', ',' + #13, [rfReplaceAll]);
                    for k := 0 to Entries.Count -1 do
                      Comments.Add('');
                    for k := Entries.Count -1 downto 0 do begin
                      STmp := Entries[k];
                      if (Pos('//', STmp) <> 0) or (Pos('/*', STmp) <> 0) then begin
                        if (Pos('//', STmp) <> 0) then begin
                          if (Pos(#10, STmp) < Pos('//', STmp)) then
                            STmp := Copy(STmp, Pos('//', STmp), Pos(#10, STmp) - Pos('//', STmp))
                          else
                            STmp := Copy(STmp, Pos('//', STmp), Length(STmp));
                        end
                        else if (Pos('*/', STmp) <> 0) then
                          STmp := Copy(STmp, Pos('/*', STmp), Pos('*/', STmp) - Pos('/*', STmp) +2)
                        else
                          STmp := '';
                      end
                      else
                        STmp := '';
                      Buff := RemoveWhitespaces(RemoveFrom(Entries[k], EscChr, True, True, True, True));
                      if (Pos(',', Buff) <> 0) then
                        Buff := Trim(Copy(Buff, 1, Pos(',', Buff) -1));
                      if (Buff = '') then begin
                        Entries.Delete(k);
                        Comments.Delete(k);
                      end
                      else begin
                        if (Pos('=', Buff) <> 0) then
                          Buff := Trim(Copy(Buff, 1, Pos('=', Buff) -1));
                        Entries[k] := Buff;
                        Comments[k] := Trim(STmp);
                      end;
                    end;
                  end;
                  // increase currline
                  Inc(CurrLine, CountCharsRange(Code, #10, Tmp3, Tmp2));
                  // go to end of enum
                  i := Tmp2;
                end;
              end;
            end;
          end
          // FuncEnums
          else if (ChrPair = 'fu') and (TrimRight(Copy(Code, i, 9)) = 'funcenum') then begin
            Tmp1 := i;
            Inc(i, 8);
            // get name of enum if exists
            with GetNextRealChr(Code, EscChr, i) do begin
              if (X <> Ord('{')) then begin
                sElement := GetKeywordAt(Code, Y, True, EscChr);
                i := Y + Length(sElement);
                Inc(CurrLine, CountCharsRange(Code, #10, Tmp1, Y));
              end
              else
                sElement := '';
              Tmp3 := i;
            end;
            // get enum values
            with GetNextRealChr(Code, EscChr, i) do begin
              if (X = Ord('{')) then begin
                Tmp2 := GetMatchingBrace(Code, EscChr, Y);
                if (Tmp2 <> len) then begin
                  // create new object
                  with TEnum(Result.FuncEnums.Add) do begin
                    // set values
                    DocPos := Tmp1;
                    Line := CurrLine;
                    Name := sElement;
                    PosEnd := Tmp2;
                    Comment := PrevComment;
                    // split items up
                    STmp := Copy(Code, Y+1, Tmp2 - Y -1);
                    STmp2 := RemoveFrom(STmp, EscChr, True, True, True, True, ' ', False);
                    BTmp := False;
                    for i := 1 to Length(STmp) do begin
                      if (STmp2[i] = '(') then
                        BTmp := True
                      else if (Stmp2[i] = ')') then
                        BTmp := False;
                        
                      if (not BTmp) and (STmp2[i] = ',') then begin
                        Entries.Add(sValue);
                        sValue := '';
                      end
                      else
                        sValue := sValue + STmp[i];
                    end;
                    // extract comments
                    for i := 0 to Entries.Count -1 do begin
                      sElement := Entries[i];
                      sValue := '';
                      { line comments }
                      while (Pos('//', sElement) <> 0) do begin
                        Tmp1 := Pos('//', sElement);
                        sTag := Copy(sElement, Tmp1, PosNextChr(#10, sElement, Tmp1, True) +1);
                        Delete(sElement, Tmp1, Length(sTag));
                        sValue := sValue + sTag;
                      end;
                      { doc comments (1) }
                      Tmp1 := Pos('/*', sElement);
                      Tmp4 := Pos('*/', sElement);
                      if (Tmp1 <> 0) and (Tmp4 <> 0) then begin
                        sValue := sValue + Copy(sElement, Tmp1, Tmp4 - Tmp1 +2);
                        Delete(sElement, Tmp1, Tmp4 - Tmp1 +2);
                      end;
                      { add it here }
                      Comments.Add(Trim(sValue));
                      if (Copy(sElement, 1, 1) = ',') then
                        Delete(sElement, 1, 1);
                      Entries[i] := Trim(sElement);
                      { doc comments (2) }
                      Tmp1 := Pos('/*', sElement);
                      Tmp4 := Pos('*/', sElement);
                      if (Tmp1 <> 0) and (Tmp4 <> 0) then begin
                        sValue := Copy(sElement, Tmp1, Tmp4 - Tmp1 +2);
                        Delete(sElement, Tmp1, Tmp4 - Tmp1 +2);
                      end;
                      if (Comments[0] = '') then begin
                        Comments.Delete(0);
                        Comments.Add(sValue)
                      end;
                    end;
                  end;
                  // increase currline
                  Inc(CurrLine, CountCharsRange(Code, #10, Tmp3, Tmp2));
                  // go to end of enum
                  i := Tmp2;
                end;
              end;
            end;
          end
          // FuncTags are not handled here, just skip them
          else if (ChrPair = 'fu') and (TrimRight(Copy(Code, i, 8)) = 'functag') then begin
            // skip functag+whitespaces
            i := GetNextRealChr(Code, EscChr, i+8, False).Y;
            // then name
            i := GetNextRealChr(Code, EscChr, i + Length(GetKeywordAt(Code, i, True, EscChr, False)) +1).Y;
            // then type (if it exists)
            i := GetNextRealChr(Code, EscChr, i + Length(GetKeywordAt(Code, i, True, EscChr, False))).Y;
            if (Code[i] = ':') then
              i := GetNextRealChr(Code, EscChr, i + Length(GetKeywordAt(Code, i, True, EscChr, False))).Y;
          end
          // Structs. These ones will be ignored though as only the Plugin-struct appears to be valid
          else if (ChrPair = 'st') and (TrimRight(Copy(Code, i, 7)) = 'struct') then begin
            // jump to name
            Tmp1 := GetNextRealChr(Code, EscChr, i+6).Y;
            // get it and jump after it
            with GetNextRealChr(Code, EscChr, Tmp1+Length(GetKeywordAt(Code, Tmp1, True, EscChr))) do begin
              // if next char is an opening brace, go to its end
              if (X = Ord('{')) then begin
                Tmp2 := GetMatchingBrace(Code, EscChr, Y);
                if (Tmp2 <> len) then begin
                  i := Tmp2;
                  PrevComment := '';
                end;
              end;
            end;
          end
          // Everything else
          else if (ChrPair[0] <> ';') and (Trim(ChrPair[0]) <> '')  then begin
            if (Trim(ChrPair[0]) = '') then begin
              FuncName := '';
              FuncStart := -1;
            end
            else if (ChrPair[0] = '(') and (FuncName <> '') and (FuncName <> '@') then begin
              Tmp2 := GetMatchingBrace(Code, EscChr, i);
              if (Tmp2 <> len) then begin
                Tmp1 := i;
                
                if (FuncName[1] = '@') then begin
                  Result.ExtraPubs := FuncName + #32; 
                  FuncName := Trim(Copy(FuncName, 2, Length(FuncName) -1));
                  VarObj := Result.PubFuncs.Add;
                end
                else
                  VarObj := Result.PrivFuncs.Add;
                  
                with TFunction(VarObj) do begin
                  // default values
                  DocPos := FuncStart;
                  Line := FuncLine;
                  // tag
                  if (Pos(':', FuncName) = 0) then
                    Name := FuncName
                  else begin
                    Tag := Copy(FuncName, 1, Pos(':', FuncName) -1);
                    Name := Copy(FuncName, Pos(':', FuncName) +1, Length(FuncName));
                  end;
                  // function name
                  if (Pos('[', Name) <> 0) then
                    Caption := Copy(Name, 1, Pos('[', Name) -1)
                  else
                    Caption := Name;
                  // parameters
                  Parameters := Copy(Code, i, Tmp2 - i +1);
                  i := Tmp2;
                  // count
                  STmp := RemoveFrom(Parameters, EscChr, True, True, True, True);
                  BTmp := False;
                  ParamCount := 0;
                  for k := 1 to Length(STmp) do begin
                    Chr := STmp[k];
                    if (BTmp) then begin
                      if (Chr = '}') then
                        BTmp := False;
                    end
                    else begin
                      if (Chr = '{') then
                        BTmp := True
                      else if (Chr = ',') then
                        ParamCount := ParamCount +1;
                    end;
                  end;
                  // comments?
                  Buff := Trim(RemoveFrom(LineBuff, EscChr, False, False, True, True));
                  if (Pos('//', Buff) <> 0) then
                    PrepareComment(Trim(Copy(Buff, Pos('//', Buff)+2, Length(Buff))), Comment)
                  else if (Pos('/*', Buff) <> 0) and (Pos('*/', Buff) <> 0) then
                    PrepareComment('/*' + Between(Buff, '/*', '*/') + '*/', Comment)
                  else
                    PrepareComment(PrevComment, Comment);
                  PrevComment := '';
                  // get to end of function
                  with GetNextRealChr(Code, EscChr, i+1) do begin
                    if (X = Ord('{')) then begin
                      Tmp3 := GetMatchingBrace(Code, EscChr, Y);
                      if (Tmp3 <> len) then
                        i := Tmp3;
                    end
                    else if (Y > i)then begin
                      i := Y;
                      // skip return if there's one
                      STmp := GetKeywordAt(Code, i, False, #0);
                      Tmp3 := i;
                      if (STmp = 'return') then begin
                        i := GetNextRealChr(Code, EscChr, i +6).Y;
                        STmp := GetKeywordAt(Code, i, False, #0);
                      end;
                      // skip command
                      with GetNextRealChr(Code, EscChr, i + Length(STmp)) do begin
                        if (X = Ord('(')) then 
                          i := GetMatchingBrace(Code, EscChr, Y) // and parameters
                        else if (i = Tmp3) then
                          i := Y -1
                        else begin
                          Tmp3 := PosNextChr(#10, Code, Tmp3, False);
                          if (Tmp3 <> -1) then
                            i := Tmp3;
                        end;
                      end;
                    end;
                  end;
                  // set last value: FuncEnd
                  FuncEnd := i;
                  // CurrLine ->
                  Inc(CurrLine, CountCharsRange(Code, #10, Tmp1, i));
                end;
              end;
              // reset
              FuncName := '';
              FuncStart := -1;
            end
            else begin
              FuncName := FuncName + ChrPair[0];
              if (FuncStart = -1) then begin
                FuncStart := i;
                FuncLine := CurrLine;
              end;
            end;
          end;
        end;
      end;
    end;
    Inc(i, 1);
  until (i >= len);
end;

function GetKeywordAt(const Text: String; Position: Integer; const FullExpression: Boolean; const EscChr: Char; const IgnoreNormalBraces: Boolean = True): String;
var i, len: integer;
    PRes: TPoint;
begin
  Result := '';
  // get a good start
  for i := Position downto 1 do begin
    if (Pos(Text[i], frmMain.sciEditor.WordChars) = 0) then begin
      Position := i+1;
      break;
    end
  end;
  // get keyword
  for i := Position to Length(Text) do begin // +1 for charwise counting
    if (Pos(Text[i], frmMain.sciEditor.WordChars) = 0) then begin
      Position := i;
      break;
    end
    else
      Result := Result + Text[i];
  end;
  // if braces are wanted, get every brace we can get
  if (FullExpression) then begin
    len := Length(Text);
    repeat
      PRes := GetNextRealChr(Text, EscChr, Position);
      if (PRes.X = Ord('[')) or ((not IgnoreNormalBraces) and (PRes.X = Ord('('))) then begin
        i := GetMatchingBrace(Text, EscChr, PRes.Y);
        if (i <> Length(Text)) then begin
          Result := Result + Copy(Text, Position, i - Position +1);
          Position := i+1;
        end;
      end;
    until (PRes.X <> Ord('[')) or ((not IgnoreNormalBraces) and (PRes.X <> Ord('('))) or (i = len);
    Result := RemoveFrom(Result, EscChr, True, True, False, False, #32, False); // better
  end;
end;

function PossibleOLSKeyword(const Keyword: String): Boolean;
begin
  Result := (Keyword = 'if') or (Keyword = 'else') or (Keyword = 'case') or (Keyword = 'while') or (Keyword = 'for') or (Keyword = 'public') or (Keyword = 'stock') or (Keyword = 'enum');
end;

function FullOLSCheck(const Text: String; Start: Integer; const CompleteCheck: Boolean): Boolean;
var i: integer;
begin
  Result := True;
  // if this cannot be a "one-line-statement", cancel check
  if (CompleteCheck) then begin
    if (not PossibleOLSKeyword(GetKeywordAt(Text, Start, False, #0))) then
      exit;
  end;
  // check vars
  if (Start = 0) then
    Start := 1;
  // check for braces
  for i := Start to Length(Text) do begin // +1 for charwise counting
    // SHOULD be safe --v
    if (Text[i] = '{') then begin
      Result := False;
      break;
    end
    else if (Text[i] = '}') then begin
      Result := True;
      break;
    end;
  end;
end;

function RemoveFrom(const Code: String; const EscChr: Char; const Comments, LineComments, Strings, Chars: Boolean; const ReplaceWith: String = ''; const ReplaceOnce: Boolean = True): String;
function CheckForLineBreak(const Buff: String; const StartPos: Integer): Boolean;
var i: integer;
    Chr: String;
begin
  Result := True;
  for i := StartPos to Length(Buff) do begin
    Chr := Copy(Buff, i, 1);
    if (Chr = #10) then
      break
    else if (Chr <> #32) and (Chr <> #9) and (Chr <> #13) then begin
      Result := False;
      break;
    end;
  end;
end;

var InComment, InLineComment, InString, InChr: Boolean;
    PrevChr: Char;
    DontCountLine: Boolean;
    i, k, len, len2: integer;
    ChrPair: array[0..1] of Char;
begin
  // set vars
  Result := '';
  InComment := False;
  InLineComment := False;
  InString := False;
  InChr := False;
  DontCountLine := False;
  len := Length(Code);
  PrevChr := #0;
  // forwards
  if (len < 1) then exit;
  i := 1;
  repeat
    ChrPair[0] := Code[i];
    ChrPair[1] := Code[i+1];
    // check for string break
    if (ChrPair[0] = #10) then begin
      InString := (InString) and (PrevChr = '\');
      InChr := (InChr) and (PrevChr = '\');
      PrevChr := #0;
    end
    else if (ChrPair[0] <> #9) and (ChrPair[0] <> #13) and (ChrPair[0] <> #32) then
      PrevChr := ChrPair[0];
    // then parse
    if (InLineComment) or (DontCountLine) then begin
      if (ChrPair[1] = #10) then begin
        InLineComment := False;
        Inc(i, 1);

        if (DontCountLine) then begin
          DontCountLine := False;
          if (not ReplaceOnce) then
            Result := Result + ReplaceWith;
          continue;
        end;

        if (ReplaceWith <> '') then begin
          if (ReplaceOnce) then
            Result := Result + ReplaceWith;
          Result := Result + #10;
        end;
      end;
    end
    else begin
      if (InString) then begin
        if (ChrPair[0] = EscChr) then begin
          Inc(i, 2);
          if (not Strings) then
            Result := Result + ChrPair
          else if (not ReplaceOnce) then
            Result := Result + ReplaceWith + ReplaceWith;
          continue;
        end
        else if (ChrPair[0] = '"') then begin
          InString := False;
          if (Strings) then begin
            Result := Result + ReplaceWith;
            Inc(i, 1);
            continue;
          end;
        end;
      end
      else if (InChr) then begin
        if (ChrPair[0] = EscChr) then begin
          Inc(i, 2);
          if (not Chars) then
            Result := Result + ChrPair
          else if (not ReplaceOnce) then
            Result := Result + ReplaceWith + ReplaceWith;
          continue;
        end
        else if (ChrPair = '''''') then begin
          Inc(i, 2);
          if (not Chars) then
            Result := Result + '''''';
          //else if (not ReplaceOnce) then
          //  Result := Result + ReplaceWith + ReplaceWith;
          continue;
        end
        else if (ChrPair[0] = '''') then begin
          InChr := False;
          if (Chars) then begin
            Result := Result + ReplaceWith;
            Inc(i, 1);
            continue;
          end;
        end;
      end
      else if (not InComment) and (ChrPair[0] = '"') then
        InString := True
      else if (not InComment) and (ChrPair[0] = '''') then
        InChr := True
      else if (ChrPair = '/*') then
        InComment := True
      else if (ChrPair = '*/') then begin
        if (Comments) then begin
          if (InComment) then begin
            if (ReplaceOnce) then
              Result := Result + ReplaceWith
            else
              Result := Result + ReplaceWith + ReplaceWith; // sequence with 2 chars
          end
          else if (ReplaceWith = '') then
            Result := ''
          else begin
            // cut downto here if everything was a comment
            len2 := Length(Result);
            Result := '';
            for k := 1 to len2 +2 do // +2 for */
              Result := Result + ReplaceWith;
          end;
          Inc(i, 2);
          InComment := False;
          DontCountLine := (Comments) and (CheckForLineBreak(Code, i));
          continue;
        end
        else
          InComment := False;
      end
      else if (not InComment) and (ChrPair = '//') then
        InLineComment := True;
    end;

    if (not (Comments and InComment)) and (not (LineComments and InLineComment)) and (not (Strings and InString)) and (not (Chars and InChr)) then
      Result := Result + Code[i]
    else if (not ReplaceOnce) then
      Result := Result + ReplaceWith;
    Inc(i, 1);
  until (i > len);
  // add ReplaceWith to string if comment hasn't been closed yet
  if (ReplaceOnce) and ((Comments and InComment) or (LineComments and InLineComment) or (Strings and InString) or (Chars and InChr)) then
    Result := Result + ReplaceWith;
end;

function RemoveConditionBreaks(const Buff: String): String; // STRIPPED CODE ONLY!
var i, len: integer;
    ChrPair: String;
    IgnoreBreak: Boolean;
begin
  Result := '';
  IgnoreBreak := False;
  len := Length(Buff);

  if (len = 0) then exit;
  i := 1;
  repeat
    ChrPair := Copy(Buff, i, 2);
    while (Length(ChrPair) < 2) do
      ChrPair := ChrPair + #32;

    if (ChrPair = '||') or (ChrPair = '&&') then begin
      IgnoreBreak := True;
      Result := Result + ChrPair;
      Inc(i, 1);
    end
    else if (IgnoreBreak) then begin
      if (ChrPair[2] <> #32) and (ChrPair[2] <> #9) and (ChrPair[2] <> #10) and (ChrPair[2] <> #13) then
        IgnoreBreak := False;
    end
    else
      Result := Result + ChrPair[1];
    Inc(i, 1);
  until (i >= len);
end;

// DO NOT USE WITH CODE CONTAINING STRINGS, CHARS OR COMMENTS
function RemoveBraces(const Code: String; const Braces, CurlingBraces: Boolean): String;
var InBrace, InCBrace: Boolean;
    CurrChr: Char;
    i: integer;
begin
  InBrace := False;
  InCBrace := False;

  Result := '';
  for i := 1 to Length(Code) do begin
    CurrChr := Code[i];
    if (InBrace) then
      InBrace := (CurrChr <> ')')
    else if (InCBrace) then
      InCBrace := (CurrChr <> '}')
    else begin
      if (Braces) and (CurrChr = '(') then
        InBrace := True
      else if (CurlingBraces) and (CurrChr = '{') then
        InCBrace := True
      else
        Result := Result + CurrChr;
    end;
  end;
end;

{function GetFirstWord(const StrIn: String): String;
var i: integer;
begin
  Result := '';
  for i := 1 to Length(StrIn) do begin
    if (Pos(StrIn[i], frmMain.sciEditor.WordChars) = 0) then
      break;
    Result := Result + StrIn[i];
  end;
end;}

function GetOLSEnd(const Text: String; const StartPos, StopPos: Integer; const EscChr: Char; const CheckKeyword: Boolean): Integer;
var Keyword, Buff: String;
    InComment, InLineComment, InString, InChr: Boolean;
    PrevChr: Char;
    BraceCount, i, k, Start, len: integer;
    ChrPair: array[0..1] of Char;
begin
  Result := -1;
  // check if keyword is okay
  Keyword := GetKeywordAt(Text, StartPos, False, #0);
  if (CheckKeyword) and (not PossibleOLSKeyword(Keyword)) then
    exit;
  if (Keyword = 'case') or (Keyword = 'enum') then exit;
  // reset variables
  InComment := False;
  InLineComment := False;
  InString := False;
  InChr := False;
  BraceCount := 1;
  PrevChr := #0;
  len := Length(Text);
  Start := len;
  // find first brace posi
  if (StartPos = 0) then begin
    for i := 1 to len do begin
      if (Text[i] = '(') then begin
        Start := i+1;
        break;
      end
      else if (Text[i] = '{') or (Text[i] = '}') then
        break;
    end;
  end
  else begin
    for i := StartPos to len do begin
      if (Text[i] = '(') then begin
        Start := i+1;
        break;
      end
      else if (Text[i] = '{') then
        break;
    end;
  end;
  // check braces
  if (Start >= len) then exit;
  i := Start;
  repeat
    // rest
    if (InLineComment) then begin
      if (Text[i] = #10) then
        InLineComment := False;
      Inc(i, 1);
    end
    else begin
      // get buffer (2 chars)
      ChrPair[0] := Text[i];
      ChrPair[1] := Text[i+1];
      // check for string break
      if (ChrPair[0] = #10) then begin
        InString := (InString) and (PrevChr = '\');
        InChr := (InChr) and (PrevChr = '\');
        PrevChr := #0;
      end
      else if (ChrPair[0] <> #9) and (ChrPair[0] <> #13) and (ChrPair[0] <> #32) then
        PrevChr := ChrPair[0];
      // if string, check for ctrl char
      if (InString) then begin
        if (ChrPair[0] = EscChr) then
          Inc(i, 2)
        else if (ChrPair[0] = '"') then begin
          InString := False;
          Inc(i, 1);
        end
        else
          Inc(i, 1);
      end
      else if (InChr) then begin
        if (ChrPair[0] = EscChr) then
          Inc(i, 2)
        else if (ChrPair[0] = '''') then begin
          InChr := False;
          Inc(i, 1);
        end
        else
          Inc(i, 1);
      end
      else if (InComment) then begin
        if (ChrPair = '*/') then begin
          InComment := False;
          Inc(i, 2);
        end
        else
          Inc(i, 1);
      end
      else begin
        if (ChrPair[0] = '"') then begin
          InString := True;
          Inc(i, 1);
        end
        else if (ChrPair[0] = '''') then begin
          InChr := True;
          Inc(i, 1);
        end
        else if (ChrPair = '/*') then begin
          InComment := True;
          Inc(i, 2);
        end
        else if (ChrPair = '//') then begin
          InLineComment := True;
          Inc(i, 2);
        end
        else begin
          if (ChrPair[0] = '(') then
            Inc(BraceCount, 1)
          else if (ChrPair[0] = ')') then
            Dec(BraceCount, 1)
          else if (ChrPair[0] = '{') or (ChrPair[0] = '}') then
            break;
          Inc(i, 1);
        end;
      end;
    end;
  until (i > len) or (i = StopPos) or (BraceCount = 0);
  // let's see if we have anything but a brace
  if (BraceCount = 0) then
    Result := i;
  // check if there's a curling brace after end (-> NO OLS)
  if (i < len) and (GetNextRealChr(Text, EscChr, i).X = Ord('{')) then begin
    Result := -1;
    exit;
  end;
  // well, special case, we have a "do..while" construction
  if (Result <> -1) then begin
    if (Keyword = 'while') then begin
      i := CodeFindReverse('}', Text, EscChr, StartPos);
      if (i = -1) or (CodeFindReverse(')', Text, EscChr, StartPos) > i) then exit;
      // 2nd check is for double whiles (do..while;while)
      i := GetMatchingBrace(Text, EscChr, i);
      if (i = len) then exit;
      k := CodeFindReverse('do', Text, EscChr, i);
      if (k = -1) then exit;
      Buff := Copy(Text, k, i - k);
      Buff := Trim(RemoveFrom(Buff, EscChr, True, True, True, True));
      if (Buff = 'do') then
        Result := -1;
    end
    else begin
      with (GetNextRealChr(Text, EscChr, i)) do
        Result := TN((X = Ord('{')) or (CountCharsRange(Text, #10, i, Y) = 0), -1, Result);
    end;
  end;
end;

function GetFirstChar(const StrIn: String; const Start: Integer = 1): Char;
var i: integer;
begin
  Result := #0;
  if (Length(StrIn) = 0) then exit;

  for i := Start to Length(StrIn) do begin
    if (Pos(StrIn[i], frmMain.sciEditor.WordChars) = 0) then begin
      Result := StrIn[i];
      break;
    end;
  end;
end;

function GetLastChar(const StrIn: String; const Start: Integer = 1): Char;
var i: integer;
begin
  Result := #0;
  if (Length(StrIn) = 0) then exit;

  for i := Start downto 1 do begin
    if (Pos(StrIn[i], frmMain.sciEditor.WordChars) = 0) then begin
      Result := StrIn[i];
      break;
    end;
  end;
end;

function GetMatchingBrace(const Text, EscapeChr: String; const Pos: Integer; const OpenBrace: Char = #0; const BreakOnLF: Boolean = False): Integer;
function PosBackEx(const SubStr: String; const Chr: Char; const Offset: Integer = -1): Integer;
var i: integer;
begin
  Result := Offset;
  for i := Offset downto 1 do begin
    if (SubStr[i] = Chr) then begin
      Result := i;
      break;
    end;
  end;
end;

var i, len, maxlen, BraceCount: Integer;
    InComment, InLineComment, InString, InChr: Boolean;
    ChrPair: array[0..1] of Char;
    LastClosePos, BHCount: Integer;
    BraceHistory: array of Integer;
    OpeningBrace, ClosingBrace, PrevChr: Char;
    Forwards: Boolean;
begin
  maxlen := Length(Text);
  Result := TN(BreakOnLF, PosEx(#10, Text, Pos), maxlen);
  if (maxlen = 0) then exit;
  // set MatchingBrace+Forwards (we need to know what we're looking for)
  if (OpenBrace = #0) then
    OpeningBrace := Text[Pos]
  else
    OpeningBrace := OpenBrace;
  ClosingBrace := OpeningBrace;
  if (OpeningBrace = '{') then begin
    ClosingBrace := '}';
    Forwards := True;
  end
  else if (OpeningBrace = '(') then begin
    ClosingBrace := ')';
    Forwards := True;
  end
  else if (OpeningBrace = '[') then begin
    ClosingBrace := ']';
    Forwards := True;
  end
  else if (OpeningBrace = '<') then begin
    ClosingBrace := '>';
    Forwards := True;
  end
  else if (OpeningBrace = '}') then begin
    OpeningBrace := '{';
    Forwards := False;
  end
  else if (OpeningBrace = ')') then begin
    OpeningBrace := '(';
    Forwards := False;
  end
  else if (OpeningBrace = ']') then begin
    OpeningBrace := '[';
    Forwards := False;
  end
  else if (OpeningBrace = '>') then begin
    OpeningBrace := '<';
    Forwards := False;
  end
  else
    exit;
  if (Forwards) then
    Result := TN(BreakOnLF, PosEx(#10, Text, Pos), maxlen)
  else
    Result := TN(BreakOnLF, PosBackEx(Text, #10, Pos), 1);
  if (maxlen < 2) then exit;
  // reset variables
  InComment := False;
  InLineComment := False;
  InString := False;
  InChr := False;
  LastClosePos := -1;
  BraceCount := 0;
  BHCount := 0;
  PrevChr := #0;
  // find brace position
  if (Forwards) then begin // looking for closing brace
    i := Pos;
    len := maxlen;
  end
  else begin               // looking for opening brace
    i := 1; // urgh
    len := Pos-1;
  end;

  repeat
    if (InLineComment) then begin
      if (Text[i] = #10) then begin
        InLineComment := False;
        if (BreakOnLF) then begin
          Result := i;
          exit;
        end;
      end;
      Inc(i, 1);
    end
    else begin
      // get buffer (2 chars)
      ChrPair[0] := Text[i];
      ChrPair[1] := Text[i+1];
      // check for string break
      if (ChrPair[0] = #10) then begin
        InString := (InString) and (PrevChr = '\');
        InChr := (InChr) and (PrevChr = '\');
        if (BreakOnLF) then begin
          Result := i;
          exit;
        end;
      end
      else if (ChrPair[0] <> #9) and (ChrPair[0] <> #13) and (ChrPair[0] <> #32) then
        PrevChr := ChrPair[0];
      // if string, check for ctrl char
      if (InString) then begin
        if (ChrPair[0] = EscapeChr) then
          Inc(i, 2)
        else if (ChrPair[0] = '"') then begin
          InString := False;
          Inc(i, 1);
        end
        else
          Inc(i, 1);
      end
      else if (InChr) then begin
        if (ChrPair[0] = EscapeChr) then
          Inc(i, 2)
        else if (ChrPair[0] = '''') then begin
          InChr := False;
          Inc(i, 1);
        end
        else
          Inc(i, 1);
      end
      else if (InComment) then begin
        if (ChrPair = '*/') then begin
          InComment := False;
          Inc(i, 2);
        end
        else
          Inc(i, 1);
      end
      else begin
        if (ChrPair[0] = '"') then begin
          InString := True;
          Inc(i, 1);
        end
        else if (ChrPair[0] = '''') then begin
          InChr := True;
          Inc(i, 1);
        end
        else if (ChrPair = '/*') then begin
          InComment := True;
          Inc(i, 2);
        end
        else if (ChrPair = '//') then begin
          InLineComment := True;
          Inc(i, 2);
        end
        else begin
          if (ChrPair[0] = OpeningBrace) then begin
            Inc(BraceCount, 1);
            if (not Forwards) then begin
              SetLength(BraceHistory, BHCount +1);
              BraceHistory[BHCount] := i;
              Inc(BHCount, 1);
            end;
          end
          else if (ChrPair[0] = ClosingBrace) then begin
            LastClosePos := i;
            Dec(BraceCount, 1);
            if (not Forwards) and (BHCount > 0) then begin
              Dec(BHCount, 1);
              SetLength(BraceHistory, BHCount);
            end;
          end;

          Inc(i, 1);
        end;
      end;
    end;
  until (i > len) or ((Forwards) and (BraceCount = 0));

  if (Forwards) then
    Result := TN(LastClosePos = -1, maxlen, LastClosePos)
  else if (BHCount <> 0) then
    Result := BraceHistory[BraceCount-1];
end;

function FastOLSCheck(const StrIn: String): Boolean;
var Buff, Keyword: String;
    i, start, braces: integer;
begin
  Result := False;
  start := Pos(GetFirstChar(StrIn), StrIn);
  Buff := Trim(Copy(StrIn, start, Length(StrIn)));
  { "else", "" }
  if (start = 0) then begin
    Result := True;
    exit;
  end;
  { "if(foo)", doesn't apply for public }
  Keyword := GetKeywordAt(StrIn, 1, False, #0);
  if (Buff[1] <> '(') and (Keyword <> 'public') then exit;

  braces := 0;
  for i := 1 to Length(Buff) do begin
    if (Buff[i] = '(') then
      Inc(braces, 1)
    else if (Buff[i] = ')') then begin
      Dec(braces, 1);
      if (braces = 0) then begin
        Result := (Trim(Copy(Buff, i+1, Length(Buff))) = '');
        break;
      end;
    end;
  end;
end;

function MakeIdentifier(const StrIn: String): String;
var i, count: integer;
begin
  count := 2;
  repeat
    // create new identifier (xyxy xxyy xxxyyy <-- safe)
    Result := '';
    for i := 1 to count do
      Result := Result + #255;
    for i := 1 to count do
      Result := Result + #254;
    // one more char next time
    Inc(count, 1);
  until (Pos(Result, StrIn) = 0);
end;

function CountLines(StrIn: String): Integer;
var i: integer;
begin
  Result := 1;
  if (Length(StrIn) <> 0) then begin
    StrIn := StringReplace(StrIn, #13, '', [rfReplaceAll]); // no #13s needed
    if (StrIn[Length(StrIn)] = #10) then
      StrIn := Copy(StrIn, 1, Length(StrIn) -1);

    for i := 1 to Length(StrIn) do begin
      if (StrIn[i] = #10) then
        Inc(Result, 1);
    end;
  end;

  if (Result = 0) then
    Result := 1;
end;

function CountChars(const StrIn: String; const CharIn: Char): Integer;
var i: integer;
begin
  Result := 0;
  for i := 1 to Length(StrIn) do begin
    if (StrIn[i] = CharIn) then
      Inc(Result, 1);
  end;
end;

function CountCharsRange(const StrIn: String; const Char: Char; const Start, Stop: Integer): Integer;
var i: integer;
begin
  Result := 0;
  for i := Start to Stop do begin
    if (StrIn[i] = Char) then
      Inc(Result, 1);
  end;
end;

function GetFirstLine(const StrIn: String): String;
var Buff: String;
begin
  if (Pos(#10, Buff) = 0) then
    Result := Buff
  else
    Result := Copy(Buff, 1, Pos(#10, Buff)-1);
end;

function CodeFind(const SubStr, Str: String; const EscapeChr: Char; const Start: Integer = -1): Integer;
var i, len, len2: Integer;
    InComment, InString, InChr: Boolean;
    PrevChr: Char;
    ChrPair: array[0..1] of Char;
begin
  Result := -1;
  // reset variables
  InComment := False;
  InString := False;
  InChr := False;
  len := Length(Str);
  len2 := Length(SubStr);
  PrevChr := #0;
  i := Start;
  if (i < 1) then
    i := 1;
  // find it
  repeat
    ChrPair[0] := Str[i];
    ChrPair[1] := Str[i+1];
    // check for string break
    if (ChrPair[0] = #10) then begin
      InString := (InString) and (PrevChr = '\');
      InChr := (InChr) and (PrevChr = '\');
      PrevChr := #0;
    end
    else if (ChrPair[0] <> #9) and (ChrPair[0] <> #13) and (ChrPair[0] <> #32) then
      PrevChr := ChrPair[0];
    // parse
    if (InComment) then begin
      if (ChrPair = '*/') then begin
        InComment := False;
        Inc(i, 1);
      end;
    end
    else if (InString) then begin
      if (ChrPair[0] = EscapeChr) then
        Inc(i, 2)
      else if (ChrPair[0] = '"') then
        InString := False;
    end
    else if (InChr) then begin
      if (ChrPair[0] = EscapeChr) then
        Inc(i, 2)
      else if (ChrPair[0] = '''') then
        InChr := False;
    end
    else begin
      if (ChrPair = '/*') then
        InComment := True
      else if (ChrPair = '//') then begin
        i := PosEx(#10, Str, i);
        if (i = 0) then
          break;
      end
      else if (ChrPair[0] = '"') then
        InString := True
      else if (ChrPair[0] = '''') then
        InChr := True
      else if (Copy(Str, i, len2) = SubStr) then begin
        Result := i;
        break;
      end;
    end;
    Inc(i, 1);
  until (i > len);
end;

function CodeFindReverse(const SubStr, Str: String; const EscapeChr: Char; const Start: Integer = -1): Integer;
function GetLCLength(const Start: Integer): Integer;
var i: integer;
    Line, Buff: String;
begin
  // get entire line
  for i := Start downto 1 do begin
    if (Str[i] = #10) or (Str[i] = #10) then begin
      Line := Copy(Str, i, Start - i);
      break;
    end;
  end;
  // remove line comment and check how many chars we can skip
  Buff := TrimRight(RemoveFrom(Line, EscapeChr, False, True, False, False));
  Result := (Length(Line) - Length(Buff));
end;

var i, len: Integer;
    InComment, InString, InChr: Boolean;
    PrevChr: Char;
    ChrPair: array[0..1] of Char;
begin
  Result := -1;
  // reset variables
  InComment := False;
  InString := False;
  InChr := False;
  len := Length(SubStr);
  PrevChr := #0;
  i := Start;
  if (i = -1) then
    i := Length(Str)-2;
  // check
  repeat
    // set buffer
    ChrPair[0] := Str[i];
    ChrPair[1] := Str[i+1];
    // check for string break
    if (ChrPair[0] = #10) then begin
      InString := (InString) and (PrevChr = '\');
      InChr := (InChr) and (PrevChr = '\');
      PrevChr := #0;
    end
    else if (ChrPair[0] <> #9) and (ChrPair[0] <> #13) and (ChrPair[0] <> #32) then
      PrevChr := ChrPair[0];
    // parse
    if (InComment) then begin
      if (ChrPair = '/*') then begin
        InComment := False;
        Dec(i, 1);
      end;
    end
    else if (InString) then begin
      if (ChrPair[0] = EscapeChr) then
        Dec(i, 1)
      else if (ChrPair[1] = '"') then begin
        InString := False;
        Inc(i, 1); // for Dec() below
      end;
    end
    else if (InChr) then begin
      if (ChrPair[0] = EscapeChr) then
        Dec(i, 1)
      else if (ChrPair[0] = '''') then begin
        InChr := False;
        Inc(i, 1);
      end;
    end
    else if (ChrPair[0] = #13) or (ChrPair[0]= #10) then
      Dec(i, GetLCLength(i-1))
    else begin
      if (ChrPair = '*/') then
        InComment := True
      else if (ChrPair[0] = '"') then begin
        InString := True;
        Dec(i, 1);
      end
      else if (ChrPair[0] = '''') then begin
        InChr := True;
        Dec(i, 1);
      end
      else if (Copy(Str, i, len) = SubStr) then begin
        Result := i;
        break;
      end;
    end;
    Dec(i, 1);
  until (i <= 0);
end;

function PosNextChr(const SubChr: Char; const Str: String; const Start: Integer; const CountOnly: Boolean): Integer;
var i: integer;
begin
  Result := Length(Str);
  for i := Start to Length(Str) do begin
    if (Str[i] = SubChr) then begin
      Result := i;
      break;
    end;
  end;
  if (CountOnly) then
    Result := Result - Start;
end;

function IsAtPos(const SubStr, Str: String; const Pos: Integer; const AllowBrace: Boolean): Boolean;
var i, k, send: integer;
    Chr: Char;
begin
  Result := False;
  k := 1;
  send := Pos + Length(SubStr) -1;
  // first check: whitespace must exist after expression
  if (Length(Str) > send +2) then begin
    Chr := Str[send+1];
    if (Chr <> #9) and (Chr <> #10) and (Chr <> #13) and (Chr <> #32) and ((not AllowBrace) or (Chr <> '(')) then
      exit;
  end
  else if (Length(Str) < send) then
    exit;
  // next check: charwise comparison
  for i := Pos to send do begin
    if (Str[i] <> SubStr[k]) then
      exit;
    Inc(k, 1);
  end;
  {// final check: white space(s) and #13 before it (removed; never trust line breaks in Pawn)
  if (AtLineStart) then begin
    for i := Pos downto 1 do begin
      Chr := Str[i];
      if (Chr = #13) then
        break;
      if (Chr <> #32) and (Chr <> #10) and (Chr <> #9) then
        exit;
    end;
  end;}      
  Result := True;
end;

function IsAtStart(SubStr, Str: String; const WSCheck: Boolean = False): Boolean;
var i, len: integer;
    TempChr: Char;
begin
  Result := False;
  // init vars
  SubStr := LowerCase(SubStr);
  len := Length(SubStr);
  if (Length(Str) < len) then exit;
  // char-wise comparison
  for i := 1 to len do begin
    TempChr := Str[i];
    if (TempChr >= 'A') and (TempChr <= 'Z') then Inc(TempChr, 32);
    if (SubStr[i] <> TempChr) then
      exit;
  end;
  // check for whitespace after expression
  TempChr := Str[len+1];
  Result := (not WSCheck) or (TempChr = #9) or (TempChr = #10) or (TempChr = #13) or (TempChr = #32);
end;

function GetNextRealChr(const StrIn: String; const EscChr: Char; const StartPos: Integer; const IgnoreStrings: Boolean = False; const IgnoreComments: Boolean = True; const IgnoreStates: Boolean = True): TPoint; // X = Char, Y = Pos
var InStr, InChr, InComment, InLineComment, InState: Boolean;
    ChrPair: array[0..1] of Char;
    PrevChr: Char;
    i, len: integer;
begin
  if (StrIn <> '') then
    Result := Point(Ord(StrIn[Length(StrIn)]), Length(StrIn))
  else
    Result := Point(0, 0);
  len := Length(StrIn);
  if (StartPos >= len) then exit;

  InStr := False;
  InChr := False;
  InComment := False;
  InLineComment := False;
  InState := False;
  PrevChr := #0;

  i := StartPos;
  repeat
    ChrPair[0] := StrIn[i];
    ChrPair[1] := StrIn[i+1];
    // check for string break
    if (ChrPair[1] = #10) then begin
      InStr := (InStr) and (PrevChr = '\');
      InChr := (InChr) and (PrevChr = '\');
      PrevChr := #0;
    end
    else if (ChrPair[1] <> #9) and (ChrPair[1] <> #13) and (ChrPair[1] <> #32) then
      PrevChr := ChrPair[1];
    // parse
    if (InStr) then begin
      if (ChrPair[0] = EscChr) then
        Inc(i, 1)
      else if (ChrPair[1] = '"') then
        InStr := False;
    end
    else if (InChr) then begin
      if (ChrPair[0] = EscChr) then
        Inc(i, 1)
      else if (ChrPair[1] = '''') then
        InChr := False;
    end
    else if (InComment) then begin
      if (ChrPair = '*/') then begin
        InComment := False;
        Inc(i, 1);
      end;
    end
    else if (InLineComment) then begin
      if (ChrPair[0] = #10) then
        InLineComment := False;
    end
    else if (InState) then begin
      if (ChrPair[0] = '>') then
        InState := False;
    end
    else begin
      if (ChrPair[0] = '"') and (IgnoreStrings) then
        InStr := True
      else if (ChrPair[0] = '''') and (IgnoreStrings) then
        InChr := True
      else if (ChrPair = '/*') and (IgnoreComments) then
        InComment := True
      else if (ChrPair = '//') and (IgnoreComments) then
        InLineComment := True
      else if (ChrPair[0] = '<') and (IgnoreStates) then
        InState := True
      else if (Pos(ChrPair[0], #9#10#13#32) = 0) then begin
        Result.X := Integer(ChrPair[0]);
        Result.Y := i;
        break;
      end;
    end;

    Inc(i, 1);
  until (i > len);
end;

function GetLineAt(const Code: String; const Pos: Integer): String;
var i, start, len: integer;
begin
  start := 1;
  // get start
  for i := Pos downto 1 do begin
    if (Code[i] = #10) then begin
      start := i+1;
      break;
    end;
  end;
  // go to end of line
  len := Length(Code);
  for i := Pos to len do begin
    if (Code[i] = #10) then begin
      Result := Copy(Code, start, i - start -1);
      break;
    end;
  end;
end;

function RemoveWhitespaces(const StrIn: String): String;
var i: integer;
    Chr: Char;
begin
  Result := '';
  for i := 1 to Length(StrIn) do begin
    Chr := StrIn[i];
    if (Chr <> #9) and (Chr <> #10) and (Chr <> #13) and (Chr <> #32) then
      Result := Result + Chr;
  end;
end;

function IndentCode(const StrIn: String; const EscChr: Char; const IndentStr: String): String;
var InComment, InLineComment, InString, InChr, GoBack: Boolean;
    TmpChr, PrevChr: Char;
    i, k, len, Braces, BOld, OldIPos: integer;
    Indentation, TmpIndent: String;
    ChrPair: array[0..1] of Char;
begin
  // set vars
  Result := '';
  InComment := False;
  InLineComment := False;
  InString := False;
  InChr := False;
  GoBack := False;
  len := Length(StrIn);
  PrevChr := #0;
  Braces := 0;
  BOld := 0;
  OldIPos := 0;
  Indentation := '';
  TmpIndent := '';
  // forwards
  if (len < 1) then exit;
  i := 1;
  repeat
    ChrPair[0] := StrIn[i];
    ChrPair[1] := StrIn[i+1];
    // check for string break
    if (i = len) then begin
      if (GoBack) or (BOld > Braces) then
        Delete(Result, OldIPos+1, (BOld - Braces) * Length(IndentStr));
      // okay, end
      break;
    end
    else if (ChrPair[0] = #10) then begin
      // update indentation value if necessary [braces]
      if (BOld <> Braces) or (GoBack) then begin
        // unindent "current" line
        if (BOld > Braces) then
          Delete(Result, OldIPos+1, (BOld - Braces) * Length(IndentStr))
        else if (GoBack) and (BOld = Braces) then
          Delete(Result, OldIPos+1, (Bold - Braces +1) * Length(IndentStr));
        GoBack := False;
        // update string
        Indentation := '';
        for k := 1 to Braces do
          Indentation := Indentation + IndentStr;
        BOld := Braces;
      end;
      // add line break
      Result := Result + #10;
      // go to end of indentation and replace old indent string
      if (i <> len) then begin
        repeat
          Inc(i, 1);
          TmpChr := StrIn[i];
        until (i >= len) or ((TmpChr <> #9) and (TmpChr <> #32));
        OldIPos := Length(Result);
      end;
      Result := Result + Indentation;
      // brace indentation done here; OLS indentation here
      Result := Result + TmpIndent;
      if (GetNextRealChr(StrIn, EscChr, i).X = Ord('#')) then
        k := -1
      else
        k := GetOLSEnd(StrIn, i, len, EscChr, True);
      if (k <> -1) then
        TmpIndent := TmpIndent + IndentStr
      else if (Length(TmpIndent) <> 0) then
        Delete(TmpIndent, 1, Length(IndentStr));
      // set InString, InChr
      InString := (InString) and (PrevChr = '\');
      InChr := (InChr) and (PrevChr = '\');
      InLineComment := False;
      PrevChr := #0;
      // end
      continue;
    end;
    // then parse
    if (not InLineComment) then begin
      if (InString) then begin
        if (ChrPair[0] = EscChr) then begin
          Inc(i, 2);
          Result := Result + ChrPair;
          continue;
        end
        else if (ChrPair[0] = '"') then
          InString := False;
        PrevChr := ChrPair[0];
      end
      else if (InChr) then begin
        if (ChrPair[0] = EscChr) then begin
          Inc(i, 2);
          Result := Result + ChrPair;
          continue;
        end
        else if (ChrPair = '''''') then begin
          Inc(i, 2);
          Result := Result + '''''';
          continue;
        end
        else if (ChrPair[0] = '''') then begin
          InChr := False;
          continue;
        end;
        PrevChr := ChrPair[0];
      end
      else if (not InComment) then begin
        if (ChrPair[0] = '"') then
          InString := True
        else if (ChrPair[0] = '''') then
          InChr := True
        else if (ChrPair = '/*') then
          InComment := True
        else if (ChrPair = '//') then
          InLineComment := True
        else if (ChrPair[0] = '{') then begin
          Inc(Braces, 1);
          GoBack := True;
        end
        else if (ChrPair[0] = '}') then begin
          Dec(Braces, 1);
          GoBack := False;
        end;
      end
      else if (ChrPair = '*/') then
        InComment := False;
    end;

    Result := Result + StrIn[i];
    Inc(i, 1);
  until (i > len);
end;

function UnindentCode(const StrIn: String): String;
var StrList: TStringList;
    i: integer;
begin
  StrList := TStringList.Create;
  StrList.Text := StrIn;
  for i := 0 to StrList.Count -1 do
    StrList[i] := TrimLeft(StrList[i]);
  Result := StrList.Text;
  StrList.Free;
end;

function GetExp(const Code: String; const EscChr: Char; const Start: Integer; const FullExp: Boolean = False): String;
var Posi, Tmp, len, LRC: Integer;
    ChrPair: array[0..1] of Char;
begin
  Result := '';
  len := Length(Code);
  // get a good position to start with
  with (GetNextRealChr(Code, EscChr, Start, False, False)) do begin
    Posi := Y;
    ChrPair[0] := Chr(X);
    ChrPair[1] := Code[Y+1];
  end;
  // check for expression
  { Strings }
  if (ChrPair[0] = '"') then begin
    Tmp := Posi;
    LRC := -1;
    repeat
      Inc(Tmp, 1);
      ChrPair[0] := Code[Tmp];
      ChrPair[1] := Code[Tmp+1];
      if (ChrPair[0] = EscChr) and (Tmp < len) then begin
        Inc(Tmp, 1);
        continue;
      end
      else if (ChrPair[0] = #10) and (Code[LRC] <> '\') then begin
        Tmp := TN(LRC = -1, Posi, LRC);
        break;
      end
      else if (Trim(ChrPair[0]) <> '') then
        LRC := Tmp;
    until (Tmp > len) or (ChrPair[0] = '"');
    Result := Copy(Code, Posi, Tmp - Posi +1);
  end
  { Char }
  else if (ChrPair[0] = '''') then begin
    Tmp := Posi;
    repeat
      Inc(Tmp, 1);
      ChrPair[0] := Code[Tmp];
      ChrPair[1] := Code[Tmp+1];
      if (ChrPair[0] = EscChr) and (Tmp < len) then begin
        Inc(Tmp, 1);
        continue;
      end;
    until (Tmp > len) or (ChrPair[0] = '''');
    Result := Copy(Code, Posi, Tmp - Posi +1);
  end
  { Line Comment }
  else if (ChrPair = '//') then
    Result := TrimRight(Copy(Code, Start, PosEx(#10, Code, Start) - Start))
  { Doc Comment }
  else if (ChrPair = '/*') then
    Result := TrimRight(Copy(Code, Start, PosEx('*/', Code, Start) - Start +2))
  { Brace Expressions }
  else if (Pos(ChrPair[0], '[{(') <> 0) then
    Result := Copy(Code, Start, GetMatchingBrace(Code, EscChr, Start) - Start +1)
  else if (Pos(ChrPair[0], ']})') <> 0) then begin
    Tmp := GetMatchingBrace(Code, EscChr, Start);
    Result := Copy(Code, Tmp, Start - Tmp +1);
  end
  { Default Expression }
  else begin
    if (Code[Start] = '-') then
      Result := '-' + GetKeywordAt(Code, Start +1, FullExp, EscChr, False)
    else
      Result := GetKeywordAt(Code, Start, FullExp, EscChr, False);
  end;
end;

function RemSem(const StrIn: String): String;
begin
  Result := Trim(StrIn);
  if (Copy(StrIn, Length(StrIn) -1, 1) = ';') then
    Result := Trim(Copy(Result, 1, Length(Result) -1));
end;

{ TEnum }

constructor TEnum.Create(ACollection: TCollection);
begin
  inherited;
  FEntries := TStringList.Create;
  FComments := TStringList.Create;
end;

destructor TEnum.Destroy;
begin
  FEntries.Free;
  FComments.Free;
  inherited;
end;

{ TCodeResult }

constructor TCodeResult.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FConsts := TOwnedCollection.Create(Self, TCodeElement);
  FPublicConst := TOwnedCollection.Create(Self, TCodeElement);
  FStockConst := TOwnedCollection.Create(Self, TCodeElement);
  FStaticConst := TOwnedCollection.Create(Self, TCodeElement);
  FDefinitions := TOwnedCollection.Create(Self, TCodeElement);
  FMacros := TOwnedCollection.Create(Self, TFunction);
  FForwards := TOwnedCollection.Create(Self, TFunction);
  FPrivFuncs := TOwnedCollection.Create(Self, TFunction);
  FPubFuncs := TOwnedCollection.Create(Self, TFunction);
  FGlobalVars := TOwnedCollection.Create(Self, TCodeElement);
  FPublicVars := TOwnedCollection.Create(Self, TCodeElement);
  FIncludes := TOwnedCollection.Create(Self, TInclude);
  FNatives := TOwnedCollection.Create(Self, TFunction);
  FStockFuncs := TOwnedCollection.Create(Self, TFunction);
  FStockVars := TOwnedCollection.Create(Self, TCodeElement);
  FStaticVars := TOwnedCollection.Create(Self, TCodeElement);
  FEnums := TOwnedCollection.Create(Self, TEnum);
  FFuncEnums := TOwnedCollection.Create(Self, TEnum);
end;

destructor TCodeResult.Destroy;
begin
  FConsts.Free;
  FPublicConst.Free;
  FStaticConst.Free;
  FStockConst.Free;
  FDefinitions.Free;
  FMacros.Free;
  FForwards.Free;
  FPrivFuncs.Free;
  FPubFuncs.Free;
  FGlobalVars.Free;
  FPublicVars.Free;
  FIncludes.Free;
  FNatives.Free;
  FStockFuncs.Free;
  FStockVars.Free;
  FStaticVars.Free;
  FEnums.Free;
  FFuncEnums.Free;
  inherited;
end;

{ TComment }

constructor TComment.Create;
begin
  inherited;
  FParams := TStringList.Create;
end;

destructor TComment.Destroy;
begin
  FParams.Free;
  inherited;
end;

{ TCodeElement }

constructor TCodeElement.Create(ACollection: TCollection);
begin
  inherited;
  Comment := TComment.Create;
end;

destructor TCodeElement.Destroy;
begin
  Comment.Free;
  inherited;
end;

{ TFunction }

constructor TFunction.Create(ACollection: TCollection);
begin
  inherited;
  Comment := TComment.Create;
end;

destructor TFunction.Destroy;
begin
  Comment.Free;
  inherited;
end;

{ TInclude }

constructor TInclude.Create(ACollection: TCollection);
begin
  inherited;
  Comment := TComment.Create;
end;

destructor TInclude.Destroy;
begin
  Comment.Free;
  inherited;
end;

initialization

FileList := TList.Create;

finalization

FileList.Clear;

end.
