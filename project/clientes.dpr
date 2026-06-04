program clientes;

uses
  Vcl.Forms,
  System.UITypes,
  Unit_Principal in '..\forms\Unit_Principal.pas' {frmPrincipal},
  Unit_Clientes in '..\forms\Unit_Clientes.pas' {frmCadastroCliente},
  Unit_DM in '..\datamodule\Unit_DM.pas' {DM: TDataModule},
  Unit_Consulta_Cliente in '..\forms\Unit_Consulta_Cliente.pas' {frmConsultaCliente},
  Unit_Login in '..\forms\Unit_Login.pas' {frmLogin},
  Unit_Usuarios in '..\forms\Unit_Usuarios.pas' {frmCadastroUsuario},
  Unit_Consulta_Usuario in '..\forms\Unit_Consulta_Usuario.pas' {frmConsultaUsuario},
  Unit_Sessao in '..\forms\Unit_Sessao.pas';

{$R *.res}

var
  login: TfrmLogin;


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := False;

  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmConsultaUsuario, frmConsultaUsuario);
  Login := TfrmLogin.Create(nil);
  try
    if Login.ShowModal <> mrOk then
      Halt;
  finally
    Login.Free;
  end;
  Application.Run;
end.
