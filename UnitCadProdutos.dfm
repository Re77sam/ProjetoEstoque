object FormCadProdutos: TFormCadProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro De Produtos'
  ClientHeight = 454
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 145
    Width = 49
    Height = 23
    Caption = 'Nome:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 207
    Width = 86
    Height = 23
    Caption = 'Fabricante:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 271
    Width = 133
    Height = 23
    Caption = 'Data De Validade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 10
    Top = 337
    Width = 92
    Height = 23
    Caption = 'Quantidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 283
    Top = 369
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
    Left = 10
    Top = 174
    Width = 329
    Height = 31
    DataField = 'NOME'
    DataSource = DM.DSProduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 10
    Top = 236
    Width = 329
    Height = 31
    DataField = 'FABRICANTE'
    DataSource = DM.DSProduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 10
    Top = 366
    Width = 153
    Height = 31
    DataField = 'ESTOQUEATUAL'
    DataSource = DM.DSProduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 300
    Width = 151
    Height = 31
    DataField = 'DATA_DE_VALIDADE'
    DataSource = DM.DSProduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 97
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 4
    ExplicitWidth = 772
    object Label2: TLabel
      Left = 24
      Top = 25
      Width = 232
      Height = 35
      Caption = 'Cadastrar Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Sitka Text'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 345
    Top = 114
    Width = 419
    Height = 283
    DataSource = DM.DSProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FABRICANTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_DE_VALIDADE'
        Title.Caption = 'VALIDADE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 114
    Width = 224
    Height = 25
    DataSource = DM.DSProduto
    VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 6
    OnClick = DBNavigator1Click
  end
  object DBEdit5: TDBEdit
    Left = 306
    Top = 366
    Width = 33
    Height = 31
    DataField = 'ID'
    DataSource = DM.DSProduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Text'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
end
