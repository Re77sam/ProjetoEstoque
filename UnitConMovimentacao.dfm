object FormConMovimentacao: TFormConMovimentacao
  Left = 0
  Top = 0
  Caption = 'Consulta De Movimenta'#231#227'o '
  ClientHeight = 467
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Label4: TLabel
    Left = 27
    Top = 419
    Width = 181
    Height = 21
    Caption = 'Total De Movimenta'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblTotal: TLabel
    Left = 214
    Top = 419
    Width = 10
    Height = 21
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 733
    Height = 76
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 729
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 315
      Height = 35
      Caption = 'Consultar  Movimenta'#231#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Sitka Text'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 76
    Width = 733
    Height = 69
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 729
    object Label3: TLabel
      Left = 227
      Top = 16
      Width = 56
      Height = 16
      Caption = 'Data Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Sitka Text'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 48
      Top = 16
      Width = 58
      Height = 16
      Caption = 'Data inical'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Sitka Text'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object txtDataFinal: TMaskEdit
    Left = 227
    Top = 114
    Width = 112
    Height = 21
    EditMask = '##/##/####;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object txtDataInicial: TMaskEdit
    Left = 48
    Top = 114
    Width = 112
    Height = 21
    EditMask = '##/##/####;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  object BtConsultar: TButton
    Left = 440
    Top = 97
    Width = 155
    Height = 29
    Caption = 'Consultar Movimenta'#231'oes'
    TabOrder = 4
    OnClick = BtConsultarClick
  end
  object DBGrid1: TDBGrid
    Left = 387
    Top = 168
    Width = 320
    Height = 233
    DataSource = DM.DSmovProd
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NomeProduto'
        Title.Caption = 'Nome Do Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Caption = 'Quantidade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 86
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 27
    Top = 168
    Width = 320
    Height = 233
    DataSource = DM.DsSQLmovimentacao
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FABRICANTE'
        Title.Caption = 'RESPONSAVEL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 89
        Visible = True
      end>
  end
end
