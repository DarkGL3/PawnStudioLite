unit UnitSearchUtils;

interface

uses SysUtils, Forms, Controls, Classes, SciLexerMemo, Windows, SciSearchReplace,
     SciSearchReplaceBase;

type
  THackedSearchReplace = class(TSciSearchReplaceBase)
    public
      function GetSearchForCaret: Boolean;
      procedure SetSearchForCaret(Search: Boolean);
  end;

procedure DoSearchNormal(SearchFromCaret, MatchWholeWord, CaseSensitive, RegEx, SearchForward: Boolean; SearchFor: String);
procedure DoReplaceNormal(SearchFromCaret, MatchWholeWord, CaseSensitive, RegEx, SearchForward: Boolean; SearchFor, ReplaceWith: String; ReplaceMode: Byte = 0);
procedure DoSearchAgain(SearchForward: Boolean);

var OldSearchTerm: String;

const REPLACE_ONCE = 0;
      REPLACE_ALL = 1;
      REPLACE_CONFIRM = 2;

implementation

uses UnitfrmMain, UnitfrmSearchFor, UnitConfigManager;

procedure DoSearchNormal(SearchFromCaret, MatchWholeWord, CaseSensitive, RegEx, SearchForward: Boolean; SearchFor: String);
begin
  if (Configuration.UseOldSearchDialog) then
    frmMain.sciSearchReplace.ShowSearchDialog
  else begin
    with frmSearchFor do begin
      OldSearchTerm := SearchFor;
      if (RegEx) then begin
        SearchFor := StringReplace(SearchFor, '\s', '[\t ]', [rfReplaceAll]);
        SearchFor := StringReplace(SearchFor, '\S', '[^\t ]', [rfReplaceAll]);
      end;

      THackedSearchReplace(frmMain.sciSearchReplace).SetSearchForCaret(SearchFromCaret);
      frmMain.sciSearchReplace.SearchWholeWords := MatchWholeWord;
      frmMain.sciSearchReplace.SearchCaseSensitive := CaseSensitive;
      frmMain.sciSearchReplace.SearchRegex := RegEx;
      frmMain.sciSearchReplace.SearchBackwards := (not SearchForward);
      frmMain.sciSearchReplace.SearchText := SearchFor;
      Screen.Cursor := crHourGlass;
      frmMain.sciSearchReplace.DoSearchReplaceText(False, frmMain.sciSearchReplace.SearchBackwards);
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure DoReplaceNormal(SearchFromCaret, MatchWholeWord, CaseSensitive, RegEx, SearchForward: Boolean; SearchFor, ReplaceWith: String; ReplaceMode: Byte = REPLACE_ONCE);
begin
  if (Configuration.UseOldReplaceDialog) then
    frmMain.sciSearchReplace.ShowReplaceDialog
  else begin
    with frmSearchFor do begin
      OldSearchTerm := SearchFor;
      if (RegEx) then begin
        SearchFor := StringReplace(SearchFor, '\s', '[\t ]', [rfReplaceAll]);
        SearchFor := StringReplace(SearchFor, '\S', '[^\t ]', [rfReplaceAll]);
      end;

      THackedSearchReplace(frmMain.sciSearchReplace).SetSearchForCaret(SearchFromCaret);
      frmMain.sciSearchReplace.SearchWholeWords := MatchWholeWord;
      frmMain.sciSearchReplace.SearchCaseSensitive := CaseSensitive;
      frmMain.sciSearchReplace.SearchRegex := RegEx;
      frmMain.sciSearchReplace.SearchBackwards := (not SearchForward);
      frmMain.sciSearchReplace.SearchText := SearchFor;
      frmMain.sciSearchReplace.ReplaceText := ReplaceWith;
      Screen.Cursor := crHourGlass;
      case (ReplaceMode) of
        REPLACE_ONCE: frmMain.sciSearchReplace.DoSearchReplaceText(True, frmMain.sciSearchReplace.SearchBackwards, rctReplace);
        REPLACE_ALL: frmMain.sciSearchReplace.DoSearchReplaceText(True, frmMain.sciSearchReplace.SearchBackwards, rctReplaceAll);
        else frmMain.sciSearchReplace.DoSearchReplaceText(True, frmMain.sciSearchReplace.SearchBackwards);
      end;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure DoSearchAgain(SearchForward: Boolean);
begin
  THackedSearchReplace(frmMain.sciSearchReplace).SetSearchForCaret(True);
  frmMain.sciSearchReplace.DoSearchReplaceText(False, (not SearchForward));
end;

// I don't know if this is only temporary, I hope so ;/

{ THackedSearchReplace }

function THackedSearchReplace.GetSearchForCaret: Boolean;
begin
  Result := FSearchFromCaretInt;
end;

procedure THackedSearchReplace.SetSearchForCaret(Search: Boolean);
begin
  FSearchFromCaretInt := Search;
end;

end.
