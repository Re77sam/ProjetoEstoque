unit UnitPrincipal2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.DBCtrls;


type
    TFormPrincipal2 = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Cadastro1: TMenuItem;
    Movimentao1: TMenuItem;
    Gerenciar1: TMenuItem;
    Consultar1: TMenuItem;
    CadastrodeProdutos1: TMenuItem;
    Sair1: TMenuItem;
    Panel1: TPanel;
    procedure Consultar1Click(Sender: TObject);
    procedure CadastrodeProdutos1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Gerenciar1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal2: TFormPrincipal2;

implementation

{$R *.dfm}

uses UnitCadMovimentacao, UnitCadProdutos, UnitConMovimentacao, UnitDM;


procedure TFormPrincipal2.CadastrodeProdutos1Click(Sender: TObject);
begin
  FormcadProdutos.ShowModal;
end;

procedure TFormPrincipal2.Consultar1Click(Sender: TObject);
begin
  FormConMovimentacao.ShowModal;
end;

procedure TFormPrincipal2.Gerenciar1Click(Sender: TObject);
begin
 DM.calculartotais;
 FormCadMovimentacao.ShowModal;
end;

procedure TFormPrincipal2.Sair1Click(Sender: TObject);
begin
   application.Terminate;
end;





end.
