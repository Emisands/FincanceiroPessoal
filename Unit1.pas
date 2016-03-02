unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1Senha: TWideStringField;
    Label5: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses Unit2, Unit5;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOConnection1.ConnectionString:='Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=MySQL;Mode=ReadWrite;';
  ADOConnection1.KeepConnection:= true;
  ADOConnection1.DefaultDatabase:='financeiro';
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  senha: String;
  verifica: String;
begin
  try
      ADOConnection1.Open();
  except
      on e: Exception do
      ShowMessage(e.Message);
  end;

  ADOquery1.SQL.Clear ;
  ADOquery1.SQL.Add('SELECT usuario, senha FROM contas WHERE usuario="'+Edit1.Text+'" and senha="'+Edit2.Text+'"');
  //senha:= senha
  try
     adoquery1.ExecSQL;
  except
     showmessage('Usuário ou Senha Incorretos!');
  end;

  form1.Hide;
  form2.Show;


  {senha := Edit2.Text;
  verifica:= ADOQuery1.FieldbyName('Senha').AsString;
  if (verifica = senha) then
  begin
    ShowMessage('Conectado com Sucesso!');
    form1.Visible:=false;
    form2.Visible:=true;
  end
  else
    ShowMessage('Digite a senha novamente');    }
  end;

end.
