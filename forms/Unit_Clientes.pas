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
  Vcl.NumberBox,
  System.JSON,
  REST.Client,
  REST.Types,
  Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TfrmCadastroCliente = class(TForm)
    pnl_clientes    : TPanel;
    lbNomeCliente   : TLabel;
    lbCpf           : TLabel;
    lbEmail         : TLabel;
    lbTelefone      : TLabel;
    editNome        : TEdit;
    editEmail       : TEdit;
    lbEndereço      : TLabel;
    lbNumero        : TLabel;
    lbBairro        : TLabel;
    lbCidade        : TLabel;
    editNumero      : TEdit;
    editBairro      : TEdit;
    editCidade      : TEdit;
    lbUF            : TLabel;
    pnlTitulo       : TPanel;
    editEndereco    : TEdit;
    pnlBtnCadastrar : TPanel;
    rbtnAtivo       : TRadioButton;
    rbtnInativo     : TRadioButton;
    editTelefone    : TMaskEdit;
    editCpf         : TMaskEdit;
    lbCep           : TLabel;
    edtCep          : TEdit;
    btnConsultar    : TButton;
    loClient        : TRESTClient;
    loRequest       : TRESTRequest;
    loResponse      : TRESTResponse;
    cbUF            : TEdit;
    gbSituacao      : TGroupBox;
    GroupBox1       : TGroupBox;

    procedure pnlBtnCadastrarMouseEnter(Sender: TObject);
    procedure pnlBtnCadastrarMouseLeave(Sender: TObject);
    procedure pnlBtnCadastrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure editCpfKeyPress(Sender: TObject; var Key: Char);
    procedure btnConsultarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente  : TfrmCadastroCliente;

implementation

{$R *.dfm}

uses Unit_DM;


//Consumo API - VIACEP.
procedure TfrmCadastroCliente.btnConsultarClick(Sender: TObject);
  var
  JSON: TJSONObject;
  CEP: string;
begin
  CEP := StringReplace(edtCep.Text, '-', '', [rfReplaceAll]);

  // valida CEP
  if Length(CEP) <> 8 then
  begin
    Application.MessageBox('CEP inválido.','Aviso');
    Exit;
  end;

  // URL da API
  loClient.BaseURL := 'https://viacep.com.br/ws/' + CEP + '/json/';

  try
    // executa requisição
    loRequest.Execute;

    // converte JSON
    JSON := TJSONObject.ParseJSONValue(loResponse.Content) as TJSONObject;

    try
      if Assigned(JSON) then
      begin

        // verifica se CEP existe
        if JSON.GetValue('erro') <> nil then
        begin
          Application.MessageBox('CEP não encontrado.','Aviso');
          Exit;
        end;

        // preenche campos
        editEndereco.Text :=
          JSON.GetValue<string>('logradouro');

        editBairro.Text :=
          JSON.GetValue<string>('bairro');

        editCidade.Text :=
          JSON.GetValue<string>('localidade');

        cbUF.Text :=
          JSON.GetValue<string>('uf');
      end;

    finally
      JSON.Free;
    end;

  except
    on E: Exception do
      ShowMessage(
        'Erro ao consultar CEP: ' + E.Message
      );
  end;
end;

//Aceita só números no campo de CPF/CNPJ
procedure TfrmCadastroCliente.editCpfKeyPress(Sender: TObject; var Key: Char);
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
procedure TfrmCadastroCliente.FormActivate(Sender: TObject);
begin
  rbtnAtivo.Checked := True;
end;

//Realiza o cadastro no BD
procedure TfrmCadastroCliente.pnlBtnCadastrarClick(Sender: TObject);

  var
    status      : string;
    nomeCli     : String;
    cpfCli      : String;
    telefoneCli : String;
    emailCli    : String;
    cepCli      : String;
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
  cepCli      := edtCep.Text;
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
     (Trim(cepCli)      = '') or
     (Trim(enderecoCli) = '') or
     (Trim(numeroCli)   = '') or
     (Trim(bairroCli)   = '') or
     (Trim(cidadeCli)   = '') or
     (Trim(ufCli)       = '') then

  begin
    Application.MessageBox('Por favor, preencha todos os campos.', 'Aviso');
    Exit;
  end;

  if Pos('@', emailCli) = 0 then
  begin
    Application.MessageBox('E-mail inválido!', 'Aviso');
    Exit;
  end;


//Executa a ação de cadastrar no BD
  Try
    with DM.execCli do

    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO E000CLI (nome, cpf, email, telefone, cep, endereco, numero, bairro, cidade, uf, status)');
      SQL.Add('VALUES (:nome, :cpf, :email, :telefone, :cep, :endereco, :numero, :bairro, :cidade, :uf, :status)');

      ParamByName('nome').AsString     := nomeCli;
      ParamByName('cpf').AsString      := cpfCli;
      ParamByName('telefone').AsString := telefoneCli;
      ParamByName('email').AsString    := emailCli;
      ParamByName('cep').AsString      := cepCli;
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

    Application.MessageBox('Cliente cadastrado com sucesso!', 'Confirmação');

    //Limpa dados do formulário após o cadastro
      editNome.Clear;
      editCpf.Clear;
      editEmail.Clear;
      editTelefone.Clear;
      edtCep.Clear;
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

//Cor do botão ao entrar
procedure TfrmCadastroCliente.pnlBtnCadastrarMouseEnter(Sender: TObject);
begin
  pnlBtnCadastrar.Color := $0000FF80;
end;

//Cor do botão ao sair
procedure TfrmCadastroCliente.pnlBtnCadastrarMouseLeave(Sender: TObject);
begin
  pnlBtnCadastrar.Color := clgreen;
end;


end.
