object frmCadastroUsuario: TfrmCadastroUsuario
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 378
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 582
    Height = 378
    Align = alClient
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 523
    object gbTitulo: TGroupBox
      Left = 1
      Top = 1
      Width = 580
      Height = 376
      Align = alClient
      Caption = 'Novo Cadastro'
      Color = clSilver
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      ExplicitWidth = 521
      object lbNomeUsu: TLabel
        Left = 56
        Top = 104
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
      object lbEmailUsu: TLabel
        Left = 125
        Top = 133
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
      object lbLoginUsu: TLabel
        Left = 114
        Top = 162
        Width = 68
        Height = 21
        Caption = 'Usu'#225'rio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Elephant'
        Font.Style = []
        ParentFont = False
      end
      object lbSenhaUsu: TLabel
        Left = 129
        Top = 191
        Width = 53
        Height = 21
        Caption = 'Senha:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Elephant'
        Font.Style = []
        ParentFont = False
      end
      object pnlTitulo: TPanel
        Left = 2
        Top = 17
        Width = 576
        Height = 56
        Align = alTop
        Caption = 'CADASTRO DE USU'#193'RIO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -29
        Font.Name = 'Stencil'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 517
      end
      object edtNomeUsu: TEdit
        Left = 188
        Top = 105
        Width = 197
        Height = 23
        TabOrder = 1
      end
      object edtEmailUsu: TEdit
        Left = 188
        Top = 134
        Width = 197
        Height = 23
        TabOrder = 2
      end
      object edtLoginUsu: TEdit
        Left = 188
        Top = 163
        Width = 197
        Height = 23
        TabOrder = 3
      end
      object edtSenhaUsu: TEdit
        Left = 188
        Top = 192
        Width = 197
        Height = 23
        TabOrder = 4
      end
      object userAdm: TCheckBox
        Left = 188
        Top = 232
        Width = 104
        Height = 17
        Caption = 'Usu'#225'rio Admin'
        TabOrder = 5
      end
      object pnlCadastrar: TPanel
        Left = 188
        Top = 288
        Width = 197
        Height = 49
        Cursor = crHandPoint
        Caption = 'Cadastrar'
        Color = clGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Stencil'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 6
        OnClick = pnlCadastrarClick
        OnMouseEnter = pnlCadastrarMouseEnter
        OnMouseLeave = pnlCadastrarMouseLeave
      end
    end
  end
end
