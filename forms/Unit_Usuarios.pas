unit Unit_Usuarios;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TfrmCadastroUsuario = class(TForm)
    pnlPrincipal  : TPanel;
    gbTitulo      : TGroupBox;
    pnlTitulo     : TPanel;
    lbNomeUsu     : TLabel;
    edtNomeUsu    : TEdit;
    lbEmailUsu    : TLabel;
    edtEmailUsu   : TEdit;
    lbLoginUsu    : TLabel;
    edtLoginUsu   : TEdit;
    lbSenhaUsu    : TLabel;
    edtSenhaUsu   : TEdit;
    userAdm       : TCheckBox;
    pnlCadastrar  : TPanel;

    procedure pnlCadastrarMouseEnter(Sender: TObject);
    procedure pnlCadastrarMouseLeave(Sender: TObject);
    procedure pnlCadastrarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

{$R *.dfm}

uses Unit_DM;


procedure TfrmCadastroUsuario.pnlCadastrarClick(Sender: TObject);

var
  nomeUsu  : String;
  emailUsu : String;
  usuario  : String;
  senhaUsu : String;
  perfil   : String;

begin
  nomeUsu  := edtNomeUsu.Text;
  emailUsu := edtEmailUsu.Text;
  usuario  := edtLoginUsu.Text;
  senhaUsu := edtSenhaUsu.Text;

  if userAdm.Checked then
  begin
    perfil := 'Admin';
  end
  else
  begin
    perfil := 'User';
  end;


  if (Trim(nomeUsu)  = '') or
     (Trim(emailUsu) = '') or
     (Trim(usuario)  = '') or
     (Trim(senhaUsu) = '') then

  begin
    Application.MessageBox('Por favor, preencha todos os campos.', 'Aviso.');
    Exit;
  end;

  if Pos('@', emailUsu) = 0 then
  begin
    Application.MessageBox('E-mail inválido!', 'Aviso.');
    Exit;
  end;


  //Executa a ação de cadastrar no BD
  Try
    with DM.execUsu do

    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO E000USU (nome, email, usuario, senha, tipo_usuario)');
      SQL.Add('VALUES (:nome, :email, :usuario, :senha, :perfil)');

      ParamByName('nome').AsString    := nomeUsu;
      ParamByName('email').AsString   := emailUsu;
      ParamByName('usuario').AsString := usuario;
      ParamByName('senha').AsString   := senhaUsu;
      ParamByName('perfil').AsString  := perfil;


      ExecSQL;
      DM.conexao.Commit;
    end;

    DM.selectUsu.Close;
    DM.selectUsu.Open;

    Application.MessageBox('Usuário cadastrado com sucesso!', 'Aviso.');

    //Limpa dados do formulário após o cadastro
    edtNomeUsu.Clear;
    edtEmailUsu.Clear;
    edtLoginUsu.Clear;
    edtSenhaUsu.Clear;
    userAdm.Checked := False;

    edtNomeUsu.SetFocus;

  except
    on E: Exception do
    begin
      Application.MessageBox(
        PChar('Não foi possível cadastrar o usuário.' + sLineBreak +
              'Motivo: ' + E.Message),
        PChar('Erro ao cadastrar'),
            MB_OK or MB_ICONERROR);
    end;
  end;

end;


procedure TfrmCadastroUsuario.pnlCadastrarMouseEnter(Sender: TObject);
begin
  pnlCadastrar.Color := $0000FF80;
end;


procedure TfrmCadastroUsuario.pnlCadastrarMouseLeave(Sender: TObject);
begin
  pnlCadastrar.Color := clgreen;
end;

end.
