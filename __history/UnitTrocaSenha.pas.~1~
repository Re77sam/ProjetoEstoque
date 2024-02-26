unit U_troca_senha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_troca_senha = class(TForm)
    Bevel1: TBevel;
    bt_cancelar: TBitBtn;
    bt_troca_senha: TBitBtn;
    Label2: TLabel;
    ed_senha: TEdit;
    ed_usuario: TEdit;
    Label1: TLabel;
    ed_nova_senha: TEdit;
    Label3: TLabel;
    ed_confirmar_senha: TEdit;
    Label4: TLabel;
    Image1: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_troca_senhaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_troca_senha: TFrm_troca_senha;

implementation

{$R *.dfm}

uses U_DM, U_login;

procedure TFrm_troca_senha.bt_cancelarClick(Sender: TObject);
begin
  Close; // fecha a tela
end;

procedure TFrm_troca_senha.bt_troca_senhaClick(Sender: TObject);
begin

  if ed_usuario.Text = '' then
  begin
    Messagedlg('O campo nome está vazio!', mtInformation, [mbok], 0);
    ed_usuario.SetFocus;
    abort;
  end
  else if ed_senha.Text = '' then
  begin
    Messagedlg('O campo senha está vazio!', mtInformation, [mbok], 0);
    ed_senha.SetFocus;
    abort;
  end
  else if ed_nova_senha.Text = '' then
  begin
    Messagedlg('O campo nova senha está vazio!', mtInformation, [mbok], 0);
    ed_nova_senha.SetFocus;
    abort;
  end
  else if ed_confirmar_senha.Text = '' then
  begin
    Messagedlg('O campo confirmar senha está vazio!', mtInformation, [mbok], 0);
    ed_confirmar_senha.SetFocus;
    abort;
  end
  else if ed_confirmar_senha.Text <> ed_nova_senha.Text then
  begin
    Messagedlg('As senhas não coincidem!', mtInformation, [mbok], 0);
    ed_confirmar_senha.SetFocus;
    abort;
  end
  else

    dm.Q_login.Close;
  dm.Q_login.SQL.add('');
  dm.Q_login.SQL.Clear;
  dm.Q_login.Params.Clear;
  dm.Q_login.SQL.add('SELECT * FROM USUARIO');
  dm.Q_login.SQL.add('WHERE NAME =:PNAME AND PASSWORD =:PPASS');
  dm.Q_login.ParamByName('PNAME').asString := ed_usuario.Text;
  dm.Q_login.ParamByName('PPASS').asString := ed_senha.Text;
  dm.Q_login.Open;

  // Se Q_login não retornar nada
  if dm.Q_login.RecordCount > 0 then
  begin

    dm.Q_login.Edit;
    dm.Q_login.FieldByName('PASSWORD').asString := ed_confirmar_senha.Text;
    dm.Q_login.Refresh;
    Messagedlg('Senha atualizada com sucesso!', mtInformation, [mbok], 0);
    Frm_troca_senha.Close;
    Frm_login.ed_usuario.SetFocus;

  end
  else
    Messagedlg('Usuário ou senha incorretos!', mtInformation, [mbok], 0);
  ed_usuario.SetFocus;
end;

procedure TFrm_troca_senha.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(wm_nextdlgCtl, 0, 0);
  end;
end;

procedure TFrm_troca_senha.FormShow(Sender: TObject);
begin
  ed_usuario.SetFocus;
end;

end.
