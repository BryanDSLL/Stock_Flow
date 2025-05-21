{*******************************************************}
{                                                       }
{     Delphi VCL Extensions (RX) demo program           }
{                                                       }
{     Copyright (c) 1996 AO ROSNO                       }
{     Copyright (c) 1997, 1998 Master-Bank              }
{                                                       }
{*******************************************************}

program DbExpl32;

uses
  Forms,
  SysUtils,
  RxDBExcpt,
  RxAppUtils,
  RxFileUtil,
  RxVerInf,
  RxVCLUtils,
  Main in 'MAIN.PAS' {DBExplorerMainForm},
  ChildWin in 'CHILDWIN.PAS' {MDIChild},
  OpenDlg in 'OPENDLG.PAS' {OpenDatabaseDlg},
  DestTab in 'DESTTAB.PAS' {DestTableDlg},
  About in 'ABOUT.PAS' {AboutDlg},
  EditPict in 'EDITPICT.PAS' {PictEditDlg},
  EditStr in 'EDITSTR.PAS' {StrEditDlg},
  ViewBlob in 'VIEWBLOB.PAS' {BlobViewDlg},
  FiltDlg in 'FILTDLG.PAS' {FilterDialog},
  OptDlg in 'OPTDLG.PAS' {OptionsDialog},
  SrcTab in 'SRCTAB.PAS' {SrcTableDlg},
  SqlMon in 'SQLMON.PAS' {TraceSQL},
  Options in 'OPTIONS.PAS',
  RenDlg in 'RENDLG.PAS' {RenameDialog},
  BdeInfo in 'BDEINFO.PAS',
  BdeProp in 'BDEPROP.PAS' {BdePropertyDlg};

{$R *.RES}

function Main_ini: string;
begin
  if Win32Platform <> 2 then // non NT
    Result := ChangeFileExt(IncludeTrailingPathDelimiter(GetWindowsDir()) + ExtractFileName(ParamStr(0)),'.ini')
  else
    Result := ChangeFileExt(ParamStr(0),'.ini');
end;

begin
  Application.Initialize;
  { Uncomment next line to allow start only one instance of DBEXPL32.EXE  }
  { if ActivatePrevInstance(TDBExplorerMainForm.ClassName, '') then Exit; }
  {$IFDEF RX_D11}
  Application.MainFormOnTaskbar := True;
  {$ENDIF}
  RxAppUtils.OnGetDefaultIniName := Main_ini;
  Application.Title := 'Database Explorer';
  DBErrorIntercept;
  Application.CreateForm(TDBExplorerMainForm, DBExplorerMainForm);
  Application.Run;
end.
