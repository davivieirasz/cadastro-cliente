object frmConsultaUsuario: TfrmConsultaUsuario
  Left = 0
  Top = 0
  ClientHeight = 595
  ClientWidth = 1376
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
    Width = 1376
    Height = 595
    Align = alClient
    TabOrder = 0
    object pnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 1374
      Height = 72
      Align = alTop
      Caption = 'USU'#193'RIOS CADASTRADOS'
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
    object pnlMenuLateral: TPanel
      Left = 1263
      Top = 137
      Width = 112
      Height = 435
      Align = alRight
      BorderStyle = bsSingle
      TabOrder = 1
      object btnEditar: TButton
        Left = 16
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 0
        OnClick = btnEditarClick
      end
      object btnCancelar: TButton
        Left = 16
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 1
        Visible = False
        OnClick = btnCancelarClick
      end
      object btnSalvar: TButton
        Left = 16
        Top = 55
        Width = 75
        Height = 25
        Caption = 'Salvar'
        Enabled = False
        TabOrder = 2
        OnClick = btnSalvarClick
      end
      object btnExcluir: TButton
        Left = 16
        Top = 86
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 3
        OnClick = btnExcluirClick
      end
    end
    object gbInfo: TGroupBox
      Left = 1
      Top = 73
      Width = 1374
      Height = 64
      Align = alTop
      Caption = 'Filtros de Busca'
      TabOrder = 2
      object lbValor: TLabel
        Left = 2
        Top = 40
        Width = 33
        Height = 22
        Align = alLeft
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 17
      end
      object cbFiltros: TComboBox
        Left = 2
        Top = 17
        Width = 1370
        Height = 22
        Align = alTop
        Style = csOwnerDrawFixed
        TabOrder = 0
        Items.Strings = (
          'SELECIONE '
          'ID'
          'NOME'
          'USU'#193'RIO')
      end
      object editValor: TEdit
        Left = 35
        Top = 40
        Width = 1153
        Height = 22
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 23
      end
      object btnBuscar: TButton
        Left = 1188
        Top = 40
        Width = 92
        Height = 22
        Align = alRight
        Caption = 'Buscar'
        TabOrder = 2
        OnClick = btnBuscarClick
      end
      object btnLimparBusca: TButton
        Left = 1280
        Top = 40
        Width = 92
        Height = 22
        Align = alRight
        Caption = 'Limpar Busca'
        TabOrder = 3
        OnClick = btnLimparBuscaClick
      end
    end
    object dbgridDados: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 140
      Width = 1256
      Height = 429
      Align = alClient
      Color = clWhite
      DataSource = DM.DSUsuario
      DrawingStyle = gdsClassic
      FixedColor = clWhite
      GradientEndColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = 'ID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
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
          Width = 300
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
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'usuario'
          Title.Caption = 'USU'#193'RIO'
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
          FieldName = 'senha'
          Title.Caption = 'SENHA'
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
          FieldName = 'tipo_usuario'
          Title.Caption = 'TIPO DE USU'#193'RIO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end>
    end
    object pnlModo: TPanel
      Left = 1
      Top = 572
      Width = 1374
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
      TabOrder = 4
    end
  end
end
