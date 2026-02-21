unit Unit_DM;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  System.MaskUtils;

type
  TDM = class(TDataModule)
    mySQLdll              : TFDPhysMySQLDriverLink;
    conexao               : TFDConnection;
    selectCli             : TFDQuery;
    DSCliente             : TDataSource;
    execCli               : TFDQuery;
    selectUsu             : TFDQuery;
    selectCliid           : TFDAutoIncField;
    selectClinome         : TStringField;
    selectClicpf          : TStringField;
    selectCliemail        : TStringField;
    selectClitelefone     : TStringField;
    selectCliendereco     : TStringField;
    selectClinumero       : TStringField;
    selectClibairro       : TStringField;
    selectClicidade       : TStringField;
    selectCliuf           : TStringField;
    selectClistatus       : TStringField;
    execUsu               : TFDQuery;
    DSUsuario             : TDataSource;
    selectUsuid           : TFDAutoIncField;
    selectUsunome         : TStringField;
    selectUsuemail        : TStringField;
    selectUsuusuario      : TStringField;
    selectUsusenha        : TStringField;
    selectUsutipo_usuario : TStringField;

    procedure selectClicpfGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure selectCliBeforeInsert(DataSet: TDataSet);
    procedure selectUsuBeforeInsert(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TDM.selectCliBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;


procedure TDM.selectClicpfGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);

Var
  valor: string;

begin
  valor := Sender.AsString.Replace('.', '')
                          .Replace('-', '')
                          .Replace('/', '');

  if Length(Valor) = 11 then
  begin
    Text := FormatMaskText('000\.000\.000\-00;0;', valor) // CPF
  end
  else if Length(valor) = 14 then
  begin
    Text := FormatMaskText('00\.000\.000\/0000\-00;0;', valor) // CNPJ
  end
  else
  begin
    Text := Sender.AsString;
  end;
end;


procedure TDM.selectUsuBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

end.
