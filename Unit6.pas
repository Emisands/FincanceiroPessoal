unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, frxClass, frxExportPDF,
  Datasnap.DBClient;

type
  TForm6 = class(TForm)
    ADOQuery1: TADOQuery;
    frxPDFExport1: TfrxPDFExport;
    ADOQuery1Tipo: TWideStringField;
    ADOQuery1ValorPos: TFloatField;
    ADOQuery1ValorNeg: TFloatField;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DBGrid1: TDBGrid;
    ADOQuery1SNome: TWideStringField;
    RadioGroup1: TRadioGroup;
    ADOQuery1Descricao: TWideMemoField;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1,Unit2;

{$R *.dfm}



procedure TForm6.Button1Click(Sender: TObject);
begin
form2.Show;
form6.Close;
end;

procedure TForm6.Button2Click(Sender: TObject);
  begin
    if RadioGroup1.ItemIndex = 0 then
    begin
      DBGrid1.Columns[4].Visible:=false;
      DBGrid1.Columns[3].Visible:=true;
    end;
    if RadioGroup1.ItemIndex = 1 then
    begin
      DBGrid1.Columns[3].Visible:=false;
      DBGrid1.Columns[4].Visible:=true;
    end;
      DBGrid1.Repaint;
    DBGrid1.Refresh;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
      DBGrid1.Columns[4].Visible:=false;
      DBGrid1.Repaint;
    DBGrid1.Refresh;
end;

end.
