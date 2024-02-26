unit UnitLogin;


interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;
type
  TFrm_login = class(TForm)
    ed_usuario: TEdit;
    ed_senha: TEdit;
    bt_ok: TBitBtn;
    bt_cancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Bevel1: TBevel;
    bt_troca_senha: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_troca_senhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Frm_login: TFrm_login;
  contagem: integer;
implementation
{$R *.dfm}
uses U_DM, UnitPrincipal2, UnitTrocaSenha;
procedure TFrm_login.bt_cancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;
procedure TFrm_login.bt_okClick(Sender: TObject);
begin
  // Buscando pelo usuario
  inc(contagem);
  dm.Q_login.Close;
  dm.Q_login.SQL.add('');
  dm.Q_login.SQL.Clear;
  dm.Q_login.Params.Clear;
  dm.Q_login.SQL.add('SELECT * FROM USUARIOS');
  dm.Q_login.SQL.add
    ('WHERE NOME =:PNAME AND SENHA =:PPASS');
  dm.Q_login.ParamByName('PNAME').asString := ed_usuario.Text;
  dm.Q_login.ParamByName('PPASS').asString := ed_senha.Text;;
  dm.Q_login.Open;
  // Se Q_login não retornar nada
  if dm.Q_login.RecordCount > 0 then
  begin
    dm.usuario := ed_usuario.Text;
    dm.tipo_usuario := dm.Q_loginTYPE.AsString;
    Frm_login := TFrm_login.Create(self);
    Frm_login.Show;
    contagem := 0;
  end
  else
    //MessageDlg('Usuário ou senha incorretos! Tentativas 3 de ', mtinformation, [mbok], 0);
    Application.MessageBox(PChar('Usuário ou senha incorretos! Tentativa ' + IntToStr(contagem) + ' de 3'), 'ESTOQUE', MB_ICONINFORMATION);
  ed_usuario.SetFocus;
  if contagem >= 3 then
  begin
    Application.Terminate;
  end;
end;
procedure TFrm_login.bt_troca_senhaClick(Sender: TObject);
begin
  Frm_troca_senha:=TFrm_troca_senha.Create(self);
  Frm_troca_senha.ShowModal;
  try
  finally
  Frm_troca_senha.Free;
  Frm_troca_senha:=nil;
  end;
end;
procedure TFrm_login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;
procedure TFrm_login.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Botão enter funcionar igual o tab
  if Key = #13 then
  begin
    Key := #0;
    Perform(wm_nextdlgCtl, 0, 0);
  end;
end;
procedure TFrm_login.FormShow(Sender: TObject);
begin
  // Coloca o foco no campo ed_usuario
  ed_usuario.SetFocus;
end;
end.
