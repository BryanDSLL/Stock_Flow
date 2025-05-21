program RxDemo;

uses
  SysUtils,
  Forms,
  RxExcptDlg,
  RxDBExcpt,
  RxAppUtils,
  RxFileUtil,
  RxVerInf,
  RxVCLUtils,
  Main in 'MAIN.PAS' {MainForm},
  Dbaware in 'DBAWARE.PAS' {DBAwareForm},
  Tools in 'TOOLS.PAS' {ToolsForm},
  Ctrls in 'CTRLS.PAS' {ControlsForm},
  About in 'ABOUT.PAS' {AboutForm},
  PageDemo in 'PAGEDEMO.PAS' {ClientAssistant};

{$R *.RES}

{$I RX.INC}
function Main_ini: string;
begin
  if Win32Platform <> 2 then // non NT
    Result := ChangeFileExt(IncludeTrailingPathDelimiter(GetWindowsDir()) + ExtractFileName(ParamStr(0)),'.ini')
  else
    Result := ChangeFileExt(ParamStr(0),'.ini');
end;

begin
  Application.Initialize;
  {$IFDEF RX_D11}
  Application.MainFormOnTaskbar := True;
  {$ENDIF}
  RxAppUtils.OnGetDefaultIniName := Main_ini;
  Application.Title := 'RX Demo';
  RxErrorIntercept;
  DBErrorIntercept;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
