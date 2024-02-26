unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,Vcl.Dialogs,
  FireDAC.VCLUI.Wait;

type
  TDM = class(TDataModule)
    conexao: TFDConnection;
    SQLaumentaEstoque: TFDCommand;
    SQLdiminuiEstoque: TFDCommand;
    DSProduto: TDataSource;
    DSMovimentacao: TDataSource;
    DSMovimentacaoProduto: TDataSource;
    FDTableProduto: TFDTable;
    FDTableMovimentacao: TFDTable;
    FDTablemovimentacaoproduto: TFDTable;
    FDTableProdutoID: TFMTBCDField;
    FDTableProdutoNOME: TStringField;
    FDTableProdutoFABRICANTE: TStringField;
    FDTableProdutoDATA_DE_VALIDADE: TDateTimeField;
    FDTableProdutoESTOQUEATUAL: TFMTBCDField;
    FDTableMovimentacaoID: TFMTBCDField;
    FDTableMovimentacaoTIPO: TStringField;
    FDTableMovimentacaoDATA: TDateTimeField;
    FDTableMovimentacaoFABRICANTE: TStringField;
    FDTableMovimentacaoOBSERVACOES: TMemoField;
    FDTablemovimentacaoprodutoID: TFMTBCDField;
    FDTablemovimentacaoprodutoIDFKMOV: TFMTBCDField;
    FDTablemovimentacaoprodutoIDFKPROD: TFMTBCDField;
    FDTablemovimentacaoprodutoQTD: TFMTBCDField;
    FDTablemovimentacaoprodutoNomeProduto: TStringField;
    SQLmovimentacao: TFDQuery;
    SQLmovProd: TFDQuery;
    DsSQLmovimentacao: TDataSource;
    DSmovProd: TDataSource;
    SQLmovProdID: TFMTBCDField;
    SQLmovProdIDFKMOV: TFMTBCDField;
    SQLmovProdIDFKPROD: TFMTBCDField;
    SQLmovProdQTD: TFMTBCDField;
    SQLmovProdNomeProduto: TStringField;
    SQLmaxIDmov: TFDQuery;
    procedure FDTablemovimentacaoprodutoAfterPost(DataSet: TDataSet);
    procedure FDTablemovimentacaoprodutoAfterDelete(DataSet: TDataSet);
    procedure calculartotais;
    procedure FDTableMovimentacaoAfterScroll(DataSet: TDataSet);
    procedure FDTablemovimentacaoprodutoBeforeDelete(DataSet: TDataSet);
    procedure FDTableMovimentacaoBeforeDelete(DataSet: TDataSet);

  private
    { Private declarations }
  public


  end;

var
  DM: TDM;

implementation



{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UnitCadMovimentacao;

{$R *.dfm}

procedure TDM.calculartotais;
var

totais: Integer;

begin
  if FDTablemovimentacaoproduto.State in [dsBrowse] then
  begin
      FDTablemovimentacaoproduto.First;

      while not FDTablemovimentacaoproduto.Eof do
        begin
          totais := totais + FDTablemovimentacaoproduto.FieldByName('qtd').Value;
          FDTablemovimentacaoproduto.Next;
        end;
        formcadmovimentacao.txtTotalProdutos.Caption := IntToStr(totais);
    end;
  end;





procedure TDM.FDTableMovimentacaoAfterScroll(DataSet: TDataSet);
begin
  calculartotais;
end;

procedure TDM.FDTableMovimentacaoBeforeDelete(DataSet: TDataSet);
begin
  if FDTablemovimentacaoproduto.RecordCount > 0 then
    begin
        ShowMessage('existem produtos cadastrados, delete todos estes produtos para que você possa deletar a movimentação');
        abort;
    end;


end;

procedure TDM.FDTablemovimentacaoprodutoAfterDelete(DataSet: TDataSet);
begin

  calculartotais;
  if (FDTableMovimentacao.FieldByName('tipo').Value = 'Entrada') then
    begin
        SQLdiminuiEstoque.ParamByName('PID').Value := FDTablemovimentacaoproduto.FieldByName('IDFKPROD').Value;
        SQLdiminuiEstoque.ParamByName('PQTD').Value := FDTablemovimentacaoproduto.FieldByName('qtd').Value;
        SQLdiminuiEstoque.Execute;
    end;

  if (FDTableMovimentacao.FieldByName('tipo').Value = 'Saida') then
    begin
         SQLaumentaEstoque.ParamByName('PID').Value := FDTablemovimentacaoproduto.FieldByName('IDFKPROD').Value;
         SQLaumentaEstoque.ParamByName('PQTD').Value := FDTablemovimentacaoproduto.FieldByName('qtd').Value;
         SQLaumentaEstoque.Execute;
    end;



end;

procedure TDM.FDTablemovimentacaoprodutoAfterPost(DataSet: TDataSet);
begin

  calculartotais;

  if FDTableMovimentacao.FieldByName('tipo').Value = 'Entrada' then
    begin
       SQLaumentaEstoque.ParamByName('PID').Value := FDTablemovimentacaoproduto.FieldByName('IDFKPROD').Value;
       SQLaumentaEstoque.ParamByName('PQTD').Value := FDTablemovimentacaoproduto.FieldByName('qtd').Value;
       SQLaumentaEstoque.Execute;
    end;

  if FDTableMovimentacao.FieldByName('tipo').Value = 'Saida' then
    begin
       SQLdiminuiEstoque.ParamByName('PID').Value := FDTablemovimentacaoproduto.FieldByName('IDFKPROD').Value;
       SQLdiminuiEstoque.ParamByName('PQTD').Value := FDTablemovimentacaoproduto.FieldByName('qtd').Value;
       SQLdiminuiEstoque.Execute;
    end;
end;

procedure TDM.FDTablemovimentacaoprodutoBeforeDelete(DataSet: TDataSet);
begin
     if (FDTableMovimentacao.FieldByName('tipo').Value = 'Entrada') then
    begin
        SQLdiminuiEstoque.ParamByName('PID').Value := FDTablemovimentacaoproduto.FieldByName('IDFKPROD').Value;
        SQLdiminuiEstoque.ParamByName('PQTD').Value := FDTablemovimentacaoproduto.FieldByName('qtd').Value;
        SQLdiminuiEstoque.Execute;
    end;

  if (FDTableMovimentacao.FieldByName('tipo').Value = 'Saida') then
    begin
         SQLaumentaEstoque.ParamByName('PID').Value := FDTablemovimentacaoproduto.FieldByName('IDFKPROD').Value;
         SQLaumentaEstoque.ParamByName('PQTD').Value := FDTablemovimentacaoproduto.FieldByName('qtd').Value;
         SQLaumentaEstoque.Execute;
    end;
end;

end.


