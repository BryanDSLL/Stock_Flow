object frmStockFlow: TfrmStockFlow
  Left = 0
  Top = 0
  Caption = 'Stock Flow'
  ClientHeight = 661
  ClientWidth = 1264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 1080
    Top = 8
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Cliente1: TMenuItem
        Caption = 'Clientes'
        OnClick = Cliente1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Categorias1: TMenuItem
        Caption = 'Categorias'
        OnClick = Categorias1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object FECHAR1: TMenuItem
        Caption = 'FECHAR'
        OnClick = FECHAR1Click
      end
    end
    object Movimentao1: TMenuItem
      Caption = 'Movimenta'#231#227'o'
      object Vendas1: TMenuItem
        Caption = 'Vendas'
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object N5: TMenuItem
        Caption = 'Produtos'
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object Vendasporperodo1: TMenuItem
        Caption = 'Vendas por per'#237'odo'
      end
      object N7: TMenuItem
        Caption = '-'
      end
    end
  end
end
