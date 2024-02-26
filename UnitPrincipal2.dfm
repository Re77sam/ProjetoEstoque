object FormPrincipal2: TFormPrincipal2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro De Estoque'
  ClientHeight = 430
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesktopCenter
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 430
    Align = alClient
    BevelOuter = bvNone
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 646
    ExplicitHeight = 429
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object CadastrodeProdutos1: TMenuItem
        Caption = 'Cadastro de Produtos'
        OnClick = CadastrodeProdutos1Click
      end
    end
    object Movimentao1: TMenuItem
      Caption = 'Movimenta'#231#227'o'
      object Gerenciar1: TMenuItem
        Caption = 'Gerenciar'
        OnClick = Gerenciar1Click
      end
      object Consultar1: TMenuItem
        Caption = 'Consultar'
        OnClick = Consultar1Click
      end
    end
  end
end
