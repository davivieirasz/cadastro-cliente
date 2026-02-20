object frmConsultaCliente: TfrmConsultaCliente
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  ClientHeight = 595
  ClientWidth = 1597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnShow = FormShow
  TextHeight = 15
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1597
    Height = 595
    Align = alClient
    TabOrder = 0
    object pnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 1595
      Height = 72
      Align = alTop
      Caption = 'CARTEIRA DE CLIENTES'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Stencil'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object pnlDados: TPanel
      Left = 1
      Top = 139
      Width = 1595
      Height = 455
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object dbgridDados: TDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 1497
        Height = 425
        Align = alClient
        Color = clWhite
        DataSource = DM.DSCliente
        DrawingStyle = gdsClassic
        FixedColor = clWhite
        GradientEndColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBackground
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'id'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Title.Caption = 'ID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'NOME'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf'
            Title.Caption = 'CPF/CNPJ'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'E-MAIL'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone'
            Title.Caption = 'TELEFONE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Title.Caption = 'ENDERE'#199'O'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero'
            Title.Caption = 'N'#218'MERO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bairro'
            Title.Caption = 'BAIRRO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cidade'
            Title.Caption = 'CIDADE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'uf'
            Title.Caption = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Title.Caption = 'SITUA'#199#195'O'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBackground
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object pnlMenuLateral: TPanel
        Left = 1504
        Top = 1
        Width = 90
        Height = 431
        Align = alRight
        BorderStyle = bsSingle
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        StyleName = 'Windows'
        object btnEditar: TButton
          Left = 6
          Top = 16
          Width = 75
          Height = 25
          Cursor = crHandPoint
          Caption = 'Editar'
          TabOrder = 0
          OnClick = btnEditarClick
        end
        object btnSalvar: TButton
          Left = 6
          Top = 63
          Width = 75
          Height = 25
          Cursor = crHandPoint
          Caption = 'Salvar'
          Enabled = False
          TabOrder = 1
          OnClick = btnSalvarClick
        end
        object btnExcluir: TButton
          Left = 6
          Top = 110
          Width = 75
          Height = 25
          Cursor = crHandPoint
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnExcluirClick
        end
        object btnCancelar: TButton
          Left = 7
          Top = 17
          Width = 75
          Height = 25
          Cursor = crHandPoint
          Caption = 'Cancelar'
          TabOrder = 3
          Visible = False
          OnClick = btnCancelarClick
        end
      end
      object pnlModo: TPanel
        Left = 1
        Top = 432
        Width = 1593
        Height = 22
        Align = alBottom
        Caption = 'MODO: CONSULTA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
      end
    end
    object pnlBusca: TPanel
      Left = 1
      Top = 73
      Width = 1595
      Height = 66
      Align = alTop
      TabOrder = 2
      object gbInfo: TGroupBox
        Left = 1
        Top = 1
        Width = 1593
        Height = 64
        Align = alClient
        Caption = 'Filtros de Busca'
        TabOrder = 0
        object lbValor: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 42
          Width = 33
          Height = 17
          Align = alLeft
          Alignment = taCenter
          Caption = 'Valor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 2
          ExplicitTop = 39
        end
        object bntBuscar: TButton
          Left = 1407
          Top = 39
          Width = 92
          Height = 23
          Cursor = crHandPoint
          Align = alRight
          Caption = 'Buscar'
          TabOrder = 0
          OnClick = bntBuscarClick
        end
        object cbFiltros: TComboBox
          Left = 2
          Top = 17
          Width = 1589
          Height = 22
          Align = alTop
          Style = csOwnerDrawFixed
          TabOrder = 1
          Items.Strings = (
            'SELECIONE '
            'ID'
            'NOME'
            'CPF/CNPJ')
        end
        object editValor: TEdit
          Left = 41
          Top = 39
          Width = 1366
          Height = 23
          Align = alClient
          BevelOuter = bvRaised
          TabOrder = 2
        end
        object btnLimparBusca: TButton
          Left = 1499
          Top = 39
          Width = 92
          Height = 23
          Cursor = crHandPoint
          Align = alRight
          Caption = 'Limpar Busca'
          TabOrder = 3
          OnClick = btnLimparBuscaClick
        end
      end
    end
  end
end
