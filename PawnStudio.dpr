program PawnStudio;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  Windows,
  Messages,
  UnitfrmMain in 'UnitfrmMain.pas' {frmMain},
  UnitFunctions in 'UnitFunctions.pas',
  UnitDocuments in 'UnitDocuments.pas',
  UnitfrmCreateNewFile in 'UnitfrmCreateNewFile.pas' {frmCreateNewFile},
  UnitCodeInspector in 'UnitCodeInspector.pas',
  UnitCodeProcessor in 'UnitCodeProcessor.pas',
  UnitConfigManager in 'UnitConfigManager.pas',
  UnitExtensionManager in 'UnitExtensionManager.pas',
  UnitfrmAllFilesDialog in 'UnitfrmAllFilesDialog.pas' {frmAllFilesDialog},
  UnitfrmExportAsHTML in 'UnitfrmExportAsHTML.pas' {frmExportAsHTML},
  UnitfrmPrint in 'UnitfrmPrint.pas' {frmPrint},
  UnitfrmSearchFor in 'UnitfrmSearchFor.pas' {frmSearchFor},
  UnitSearchUtils in 'UnitSearchUtils.pas',
  UnitfrmGoToLine in 'UnitfrmGoToLine.pas' {frmGoToLine},
  UnitCompile in 'UnitCompile.pas',
  UnitfrmSettings in 'UnitfrmSettings.pas' {frmSettings},
  UnitXPMs in 'UnitXPMs.pas',
  UnitfrmInputBox in 'UnitfrmInputBox.pas' {frmInputBox},
  UnitfrmSelectColor in 'UnitfrmSelectColor.pas' {frmSelectColor},
  UnitfrmBatchCompiler in 'UnitfrmBatchCompiler.pas' {frmBatchCompiler},
  UnitCSResultSaver in 'UnitCSResultSaver.pas',
  UnitfrmCloseDialog in 'UnitfrmCloseDialog.pas' {frmCloseDialog},
  UnitfrmAbout in 'UnitfrmAbout.pas' {frmAbout},
  UnitfrmTaskMgr in 'UnitfrmTaskMgr.pas' {frmTaskMgr};

{$R *.res}

{
  The software is Copyright (C) 2006-2008, Christian "Basic-Master" Hammacher (AlliedModders)

  Pawn Studio is distributed under the GNU General Public License. You can find
  a copy of it at http://www.gnu.org/copyleft/gpl.html.

  -----------------------------------------------------------------------------

  Used Components/Component Packs:
  - JVCL 3.33                                         http://jvcl.sf.net
  - Indy 9                                            http://indyproject.org
  - SpTBX 1.8 (including TBX, TB2000, TNT Controls)   http://club.telepolis.com/silverpointdev
  - mbTBX                                             http://mxs.bergsoft.net
  - TBX Theme Pack (TBX 2.1)                          http://www.rmklever.com/delphitbx.html
  - FlatStyle Pack                                    http://www.torry.net
  - PngComponents                                     http://thany.org/
  - DelphiSci (Scintilla)                             http://delphisci.sourceforge.net
  - Direct MySQL Components                           http://sourceforge.net/projects/directsql
  - madExcept Components (non-professional)           http://www.madshi.net
  - Microsoft Scripting Host Active-X Component       (Active-X import)
  - Nuvola KDE Icons by Vignoni David                 http://kdelook.org
  - Half-Life Icons by Vasili Vorotnikov              http://vaksa.net
  - Auto-Complete Icons by Anjuta Dev Team, Thanks!   http://anjuta.sourceforge.net

  -----------------------------------------------------------------------------

  Visit http://pawnstudio.sourceforge.net!
}

var i: Integer;
    Handle: THandle;
    CopyInfo: TCopyDataStruct;
begin
  // send open-message to instance
  Handle := FindWindow('TfrmMain', 'Pawn Studio');
  if (Handle <> 0) then begin
    for i := 1 to ParamCount do begin
      CopyInfo.dwData := 0;
      CopyInfo.cbData := Length(ParamStr(i)) +1;
      CopyInfo.lpData := PChar(ParamStr(i));
      SendMessage(Handle, WM_COPYDATA, 0, LongInt(@CopyInfo));
    end;
    SetForegroundWindow(Handle);
    exit;
  end;
  // no instance - create it
  Application.Initialize;
  Application.Title := 'Pawn Studio';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmCreateNewFile, frmCreateNewFile);
  Application.CreateForm(TfrmAllFilesDialog, frmAllFilesDialog);
  Application.CreateForm(TfrmSearchFor, frmSearchFor);
  Application.CreateForm(TfrmGoToLine, frmGoToLine);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TfrmCloseDialog, frmCloseDialog);
  Application.CreateForm(TfrmInputBox, frmInputBox);
  Application.CreateForm(TfrmSelectColor, frmSelectColor);
  Application.CreateForm(TfrmPrint, frmPrint);
  Application.CreateForm(TfrmBatchCompiler, frmBatchCompiler);
  Application.CreateForm(TfrmExportAsHTML, frmExportAsHTML);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmTaskMgr, frmTaskMgr);
  Application.Run;
end.
