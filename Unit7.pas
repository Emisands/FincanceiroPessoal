unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Datasnap.DBClient, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery1SNome: TWideStringField;
    ADOQuery1Tipo: TWideStringField;
    ADOQuery1ValorPos: TFloatField;
    ADOQuery1ValorNeg: TFloatField;
    ADOQuery1Descricao: TWideMemoField;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    Label1: TLabel;
    Edit1: TEdit;
    ADOQuery2: TADOQuery;
    ADOQuery2SNome: TWideStringField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
form7.Close;
form2.show;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
    ADOQuery2 := TADOQuery.Create(Self);
    ADOQuery2.Connection := Form1.ADOConnection1;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('DELETE FROM saldo WHERE SNome="'+Edit1.Text+'"');
    ADOQuery2.ExecSQL;
    Form1.DataSource1.DataSet := ADOQuery2;
    ShowMessage('DELETADO com sucesso!');
    ADOQuery2.Close();
    Edit1.Clear;
    DBGrid1.Repaint;
    DBGrid1.Refresh;
end;

end.
