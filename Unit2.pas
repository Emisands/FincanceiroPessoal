unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Data.DB, Data.Win.ADODB;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label4: TLabel;
    ADOQuery1: TADOQuery;
    ADOQuery1Nome: TWideStringField;
    ADOQuery1Usuario: TWideStringField;
    ADOQuery1Senha: TWideStringField;
    ADOQuery1CID: TAutoIncField;
    ADOQuery1Saldo: TFloatField;
    ADOQuery1Negativ: TFloatField;
    ADOQuery2: TADOQuery;
    ADOQuery2CID: TAutoIncField;
    ADOQuery2Nome: TWideStringField;
    ADOQuery2Usuario: TWideStringField;
    ADOQuery2Senha: TWideStringField;
    ADOQuery2Saldo: TFloatField;
    ADOQuery2Negativ: TFloatField;
    ADOTable1: TADOTable;
    ADOTable1ValorPos: TFloatField;
    ADOTable1ValorNeg: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure CalculaTotal;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  var
  nome: String;
  saldo1: String;
  saldo2: String;
  sempre: Integer;
  SOMA1, SOMA2 :Double;
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3,Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
    CalculaTotal();
    Label1.Caption:= Label1.Caption + ADOQuery1.FieldbyName('Nome').AsString;
    //----saldo em conta-----
    Label2.Caption:= Label2.Caption + FloatToStr(Form2.SOMA1);
    //------lancamentos-----
    Label3.Caption:= Label3.Caption + FloatToStr(Form2.SOMA2);
    //------saldo final-----
    Label4.Caption:= 'Saldo: ' + FloatTOStr(SOMA1 - SOMA2);

    end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  Form4.Show;
  Form2.Close;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
Form7.show;
form2.Close;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
FOrm6.show;
form2.Close;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
  Form3.Show;
  Form2.Close;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
  form5.Show;
end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
  Form1.Close;
  Form2.Close;
end;


procedure TForm2.CalculaTotal;
begin
  //SOMAR AS COLUNAS
  With Form2.ADOTable1 do
  begin

    Form2.ADOTable1.First;
    while not Form2.ADOTable1.EOF do
    begin
      Form2.ADOTable1.Refresh;
      SOMA1:= (SOMA1 + Form2.ADOTable1.fieldByName('ValorPos').AsCurrency);
      SOMA2:= (SOMA2 + Form2.ADOTable1.fieldByName('ValorNeg').AsCurrency);
      Form2.ADOTable1.Next;
    end;
    Form2.ADOTable1.First;
    Form2.ADOTable1.EnableControls;
    end;
    Form2.ADOTable1.First;
    //Form2.Label2.Caption := 'Lucros: ' + FloatToStr(SOMA1);
    //Form2.Label3.Caption := 'Lançamentos: ' + FloatToStr(SOMA2);
    //Form2.Label4.Caption := 'Saldo: ' + FloatToStr((SOMA1) - (SOMA2));
    //Form2.Refresh;

end;

end.
