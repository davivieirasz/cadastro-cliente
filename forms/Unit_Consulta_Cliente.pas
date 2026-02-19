unit Unit_Consulta_Cliente;

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
  Vcl.FileCtrl,
  Vcl.Consts;

type
  Tfrm_consulta_cliente = class(TForm)
    pnlPrincipal      : TPanel;
    pnlTitulo         : TPanel;
    dbgridDados       : TDBGrid;
    pnlDados          : TPanel;
    pnlBusca          : TPanel;
    pnlMenuLateral    : TPanel;
    gbInfo            : TGroupBox;
    bntBuscar         : TButton;
    btnEditar         : TButton;
    btnSalvar         : TButton;
    btnExcluir        : TButton;
    cbFiltros         : TComboBox;
    lbValor           : TLabel;
    editValor         : TEdit;
    pnlModo           : TPanel;
    btnLimparBusca    : TButton;
    btnCancelar       : TButton;

    procedure bntBuscarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnLimparBuscaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_consulta_cliente: Tfrm_consulta_cliente;

implementation

{$R *.dfm}

Uses Unit_DM;


procedure Tfrm_consulta_cliente.bntBuscarClick(Sender: TObject);

var
  busca: string;
  idInt: Integer;

begin
  busca := Trim(editValor.Text);

  DM.selectCli.Close;
  DM.selectCli.SQL.Clear;


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
            DM.selectCli.SQL.Text :=
              'SELECT * FROM E000CLI WHERE 1 = 0';
            DM.selectCli.Open;
            Exit;
          end;

          DM.selectCli.SQL.Text :=
            'SELECT * FROM E000CLI WHERE id = :pId';
          DM.selectCli.ParamByName('pId').AsInteger := StrToInt(busca);
        end;

    2: //NOME
      begin
        DM.selectCli.SQL.Text :=
          'SELECT * FROM E000CLI WHERE nome LIKE :pBusca';
        DM.selectCli.ParamByName('pBusca').AsString := '%' + busca + '%';
      end;

    3: //CPF
      begin
        DM.selectCli.SQL.Text :=
          'SELECT * FROM E000CLI WHERE cpf LIKE :pBusca';
        DM.selectCli.ParamByName('pBusca').AsString := '%' + busca + '%';
      end;

  end;

  DM.selectCli.Open;
end;


procedure Tfrm_consulta_cliente.btnCancelarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja cancelar a edição?','Confirmação', MB_ICONQUESTION or MB_YESNO) = IDYES then
  begin
    dbgridDados.ReadOnly := True;
    pnlModo.Caption      := 'MODO: CONSULTA';
    pnlModo.Color        := clWhite;
    btnCancelar.Visible  := False;
    btnEditar.Visible    := True;
  end;
end;


procedure Tfrm_consulta_cliente.btnEditarClick(Sender: TObject);
begin
  dbgridDados.ReadOnly := False;
  pnlModo.Caption      := 'MODO: EDIÇÃO';
  pnlModo.Color        := clRed;
  btnEditar.Visible    := False;
  btnCancelar.Visible  := True;
end;


procedure Tfrm_consulta_cliente.btnExcluirClick(Sender: TObject);
begin
 if Application.MessageBox('Excluir esta linha?','Confirmação', MB_ICONQUESTION or MB_YESNO) = IDYES then
 begin
  dbgridDados.DataSource.DataSet.Delete;
 end;
end;


procedure Tfrm_consulta_cliente.btnLimparBuscaClick(Sender: TObject);
begin
  editValor.Clear;

  DM.selectCli.SQL.Text := 'SELECT * FROM E000CLI';
  DM.selectCli.Open;
  Exit;
end;


procedure Tfrm_consulta_cliente.btnSalvarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja salvar as alterações?','Confirmação', MB_ICONQUESTION or MB_YESNO) = IDYES then
  begin
    dbgridDados.ReadOnly := True;
    pnlModo.Caption      := 'MODO: CONSULTA';
    pnlModo.Color        := clWhite;

    with dbgridDados.DataSource.DataSet do
    begin
      if State in [dsEdit, dsInsert] then
      begin
        Post;
      end;
    end;
  end
  else
  begin
    dbgridDados.ReadOnly := True;
    pnlModo.Caption      := 'MODO: CONSULTA';
    pnlModo.Color        := clWhite;

    DM.selectCli.SQL.Text := 'SELECT * FROM E000CLI';
    DM.selectCli.Open;
    Exit;
  end;
end;


procedure Tfrm_consulta_cliente.FormActivate(Sender: TObject);
begin
  cbFiltros.ItemIndex := 0;
end;

end.
