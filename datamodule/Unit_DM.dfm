object DM: TDM
  Height = 362
  Width = 228
  object mySQLdll: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\Davi Vieira\Documents\GitHub\cadastro-cliente\libmysql.' +
      'dll'
    Left = 120
    Top = 56
  end
  object conexao: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=cliente'
      'DriverID=MySQL')
    Connected = True
    Left = 48
    Top = 56
  end
  object selectCli: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM E000CLI')
    Left = 48
    Top = 120
    object selectCliid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object selectClinome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 60
    end
    object selectClicpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      OnGetText = selectClicpfGetText
      Size = 18
    end
    object selectCliemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 50
    end
    object selectClitelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      Size = 16
    end
    object selectCliendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 100
    end
    object selectClinumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
      Size = 10
    end
    object selectClibairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
    end
    object selectClicidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 100
    end
    object selectCliuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Required = True
      Size = 2
    end
    object selectClistatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 7
    end
  end
  object DSCliente: TDataSource
    DataSet = selectCli
    Left = 48
    Top = 184
  end
  object execCli: TFDQuery
    MasterSource = DSCliente
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM E000CLI')
    Left = 48
    Top = 248
  end
  object selectUsu: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM E000usu')
    Left = 120
    Top = 120
  end
  object execUsu: TFDQuery
    MasterSource = DSUsuario
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM E000CLI')
    Left = 116
    Top = 248
  end
  object DSUsuario: TDataSource
    DataSet = selectUsu
    Left = 120
    Top = 184
  end
end
