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
    pgcInicio           : TPageControl;
    tsInicio            : TTabSheet;
    pnlInicio           : TPanel;
    btnConsultaCliente  : TSpeedButton;
    imgPrincipal        : TImage;
    btnNovoUsuario      : TSpeedButton;
    btnConsultaUsuario  : TSpeedButton;

    procedure btnClientesClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnConsultaClienteClick(Sender: TObject);
    procedure btnNovoUsuarioClick(Sender: TObject);
    procedure btnConsultaUsuarioClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Unit_Clientes, Unit_Consulta_Cliente, Unit_Usuarios, Unit_Consulta_Usuario;


//Abertura do formulário de consulta de cliente
procedure TfrmPrincipal.btnConsultaClienteClick(Sender: TObject);

Var
  frmCliente: TfrmConsultaCliente;

begin
  frmCliente := TfrmConsultaCliente.Create(Self);
  try
    frmCliente.ShowModal;
  finally
    frmCliente.Free;
  end;
end;


//Abertura do formulário de cadastro de usuário
procedure TfrmPrincipal.btnNovoUsuarioClick(Sender: TObject);

Var
  frmUsuario: TfrmCadastroUsuario;

begin
  frmUsuario := TfrmCadastroUsuario.Create(Self);
  try
    frmUsuario.ShowModal;
  finally
    frmUsuario.Free;
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


procedure TfrmPrincipal.btnConsultaUsuarioClick(Sender: TObject);

Var
  frmUsuario: TfrmConsultaUsuario;
begin
  frmUsuario := TfrmConsultaUsuario.Create(Self);
  try
    frmUsuario.ShowModal;
  finally
    frmUsuario.Free;
  end;
end;


//Abertura do formulário de cadastro de cliente
procedure TfrmPrincipal.btnClientesClick(Sender: TObject);

Var
  frmCliente: TfrmCadastroCliente;

begin
  frmCliente := TfrmCadastroCliente.Create(Self);
  try
    frmCliente.ShowModal;
  finally
    frmCliente.Free;
  end;
end;

end.
