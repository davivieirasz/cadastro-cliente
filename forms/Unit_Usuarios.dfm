object frmCadastroUsuario: TfrmCadastroUsuario
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 452
  ClientWidth = 578
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
    Width = 578
    Height = 452
    Align = alClient
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 582
    ExplicitHeight = 378
    object gbTitulo: TGroupBox
      Left = 1
      Top = 1
      Width = 576
      Height = 450
      Align = alClient
      Caption = 'Novo Cadastro'
      Color = clSilver
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      ExplicitWidth = 580
      ExplicitHeight = 376
      object lbNomeUsu: TLabel
        Left = 142
        Top = 105
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
      object lbEmailUsu: TLabel
        Left = 141
        Top = 134
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
      object lbLoginUsu: TLabel
        Left = 133
        Top = 163
        Width = 49
        Height = 20
        Caption = 'Usu'#225'rio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lbSenhaUsu: TLabel
        Left = 140
        Top = 192
        Width = 42
        Height = 20
        Caption = 'Senha:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object pnlTitulo: TPanel
        Left = 2
        Top = 17
        Width = 572
        Height = 56
        Align = alTop
        Caption = 'CADASTRO DE USU'#193'RIO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -29
        Font.Name = 'Georgia'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 576
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
      object pnlCadastrar: TPanel
        Left = 188
        Top = 336
        Width = 197
        Height = 49
        Cursor = crHandPoint
        Caption = 'Cadastrar'
        Color = clGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 5
        OnClick = pnlCadastrarClick
        OnMouseEnter = pnlCadastrarMouseEnter
        OnMouseLeave = pnlCadastrarMouseLeave
      end
      object gpSitUsuario: TGroupBox
        Left = 188
        Top = 242
        Width = 197
        Height = 71
        Caption = 'Permiss'#227'o:'
        TabOrder = 6
        object userAdm: TCheckBox
          Left = 17
          Top = 32
          Width = 104
          Height = 17
          Caption = 'Administrador'
          TabOrder = 0
        end
      end
    end
  end
end
