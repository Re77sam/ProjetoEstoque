object DM: TDM
  OldCreateOrder = False
  Height = 446
  Width = 776
  object conexao: TFDConnection
    Params.Strings = (
      'Database=C:\ESTOQUE\EXE\BANCO\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 120
    Top = 88
  end
  object transacao: TFDTransaction
    Connection = conexao
    Left = 200
    Top = 88
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Windows\System32\FBCLIENT.DLL'
    Left = 280
    Top = 88
  end
  object Q_login: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT '
      'USER_ID,'
      'NAME,'
      'PASSWORD,'
      'TYPE FROM USUARIO'
      'ORDER BY USER_ID')
    Left = 120
    Top = 152
    object Q_loginUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_loginNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
    object Q_loginPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
      Size = 30
    end
    object Q_loginTYPE: TStringField
      FieldName = 'TYPE'
      Origin = '"TYPE"'
      Required = True
      Size = 30
    end
  end
  object ds_login: TDataSource
    DataSet = Q_login
    Left = 120
    Top = 216
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 344
    Top = 88
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Port = 3050
    Left = 440
    Top = 96
  end
end
