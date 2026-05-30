object frmCadastroCliente: TfrmCadastroCliente
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 602
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnActivate = FormActivate
  TextHeight = 15
  object pnl_clientes: TPanel
    Left = 0
    Top = 0
    Width = 481
    Height = 602
    Align = alClient
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1326
    ExplicitHeight = 635
    object GroupBox1: TGroupBox
      Left = 1
      Top = 49
      Width = 479
      Height = 552
      Align = alClient
      Caption = 'Novo Cliente:'
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 55
      ExplicitWidth = 1324
      ExplicitHeight = 585
      object lbBairro: TLabel
        Left = 83
        Top = 235
        Width = 39
        Height = 20
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lbCep: TLabel
        Left = 93
        Top = 148
        Width = 29
        Height = 20
        Caption = 'Cep:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lbCidade: TLabel
        Left = 75
        Top = 264
        Width = 47
        Height = 20
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lbCpf: TLabel
        Left = 67
        Top = 59
        Width = 55
        Height = 20
        Caption = 'Cpf/Cnpj:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lbEmail: TLabel
        Left = 81
        Top = 88
        Width = 41
        Height = 20
        Caption = 'E-mail:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lbEndereço: TLabel
        Left = 59
        Top = 177
        Width = 63
        Height = 20
        Caption = 'Endere'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lbNomeCliente: TLabel
        Left = 82
        Top = 30
        Width = 40
        Height = 20
        Caption = 'Nome:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lbNumero: TLabel
        Left = 104
        Top = 206
        Width = 18
        Height = 20
        Caption = 'N'#186':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lbTelefone: TLabel
        Left = 66
        Top = 119
        Width = 56
        Height = 20
        Cursor = crHandPoint
        Caption = 'Telefone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lbUF: TLabel
        Left = 101
        Top = 293
        Width = 21
        Height = 20
        Caption = 'UF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object pnlBtnCadastrar: TPanel
        Left = 128
        Top = 446
        Width = 201
        Height = 44
        Cursor = crHandPoint
        Caption = 'Cadastrar'
        Color = clGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 12
        TabStop = True
        OnClick = pnlBtnCadastrarClick
        OnMouseEnter = pnlBtnCadastrarMouseEnter
        OnMouseLeave = pnlBtnCadastrarMouseLeave
      end
      object btnConsultar: TButton
        Left = 335
        Top = 149
        Width = 75
        Height = 23
        Caption = 'Consultar'
        TabOrder = 5
        OnClick = btnConsultarClick
      end
      object cbUF: TEdit
        Left = 128
        Top = 294
        Width = 77
        Height = 23
        TabOrder = 10
      end
      object editBairro: TEdit
        Left = 128
        Top = 236
        Width = 201
        Height = 23
        TabOrder = 8
      end
      object editCidade: TEdit
        Left = 128
        Top = 265
        Width = 201
        Height = 23
        TabOrder = 9
      end
      object editCpf: TMaskEdit
        Left = 128
        Top = 60
        Width = 201
        Height = 23
        TabOrder = 1
        Text = ''
        OnKeyPress = editCpfKeyPress
      end
      object editEmail: TEdit
        Left = 128
        Top = 89
        Width = 201
        Height = 23
        TabOrder = 2
      end
      object editEndereco: TEdit
        Left = 128
        Top = 178
        Width = 201
        Height = 23
        TabOrder = 6
      end
      object editNome: TEdit
        Left = 128
        Top = 29
        Width = 201
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object editNumero: TEdit
        Left = 128
        Top = 207
        Width = 113
        Height = 23
        TabOrder = 7
      end
      object editTelefone: TMaskEdit
        Left = 128
        Top = 118
        Width = 201
        Height = 25
        EditMask = '(99) 9 9999-9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 16
        ParentFont = False
        TabOrder = 3
        Text = '(  )       -    '
      end
      object edtCep: TEdit
        Left = 128
        Top = 149
        Width = 201
        Height = 23
        TabOrder = 4
      end
      object gbSituacao: TGroupBox
        Left = 128
        Top = 330
        Width = 113
        Height = 87
        Caption = 'Situa'#231#227'o:'
        TabOrder = 11
        object rbtnAtivo: TRadioButton
          Left = 9
          Top = 24
          Width = 48
          Height = 17
          Caption = 'Ativo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object rbtnInativo: TRadioButton
          Left = 9
          Top = 47
          Width = 70
          Height = 17
          Caption = 'Inativo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object pnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 479
      Height = 48
      Align = alTop
      Caption = 'CADASTRO DE CLIENTE '
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Georgia'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 1324
    end
  end
  object loClient: TRESTClient
    Params = <>
    SynchronizedEvents = False
    Left = 1274
    Top = 82
  end
  object loRequest: TRESTRequest
    Client = loClient
    Params = <>
    Response = loResponse
    SynchronizedEvents = False
    Left = 1274
    Top = 138
  end
  object loResponse: TRESTResponse
    Left = 1274
    Top = 194
  end
end
