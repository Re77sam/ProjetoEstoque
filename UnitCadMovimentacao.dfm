object FormCadMovimentacao: TFormCadMovimentacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Movimenta'#231#227'o'
  ClientHeight = 518
  ClientWidth = 923
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 126
    Width = 188
    Height = 23
    Caption = 'Tipo De Movimenta'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 192
    Width = 43
    Height = 23
    Caption = 'Data:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 254
    Width = 104
    Height = 23
    Caption = 'Respons'#225'vel:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 314
    Width = 105
    Height = 23
    Caption = 'Observa'#231#245'es:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 171
    Top = 459
    Width = 20
    Height = 19
    Caption = 'ID:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 649
    Top = 127
    Width = 204
    Height = 21
    Caption = 'Produtos Da Movimenta'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 771
    Top = 211
    Width = 77
    Height = 19
    Caption = 'Quantidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 631
    Top = 433
    Width = 149
    Height = 23
    Caption = 'Total De Produtos:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtTotalProdutos: TLabel
    Left = 786
    Top = 433
    Width = 10
    Height = 23
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 792
    Top = 487
    Width = 17
    Height = 23
    Caption = 'ID'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 221
    Width = 240
    Height = 27
    DataField = 'DATA'
    DataSource = DM.DSMovimentacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 283
    Width = 239
    Height = 27
    DataField = 'FABRICANTE'
    DataSource = DM.DSMovimentacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DBMemo1: TDBMemo
    Left = 8
    Top = 342
    Width = 241
    Height = 105
    DataField = 'OBSERVACOES'
    DataSource = DM.DSMovimentacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 923
    Height = 97
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 3
    object Label2: TLabel
      Left = 24
      Top = 25
      Width = 310
      Height = 35
      Caption = 'Gerenciar Movimenta'#231#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Sitka Text'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object TDBcombobox1: TDBComboBox
    Left = 8
    Top = 155
    Width = 241
    Height = 27
    Style = csDropDownList
    DataField = 'TIPO'
    DataSource = DM.DSMovimentacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    Items.Strings = (
      'Entrada'
      'Saida')
    ParentFont = False
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 272
    Top = 155
    Width = 301
    Height = 329
    DataSource = DM.DSMovimentacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Sitka Text'
        Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Sitka Text'
        Font.Style = [fsBold]
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FABRICANTE'
        Title.Caption = 'RESPONSAVEL'
        Width = 93
        Visible = True
      end>
  end
  object DBEdit3: TDBEdit
    Left = 197
    Top = 453
    Width = 52
    Height = 31
    DataField = 'ID'
    DataSource = DM.DSMovimentacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object DBNavigator3: TDBNavigator
    Left = 272
    Top = 124
    Width = 252
    Height = 25
    DataSource = DM.DSMovimentacao
    VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 7
    OnClick = DBNavigator3Click
  end
  object DBNavigator1: TDBNavigator
    Left = 631
    Top = 154
    Width = 248
    Height = 20
    DataSource = DM.DSMovimentacaoProduto
    VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 8
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 631
    Top = 205
    Width = 121
    Height = 27
    DataField = 'IDFKPROD'
    DataSource = DM.DSMovimentacaoProduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Text'
    Font.Style = []
    KeyField = 'ID'
    ListField = 'NOME'
    ListSource = DM.DSProduto
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit4: TDBEdit
    Left = 854
    Top = 206
    Width = 39
    Height = 24
    DataField = 'QTD'
    DataSource = DM.DSMovimentacaoProduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object DBGrid2: TDBGrid
    Left = 631
    Top = 236
    Width = 262
    Height = 191
    DataSource = DM.DSMovimentacaoProduto
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NomeProduto'
        Title.Caption = 'Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 82
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
        Width = 74
        Visible = True
      end>
  end
  object DBEdit5: TDBEdit
    Left = 815
    Top = 483
    Width = 78
    Height = 27
    DataField = 'ID'
    DataSource = DM.DSMovimentacaoProduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Text'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
end
