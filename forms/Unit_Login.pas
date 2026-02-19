unit Unit_Login;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmLogin = class(TForm)
    pnlPrincipal  : TPanel;
    pnlBotao      : TPanel;
    btnOk         : TButton;
    btnCancelar   : TButton;
    pnlLogin2     : TPanel;
    lbLoginUsu    : TLabel;
    edtLogin      : TEdit;
    lbSenhaUsu    : TLabel;
    edtSenha      : TEdit;

    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

Uses Unit_Principal, Unit_DM;


procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja fechar o sistema?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    Application.Terminate;
  end
end;


procedure TfrmLogin.btnOkClick(Sender: TObject);

var
usuario : String;
senha   : String;

begin
  usuario := edtLogin.Text;
  senha   := edtSenha.Text;

    if (usuario = '') or (senha = '') then
    begin
      Application.MessageBox('Informe usuário e senha.', 'Autenticação.');
      Exit;
    end;

  DM.selectUsu.Close;
  DM.selectUsu.SQL.Clear;
  DM.selectUsu.SQL.Add('SELECT * FROM E000USU');
  DM.selectUsu.SQL.Add('WHERE USUARIO = :usuario');
  DM.selectUsu.SQL.Add('AND SENHA = :SENHA');

  DM.selectUsu.ParamByName('USUARIO').AsString := usuario;
  DM.selectUsu.ParamByName('SENHA').AsString   := senha;
  DM.selectUsu.Open;

  if  DM.selectUsu.IsEmpty then
  begin
    Application.MessageBox('Usuário ou senha inválidos.', 'Aviso.');
    Exit;
  end;

  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  frmPrincipal.Show;
  Self.Hide;
end;


procedure TfrmLogin.FormActivate(Sender: TObject);
begin
  edtLogin.SetFocus;
end;

end.
