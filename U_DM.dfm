object DM: TDM
  Height = 446
  Width = 776
  object conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Renan\Desktop\Delphi\ProjetoEstoque\BANCO\ESTO' +
        'QUE.GBD'
      'User_Name=SYSDBA'
      'Password=1234'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 120
    Top = 88
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Windows\System32\FBCLIENT.DLL'
    Left = 256
    Top = 232
  end
  object Q_login: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT '
      'ID,'
      'NOME,'
      'PASSWORD,'
      'TYPE FROM USUARIOS'
      'ORDER BY ID')
    Left = 120
    Top = 152
  end
  object ds_login: TDataSource
    DataSet = Q_login
    Left = 120
    Top = 216
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 416
    Top = 96
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Port = 3050
    Left = 416
    Top = 192
  end
end
