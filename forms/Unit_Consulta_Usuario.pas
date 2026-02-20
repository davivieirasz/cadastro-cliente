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

end.
