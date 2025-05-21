inherited frmCadPessoa: TfrmCadPessoa
  Caption = 'CADASTRO DE PESSOAS'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pgcPrincipal: TPageControl
    inherited tabListagem: TTabSheet
      inherited pnlListagemTopo: TPanel
        StyleElements = [seFont, seClient, seBorder]
        inherited lblIndice: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited mskPesquisar: TMaskEdit
          StyleElements = [seFont, seClient, seBorder]
        end
      end
      inherited grdListagem: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'cd_pessoa'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_pessoa'
            Width = 500
            Visible = True
          end>
      end
    end
  end
  inherited pnlRodape: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited qryListagem: TZQuery
    SQL.Strings = (
      'select cd_pessoa, nm_pessoa from sistema.pessoas;'
      '')
    object qryListagemcd_pessoa: TZUnicodeStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_pessoa'
      Required = True
      Size = 6
    end
    object qryListagemnm_pessoa: TZUnicodeStringField
      DisplayLabel = 'Nome'
      FieldName = 'nm_pessoa'
      Required = True
      Size = 255
    end
  end
end
