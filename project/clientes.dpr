program clientes;

uses
  Vcl.Forms,
  Unit_Principal in '..\forms\Unit_Principal.pas' {frmPrincipal},
  Unit_Clientes in '..\forms\Unit_Clientes.pas' {frm_cadastro_cliente},
  Unit_DM in '..\datamodule\Unit_DM.pas' {DM: TDataModule},
  Unit_Consulta_Cliente in '..\forms\Unit_Consulta_Cliente.pas' {frm_consulta_cliente},
  Unit_Login in '..\forms\Unit_Login.pas' {frmLogin},
  Unit_Usuarios in '..\forms\Unit_Usuarios.pas' {frmCadastroUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmCadastroUsuario, frmCadastroUsuario);
  Application.Run;
end.
