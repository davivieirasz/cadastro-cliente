unit Unit_Consulta_Usuario;

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
  Vcl.Buttons;

type
  TfrmConsultaUsuario = class(TForm)
    pnlPrincipal      : TPanel;
    pnlTitulo         : TPanel;
    pnlMenuLateral    : TPanel;
    gbInfo            : TGroupBox;
    cbFiltros         : TComboBox;
    lbValor           : TLabel;
    editValor         : TEdit;
    dbgridDados       : TDBGrid;
    btnBuscar         : TButton;
    btnLimparBusca    : TButton;
    btnEditar         : TButton;
    btnCancelar       : TButton;
    btnSalvar         : TButton;
    btnExcluir        : TButton;
    pnlModo           : TPanel;

    procedure btnBuscarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnLimparBuscaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaUsuario: TfrmConsultaUsuario;

implementation

{$R *.dfm}

Uses Unit_DM;

//Consultar usuário - Filtros
procedure TfrmConsultaUsuario.btnBuscarClick(Sender: TObject);

var
  busca: string;
  idInt: Integer;

begin
  busca := Trim(editValor.Text);

  DM.selectUsu.Close;
  DM.selectUsu.SQL.Clear;


  case cbFiltros.ItemIndex of

    0: //SELECIONE
      begin
       Application.MessageBox('É necessário selecionar algum filtro.','Aviso.');
       Exit;
      End;

    1: //ID
        begin
          if not TryStrToInt(busca, idInt) then
          begin
            DM.selectUsu.SQL.Text :=
              'SELECT * FROM E000USU WHERE 1 = 0';
            DM.selectUsu.Open;
            Exit;
          end;

          DM.selectUsu.SQL.Text :=
            'SELECT * FROM E000USU WHERE id = :pId';
          DM.selectUsu.ParamByName('pId').AsInteger := StrToInt(busca);
        end;

    2: //NOME
      begin
        DM.selectUsu.SQL.Text :=
          'SELECT * FROM E000USU WHERE nome LIKE :pBusca';
        DM.selectUsu.ParamByName('pBusca').AsString := '%' + busca + '%';
      end;

    3: //USUÁRIO
      begin
        DM.selectUsu.SQL.Text :=
          'SELECT * FROM E000USU WHERE USUARIO LIKE :pBusca';
        DM.selectUsu.ParamByName('pBusca').AsString := '%' + busca + '%';
      end;
  end;

  DM.selectUsu.Open;
end;

//Cancelar edição
procedure TfrmConsultaUsuario.btnCancelarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja cancelar a edição?','Confirmação', MB_ICONQUESTION or MB_YESNO) = IDYES then
  begin
    dbgridDados.ReadOnly  := True;
    pnlModo.Caption       := 'MODO: CONSULTA';
    pnlModo.Color         := clWhite;
    btnCancelar.Visible   := False;
    btnEditar.Visible     := True;
    btnSalvar.Enabled     := False;
    dbgridDados.Options   := dbgridDados.Options - [dgEditing];
    DM.selectUsu.SQL.Text := 'SELECT * FROM E000USU';
    DM.selectUsu.Open;
    Exit;
  end;
end;

//Realizar edição
procedure TfrmConsultaUsuario.btnEditarClick(Sender: TObject);
begin
  dbgridDados.ReadOnly := False;
  pnlModo.Caption      := 'MODO: EDIÇÃO';
  pnlModo.Color        := clRed;
  btnEditar.Visible    := False;
  btnCancelar.Visible  := True;
  btnSalvar.Enabled    := True;
  dbgridDados.Options  := dbgridDados.Options + [dgEditing];
end;

//Excluir registro
procedure TfrmConsultaUsuario.btnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Excluir esta linha?','Confirmação', MB_ICONQUESTION or MB_YESNO) = IDYES then
 begin
  dbgridDados.DataSource.DataSet.Delete;
 end;
end;

//Limpar filtros
procedure TfrmConsultaUsuario.btnLimparBuscaClick(Sender: TObject);
begin
  editValor.Clear;
  DM.selectUsu.SQL.Text := 'SELECT * FROM E000USU';
  DM.selectUsu.Open;
  Exit;
end;

//Salvar edição
procedure TfrmConsultaUsuario.btnSalvarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja salvar as alterações?','Confirmação', MB_ICONQUESTION or MB_YESNO) = IDYES then
  begin
    dbgridDados.ReadOnly := True;
    pnlModo.Caption      := 'MODO: CONSULTA';
    pnlModo.Color        := clWhite;
    btnCancelar.Visible  := False;
    btnSalvar.Enabled    := False;
    btnEditar.Visible    := True;
    dbgridDados.Options  := dbgridDados.Options - [dgEditing];

    with dbgridDados.DataSource.DataSet do
    begin
      if State in [dsEdit, dsInsert] then
      begin
        Post;
      end;
    end;
  end
end;

//Sem filtros ao abrir o formulário
procedure TfrmConsultaUsuario.FormActivate(Sender: TObject);
begin
  cbFiltros.ItemIndex := 0;
end;

//Desabilita campos ao abrir o formulário
procedure TfrmConsultaUsuario.FormShow(Sender: TObject);
begin
  if dbgridDados.DataSource.DataSet.IsEmpty then
  begin
    btnEditar.Enabled  := False;
    btnExcluir.Enabled := False;
  end
  else
  begin
    btnEditar.Enabled  := True;
    btnExcluir.Enabled := True;
  end;
end;

end.
