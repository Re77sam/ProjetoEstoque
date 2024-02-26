object DM: TDM
  Height = 476
  Width = 762
  object conexao: TFDConnection
    Params.Strings = (
      'Database=xe'
      'User_Name=teste'
      'Password=teste'
      'MetaDefSchema=teste'
      'DriverID=Ora')
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object SQLaumentaEstoque: TFDCommand
    Connection = conexao
    CommandText.Strings = (
      
        'update produto set estoqueatual = estoqueatual + :PQTD where id ' +
        '= :PID')
    ParamData = <
      item
        Name = 'PQTD'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PID'
        ParamType = ptInput
        Value = Null
      end>
    Left = 432
    Top = 120
  end
  object SQLdiminuiEstoque: TFDCommand
    Connection = conexao
    CommandText.Strings = (
      
        'update produto set estoqueatual = estoqueatual - :PQTD where id ' +
        '= :PID'
      '')
    ParamData = <
      item
        Name = 'PQTD'
        ParamType = ptInput
      end
      item
        Name = 'PID'
        ParamType = ptInput
      end>
    Left = 540
    Top = 120
  end
  object DSProduto: TDataSource
    DataSet = FDTableProduto
    Left = 224
    Top = 112
  end
  object DSMovimentacao: TDataSource
    DataSet = FDTableMovimentacao
    Left = 224
    Top = 176
  end
  object DSMovimentacaoProduto: TDataSource
    DataSet = FDTablemovimentacaoproduto
    Left = 232
    Top = 256
  end
  object FDTableProduto: TFDTable
    IndexFieldNames = 'ID'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'PRODUTO'
    TableName = 'PRODUTO'
    Left = 64
    Top = 104
    object FDTableProdutoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDTableProdutoID: TFMTBCDField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
      MaxValue = '9999999'
      MinValue = '0'
      Precision = 38
      Size = 0
    end
    object FDTableProdutoFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 30
    end
    object FDTableProdutoDATA_DE_VALIDADE: TDateTimeField
      FieldName = 'DATA_DE_VALIDADE'
      Origin = 'DATA_DE_VALIDADE'
      EditMask = '!99/99/0000;1;'
    end
    object FDTableProdutoESTOQUEATUAL: TFMTBCDField
      FieldName = 'ESTOQUEATUAL'
      Origin = 'ESTOQUEATUAL'
      Precision = 38
      Size = 0
    end
  end
  object FDTableMovimentacao: TFDTable
    BeforeDelete = FDTableMovimentacaoBeforeDelete
    AfterScroll = FDTableMovimentacaoAfterScroll
    IndexFieldNames = 'ID'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'MOVIMENTACAO'
    TableName = 'MOVIMENTACAO'
    Left = 64
    Top = 176
    object FDTableMovimentacaoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
    object FDTableMovimentacaoID: TFMTBCDField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
      MaxValue = '99999999'
      MinValue = '0'
      Precision = 38
      Size = 0
    end
    object FDTableMovimentacaoDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'DATA'
      EditMask = '!99/99/0000;1;'
    end
    object FDTableMovimentacaoFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 30
    end
    object FDTableMovimentacaoOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftOraClob
    end
  end
  object FDTablemovimentacaoproduto: TFDTable
    AfterPost = FDTablemovimentacaoprodutoAfterPost
    BeforeDelete = FDTablemovimentacaoprodutoBeforeDelete
    AfterDelete = FDTablemovimentacaoprodutoAfterDelete
    IndexName = 'IDXMOV'
    MasterSource = DSMovimentacao
    MasterFields = 'ID'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'MOVIMENTACAOPRODUTO'
    TableName = 'MOVIMENTACAOPRODUTO'
    Left = 64
    Top = 256
    object FDTablemovimentacaoprodutoID: TFMTBCDField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
      MaxValue = '99999999'
      MinValue = '0'
      Precision = 38
      Size = 0
    end
    object FDTablemovimentacaoprodutoIDFKMOV: TFMTBCDField
      FieldName = 'IDFKMOV'
      Origin = 'IDFKMOV'
      Precision = 38
      Size = 0
    end
    object FDTablemovimentacaoprodutoIDFKPROD: TFMTBCDField
      FieldName = 'IDFKPROD'
      Origin = 'IDFKPROD'
      Precision = 38
      Size = 0
    end
    object FDTablemovimentacaoprodutoQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 38
      Size = 0
    end
    object FDTablemovimentacaoprodutoNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProduto'
      LookupDataSet = FDTableProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'IDFKPROD'
      Size = 50
      Lookup = True
    end
  end
  object SQLmovimentacao: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM MOVIMENTACAO')
    Left = 496
    Top = 344
  end
  object SQLmovProd: TFDQuery
    IndexFieldNames = 'IDFKMOV'
    MasterSource = DsSQLmovimentacao
    MasterFields = 'ID'
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM MOVIMENTACAOPRODUTO')
    Left = 496
    Top = 400
    object SQLmovProdID: TFMTBCDField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object SQLmovProdIDFKMOV: TFMTBCDField
      FieldName = 'IDFKMOV'
      Origin = 'IDFKMOV'
      Required = True
      Precision = 38
      Size = 0
    end
    object SQLmovProdIDFKPROD: TFMTBCDField
      FieldName = 'IDFKPROD'
      Origin = 'IDFKPROD'
      Required = True
      Precision = 38
      Size = 0
    end
    object SQLmovProdQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 38
      Size = 0
    end
    object SQLmovProdNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProduto'
      LookupDataSet = FDTableProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'IDFKPROD'
      Size = 50
      Lookup = True
    end
  end
  object DsSQLmovimentacao: TDataSource
    DataSet = SQLmovimentacao
    Left = 632
    Top = 352
  end
  object DSmovProd: TDataSource
    DataSet = SQLmovProd
    Left = 640
    Top = 408
  end
  object SQLmaxIDmov: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT MAX(id) FROM movimentacao')
    Left = 168
    Top = 360
  end
end
