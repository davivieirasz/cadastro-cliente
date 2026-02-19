unit Unit_Clientes;

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
  Vcl.StdCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.NumberBox;

type
  Tfrm_cadastro_cliente = class(TForm)
    pnl_clientes      : TPanel;
    pnlCliente        : TPanel;
    lbNomeCliente     : TLabel;
    lbCpf             : TLabel;
    lbEmail           : TLabel;
    gpboxNovoCadastro : TGroupBox;
    lbTelefone        : TLabel;
    editNome          : TEdit;
    editEmail         : TEdit;
    lbEndereço        : TLabel;
    lbNumero          : TLabel;
    lbBairro          : TLabel;
    lbCidade          : TLabel;
    editNumero        : TEdit;
    editBairro        : TEdit;
    editCidade        : TEdit;
    lbUF              : TLabel;
    cbUF              : TComboBox;
    pnlTitulo         : TPanel;
    editEndereco      : TEdit;
    pnlBtnCadastrar   : TPanel;
    lbStatus          : TLabel;
    rbtnAtivo         : TRadioButton;
    rbtnInativo       : TRadioButton;
    editTelefone      : TMaskEdit;
    editCpf           : TMaskEdit;

    procedure pnlBtnCadastrarMouseEnter(Sender: TObject);
    procedure pnlBtnCadastrarMouseLeave(Sender: TObject);
    procedure pnlBtnCadastrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure editCpfKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadastro_cliente  : Tfrm_cadastro_cliente;

implementation

{$R *.dfm}

uses Unit_DM;


//Aceita só números no campo de CPF/CNPJ
procedure Tfrm_cadastro_cliente.editCpfKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
  begin
    Key := #0;
  end
  else
  begin
    editCpf.MaxLength := 14;
  end;
end;


//Já puxa com situação Ativo no formulário de cadastro
procedure Tfrm_cadastro_cliente.FormActivate(Sender: TObject);
begin
  rbtnAtivo.Checked := True;
end;


//Realiza o cadastro no BD
procedure Tfrm_cadastro_cliente.pnlBtnCadastrarClick(Sender: TObject);

  var
    status      : string;
    nomeCli     : String;
    cpfCli      : String;
    telefoneCli : String;
    emailCli    : String;
    enderecoCli : String;
    numeroCli   : String;
    bairroCli   : String;
    cidadeCli   : String;
    ufCli       : String;

begin
   if rbtnAtivo.Checked then
    status := 'Ativo'
  else
    status := 'Inativo';


  nomeCli     := editNome.Text;
  cpfCli      := editCpf.Text;
  telefoneCli := editTelefone.Text;
  emailCli    := editEmail.Text;
  enderecoCli := editEndereco.Text;
  numeroCli   := editNumero.Text;
  bairroCli   := editBairro.Text;
  cidadeCli   := editCidade.Text;
  ufCli       := cbUF.Text;


  //Valida se os campos estão preenchidos
  if (Trim(nomeCli)     = '') or
     (Trim(cpfCli)      = '') or
     (Trim(emailCli)    = '') or
     (Trim(telefoneCli) = '') or
     (Trim(enderecoCli) = '') or
     (Trim(numeroCli)   = '') or
     (Trim(bairroCli)   = '') or
     (Trim(cidadeCli)   = '') or
     (Trim(ufCli)       = '') then

  begin
    Application.MessageBox('Por favor, preencha todos os campos.', 'Aviso.');
    Exit;
  end;

  if Pos('@', emailCli) = 0 then
  begin
    Application.MessageBox('E-mail inválido!', 'Aviso.');
    Exit;
  end;


//Executa a ação de cadastrar no BD
  Try
    with DM.execCli do

    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO E000CLI (nome, cpf, email, telefone, endereco, numero, bairro, cidade, uf, status)');
      SQL.Add('VALUES (:nome, :cpf, :email, :telefone, :endereco, :numero, :bairro, :cidade, :uf, :status)');

      ParamByName('nome').AsString     := nomeCli;
      ParamByName('cpf').AsString      := cpfCli;
      ParamByName('telefone').AsString := telefoneCli;
      ParamByName('email').AsString    := emailCli;
      ParamByName('endereco').AsString := enderecoCli;
      ParamByName('numero').AsString   := numeroCli;
      ParamByName('bairro').AsString   := bairroCli;
      ParamByName('cidade').AsString   := cidadeCli;
      ParamByName('uf').AsString       := ufCli;
      ParamByName('status').AsString   := status;

      ExecSQL;
      DM.conexao.Commit;
    end;

    DM.selectCli.Close;
    DM.selectCli.Open;

    Application.MessageBox('Cliente cadastrado com sucesso!', 'Aviso.');

    //Limpa dados do formulário após o cadastro
      editNome.Clear;
      editCpf.Clear;
      editEmail.Clear;
      editTelefone.Clear;
      editEndereco.Clear;
      editNumero.Clear;
      editBairro.Clear;
      editCidade.Clear;
      cbUF.Clear;

      editNome.SetFocus;

    except
      on E: Exception do
        begin
          Application.MessageBox(
            PChar('Não foi possível cadastrar o cliente.' + sLineBreak +
                  'Motivo: ' + E.Message),
            PChar('Erro ao cadastrar'),
                MB_OK or MB_ICONERROR);
        end;
  end;
end;


procedure Tfrm_cadastro_cliente.pnlBtnCadastrarMouseEnter(Sender: TObject);
begin
  pnlBtnCadastrar.Color := $0000FF80;
end;


procedure Tfrm_cadastro_cliente.pnlBtnCadastrarMouseLeave(Sender: TObject);
begin
  pnlBtnCadastrar.Color := clgreen;
end;

end.
