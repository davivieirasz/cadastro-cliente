object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Autoriza'#231#227'o de usu'#225'rio'
  ClientHeight = 111
  ClientWidth = 353
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnActivate = FormActivate
  TextHeight = 15
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 111
    Align = alClient
    TabOrder = 0
    object pnlBotao: TPanel
      Left = 264
      Top = 1
      Width = 88
      Height = 109
      Align = alRight
      BorderStyle = bsSingle
      Color = clMedGray
      ParentBackground = False
      TabOrder = 0
      object btnOk: TButton
        Left = 4
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Ok'
        TabOrder = 0
        OnClick = btnOkClick
      end
      object btnCancelar: TButton
        Left = 4
        Top = 39
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = btnCancelarClick
      end
    end
    object pnlLogin2: TPanel
      Left = 1
      Top = 1
      Width = 263
      Height = 109
      Align = alClient
      BorderStyle = bsSingle
      Color = clMedGray
      ParentBackground = False
      TabOrder = 1
      object lbLoginUsu: TLabel
        Left = 32
        Top = 32
        Width = 48
        Height = 17
        Caption = 'Usu'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbSenhaUsu: TLabel
        Left = 42
        Top = 59
        Width = 38
        Height = 17
        Caption = 'Senha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtLogin: TEdit
        Left = 86
        Top = 32
        Width = 131
        Height = 23
        TabOrder = 0
      end
      object edtSenha: TEdit
        Left = 86
        Top = 61
        Width = 131
        Height = 23
        PasswordChar = '*'
        TabOrder = 1
      end
    end
  end
end
