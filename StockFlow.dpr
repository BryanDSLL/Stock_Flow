program StockFlow;

uses
  Vcl.Forms,
  uStockFlow in 'uStockFlow.pas' {frmStockFlow},
  uDTMConexao in 'DataModule\uDTMConexao.pas' {dtmPrincipal: TDataModule},
  uTelaHeranca in 'Heranca\uTelaHeranca.pas' {frmTelaHeranca},
  uCadCategoria in 'cadastro\uCadCategoria.pas' {frmCadCategoria},
  UEnum in 'UEnum.pas',
  uCadPessoa in 'cadastro\uCadPessoa.pas' {frmCadPessoa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmStockFlow, frmStockFlow);
  Application.CreateForm(TfrmTelaHeranca, frmTelaHeranca);
  Application.CreateForm(TfrmCadCategoria, frmCadCategoria);
  Application.CreateForm(TfrmCadPessoa, frmCadPessoa);
  Application.Run;
end.
