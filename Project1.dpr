program Project1;



uses
  Vcl.Forms,
  UnitPrincipal2 in 'UnitPrincipal2.pas' {FormPrincipal2},
  UnitCadMovimentacao in 'UnitCadMovimentacao.pas',
  UnitDM in 'UnitDM.pas',
  UnitConMovimentacao in 'UnitConMovimentacao.pas',
  UnitCadProdutos in 'UnitCadProdutos.pas',
  UnitLogin in 'UnitLogin.pas' {Form2},
  UnitTrocaSenha in 'UnitTrocaSenha.pas' {Frm_troca_senha},
  U_DM in 'U_DM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_login, Frm_login);
  Application.Run;
end.
Application.CreateForm(TFrm_troca_senha, Frm_troca_senha);

Application.CreateForm(TDM, DM);

Application.CreateForm(TDM, DM);

