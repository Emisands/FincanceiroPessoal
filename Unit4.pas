unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery1Descricao: TWideMemoField;
    ADOQuery1Tipo: TWideStringField;
    ADOQuery1ValorPos: TFloatField;
    ADOQuery1ValorNeg: TFloatField;
    ADOQuery1Ativo: TIntegerField;
    ADOTable1: TADOTable;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
    auxiliar: Double;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1, Unit2;

procedure TForm4.Button1Click(Sender: TObject);
begin
    if RadioGroup1.ItemIndex = 0 then
      begin
           ADOQuery1 := TADOQuery.Create(Self);
           ADOQuery1.Connection := Form1.ADOConnection1;
           ADOQuery1.SQL.Clear;
           ADOQuery1.SQL.Add('INSERT INTO saldo (SNome, Descricao, Tipo, ValorPos, Ativo) Values (:SNome, :Descricao, :Tipo, :Valor, :Ativo)');
           ADOQuery1.Parameters.ParamByName('SNome').Value := Edit1.Text;
           ADOQuery1.Parameters.ParamByName('Valor').Value := Edit2.Text;
           ADOQuery1.Parameters.ParamByName('Tipo').Value := Combobox1.Text;
           ADOQuery1.Parameters.ParamByName('Descricao').Value := Memo1.Text;
           ADOQuery1.Parameters.ParamByName('Ativo').Value := 0;
           ADOQuery1.ExecSQL;
           Form1.DataSource1.DataSet := ADOQuery1;
           ShowMessage('Inserido LUCROS com sucesso!');
           ADOQuery1.Close();

           auxiliar:= Form2.SOMA1;
           auxiliar:= auxiliar + StrToFLoat(Edit2.Text);
           Form2.SOMA1:= auxiliar;

           Form2.Label2.Caption := 'Lucros: ' + FloatToStr(Form2.SOMA1);
           Form2.Label3.Caption := 'Lançamentos: ' + FloatToStr(Form2.SOMA2);
           Form2.Label4.Caption := 'Saldo: ' + FloatToStr((FOrm2.SOMA1) - (Form2.SOMA2));

           Edit1.Clear;
           Edit2.Clear;
           Combobox1.ItemIndex := 0;
           Memo1.Clear;

           Form2.Refresh;
           Form2.Show();
           Form4.Close();

      end;
      if RadioGroup1.ItemIndex = 1 then
      begin
           ADOQuery1 := TADOQuery.Create(Self);
           ADOQuery1.Connection := Form1.ADOConnection1;
           ADOQuery1.SQL.Clear;
           ADOQuery1.SQL.Add('INSERT INTO Saldo (SNome, Descricao, Tipo, ValorNeg, Ativo) Values (:SNome, :Descricao, :Tipo, :Valor, :Ativo)');
           ADOQuery1.Parameters.ParamByName('SNome').Value := Edit1.Text;
           ADOQuery1.Parameters.ParamByName('Valor').Value := Edit2.Text;
           ADOQuery1.Parameters.ParamByName('Tipo').Value := Combobox1.Text;
           ADOQuery1.Parameters.ParamByName('Descricao').Value := Memo1.Text;
           ADOQuery1.Parameters.ParamByName('Ativo').Value := 0;
           ADOQuery1.ExecSQL;
           Form1.DataSource1.DataSet := ADOQuery1;
           ShowMessage('Inserido LANÇAMENTOS com sucesso!');
           ADOQuery1.Close();
           auxiliar:= Form2.SOMA2;
           auxiliar:= auxiliar + StrToFLoat(Edit2.Text);
           Form2.SOMA2:= auxiliar;
           //Form2.CalculaTotal();

           Form2.Label2.Caption := 'Lucros: ' + FloatToStr(Form2.SOMA1);
           Form2.Label3.Caption := 'Lançamentos: ' + FloatToStr(Form2.SOMA2);
           Form2.Label4.Caption := 'Saldo: ' + FloatToStr((FOrm2.SOMA1) - (Form2.SOMA2));

           Edit1.Clear;
           Edit2.Clear;
           Combobox1.ItemIndex := 0;
           Memo1.Clear;

           Form2.Refresh;
           Form2.Show();
           Form4.Close();
      end;

end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Form2.Show;
  Form4.Close;
end;

end.
