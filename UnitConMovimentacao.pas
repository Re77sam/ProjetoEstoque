unit UnitConMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TFormConMovimentacao = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    txtDataInicial: TMaskEdit;
    txtDataFinal: TMaskEdit;
    Label1: TLabel;
    Label3: TLabel;
    BtConsultar: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    LblTotal: TLabel;
    procedure BtConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConMovimentacao: TFormConMovimentacao;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormConMovimentacao.BtConsultarClick(Sender: TObject);
begin

    DM.SQLmovimentacao.Close;
    DM.SQLmovimentacao.sql.Text := '';
    DM.SQLmovimentacao.SQL.Text := 'select * from movimentacao where data betwenn :PDI and :PDF';
    DM.SQLmovimentacao.ParamByName('PDI').Value := txtDataInicial.Text;
    DM.SQLmovimentacao.ParamByName('PDF').Value := txtDataFinal.Text;

    DM.SQLmovimentacao.Open;
end;

end.
