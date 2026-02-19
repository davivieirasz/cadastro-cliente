object frm_cadastro_cliente: Tfrm_cadastro_cliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 496
  ClientWidth = 413
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
    Width = 413
    Height = 496
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 399
    object pnlCliente: TPanel
      Left = 1
      Top = 1
      Width = 411
      Height = 494
      Align = alClient
      Color = clSilver
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 397
      object gpboxNovoCadastro: TGroupBox
        Left = 1
        Top = 1
        Width = 409
        Height = 492
        Align = alClient
        Caption = 'Novo Cadastro'
        Color = clSilver
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        ExplicitWidth = 395
        object lbCpf: TLabel
          Left = 41
          Top = 140
          Width = 101
          Height = 21
          Caption = 'CPF/CNPJ:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Elephant'
          Font.Style = []
          ParentFont = False
        end
        object lbEmail: TLabel
          Left = 85
          Top = 194
          Width = 57
          Height = 21
          Caption = 'E-mail:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Elephant'
          Font.Style = []
          ParentFont = False
        end
        object lbNomeCliente: TLabel
          Left = 16
          Top = 106
          Width = 126
          Height = 21
          Caption = 'Nome completo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Elephant'
          Font.Style = []
          ParentFont = False
        end
        object lbTelefone: TLabel
          Left = 70
          Top = 167
          Width = 72
          Height = 21
          Cursor = crHandPoint
          Caption = 'Telefone:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Elephant'
          Font.Style = []
          ParentFont = False
        end
        object lbEndereço: TLabel
          Left = 61
          Top = 225
          Width = 81
          Height = 21
          Caption = 'Endere'#231'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Elephant'
          Font.Style = []
          ParentFont = False
        end
        object lbNumero: TLabel
          Left = 114
          Top = 252
          Width = 28
          Height = 21
          Caption = 'N'#186':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Elephant'
          Font.Style = []
          ParentFont = False
        end
        object lbBairro: TLabel
          Left = 84
          Top = 285
          Width = 58
          Height = 21
          Caption = 'Bairro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Elephant'
          Font.Style = []
          ParentFont = False
        end
        object lbCidade: TLabel
          Left = 82
          Top = 314
          Width = 60
          Height = 21
          Caption = 'Cidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Elephant'
          Font.Style = []
          ParentFont = False
        end
        object lbUF: TLabel
          Left = 110
          Top = 341
          Width = 32
          Height = 21
          Caption = 'UF:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Elephant'
          Font.Style = []
          ParentFont = False
        end
        object lbStatus: TLabel
          Left = 87
          Top = 375
          Width = 55
          Height = 21
          Caption = 'Status:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Elephant'
          Font.Style = []
          ParentFont = False
        end
        object editNome: TEdit
          Left = 148
          Top = 109
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
        object editEmail: TEdit
          Left = 148
          Top = 196
          Width = 201
          Height = 23
          TabOrder = 3
        end
        object editNumero: TEdit
          Left = 148
          Top = 254
          Width = 113
          Height = 23
          TabOrder = 5
        end
        object editBairro: TEdit
          Left = 148
          Top = 283
          Width = 201
          Height = 23
          TabOrder = 6
        end
        object editCidade: TEdit
          Left = 148
          Top = 312
          Width = 201
          Height = 23
          TabOrder = 7
        end
        object cbUF: TComboBox
          Left = 148
          Top = 341
          Width = 51
          Height = 23
          Style = csDropDownList
          TabOrder = 8
          Items.Strings = (
            'AC'
            'AL'
            'AM'
            'AP'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MG'
            'MS'
            'MT'
            'PA'
            'PB'
            'PE'
            'PI'
            'PR'
            'RJ'
            'RN'
            'RO'
            'RR'
            'RS'
            'SC'
            'SE'
            'SP'
            'TO')
        end
        object pnlTitulo: TPanel
          Left = 2
          Top = 17
          Width = 405
          Height = 64
          Align = alTop
          Caption = 'CADASTRO DE CLIENTE '
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Stencil'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 11
          ExplicitWidth = 391
        end
        object editEndereco: TEdit
          Left = 148
          Top = 225
          Width = 201
          Height = 23
          TabOrder = 4
        end
        object pnlBtnCadastrar: TPanel
          Left = 110
          Top = 431
          Width = 189
          Height = 44
          Cursor = crHandPoint
          Caption = 'Cadastrar'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Stencil'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 12
          TabStop = True
          OnClick = pnlBtnCadastrarClick
          OnMouseEnter = pnlBtnCadastrarMouseEnter
          OnMouseLeave = pnlBtnCadastrarMouseLeave
        end
        object rbtnAtivo: TRadioButton
          Left = 148
          Top = 379
          Width = 48
          Height = 17
          Caption = 'Ativo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object rbtnInativo: TRadioButton
          Left = 210
          Top = 379
          Width = 70
          Height = 17
          Caption = 'Inativo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object editTelefone: TMaskEdit
          Left = 148
          Top = 170
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
          TabOrder = 2
          Text = '(  )       -    '
        end
        object editCpf: TMaskEdit
          Left = 148
          Top = 141
          Width = 201
          Height = 23
          TabOrder = 1
          Text = ''
          OnKeyPress = editCpfKeyPress
        end
      end
    end
  end
end
