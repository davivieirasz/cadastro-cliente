unit Unit_Principal;

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
  Vcl.Buttons,
  Vcl.Imaging.jpeg,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlPrincipal        : TPanel;
    pnlMenuLateral      : TPanel;
    btnSair             : TSpeedButton;
    btnClientes         : TSpeedButton;
    pnlRodape           : TPanel;
    lbRodape            : TLabel;
    pgcInicio           : TPageControl;
    tsInicio            : TTabSheet;
    pnlInicio           : TPanel;
    btnConsultaCliente  : TSpeedButton;
    imgPrincipal        : TImage;
    btnNovoUsuario      : TSpeedButton;

    procedure btnClientesClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnConsultaClienteClick(Sender: TObject);
    procedure btnNovoUsuarioClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Unit_Clientes, Unit_Consulta_Cliente, Unit_Usuarios;


//Abertura do formulário de consulta de cliente
procedure TfrmPrincipal.btnConsultaClienteClick(Sender: TObject);
begin
  if not Assigned(frm_consulta_cliente) then
  begin
    Application.CreateForm(Tfrm_consulta_cliente, frm_consulta_cliente);
    frm_consulta_cliente.ShowModal;
  end;
end;


//Abertura do formulário de cadastro de usuário
procedure TfrmPrincipal.btnNovoUsuarioClick(Sender: TObject);
begin
  if not Assigned(frmCadastroUsuario) then
  begin
    Application.CreateForm(TfrmCadastroUsuario, frmCadastroUsuario);
    frmCadastroUsuario.ShowModal;
  end;
end;


//Confirmação para sair do sistema
procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja sair do sistema?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      Application.Terminate;
    end
end;


//Abertura do formulário de cadastro de cliente
procedure TfrmPrincipal.btnClientesClick(Sender: TObject);
begin
  if not Assigned(frm_cadastro_cliente) then
  begin
    Application.CreateForm(Tfrm_cadastro_cliente, frm_cadastro_cliente);
    frm_cadastro_cliente.ShowModal;
  end;
end;

end.
