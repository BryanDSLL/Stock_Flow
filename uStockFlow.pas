unit uStockFlow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDTMConexao;

type
  TfrmStockFlow = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentao1: TMenuItem;
    Relatrio1: TMenuItem;
    Cliente1: TMenuItem;
    N1: TMenuItem;
    Categorias1: TMenuItem;
    N2: TMenuItem;
    Produtos1: TMenuItem;
    N3: TMenuItem;
    Vendas1: TMenuItem;
    Clientes1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Vendasporperodo1: TMenuItem;
    N7: TMenuItem;
    FECHAR1: TMenuItem;
    procedure FECHAR1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Categorias1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockFlow: TfrmStockFlow;

implementation

{$R *.dfm}

uses uCadCategoria, uTelaHeranca, uCadPessoa;

// CRIA A CONEXÃO COM O BANCO DE DADOS
procedure TfrmStockFlow.FormCreate(Sender: TObject);
begin

  dtmPrincipal := TdtmPrincipal.Create(self);

  with dtmPrincipal.conexaoDB do
  begin
    SQLHourGlass := True;
    LibraryLocation := 'C:\Users\bryan\OneDrive\Documentos\Embarcadero\Studio\Projects\StockFlow\libpq.dll';
    Protocol := 'postgresql';
    hostname := 'localhost';
    Database := 'StockFlow';
    User := 'postgres';
    Password := '#abc123#';
    Port := 5432;
    Connected := True;
  end;

end;


procedure TfrmStockFlow.Categorias1Click(Sender: TObject);
begin
  frmCadCategoria := TfrmCadCategoria.Create(Self);
  frmCadCategoria.ShowModal;
  frmCadCategoria.Release;
end;


// BOTÃO FECHAR (MENU)
procedure TfrmStockFlow.Cliente1Click(Sender: TObject);
begin
  frmCadPessoa := TfrmCadPessoa.Create(Self);
  frmCadPessoa.ShowModal;
  frmCadPessoa.Release;
end;

procedure TfrmStockFlow.FECHAR1Click(Sender: TObject);
begin
  CLOSE;
end;





end.
