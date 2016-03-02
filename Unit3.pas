unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery1Nome: TWideStringField;
    ADOQuery1Senha: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2, Unit5;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
    ADOQuery1 := TADOQuery.Create(Self);
    ADOQuery1.Connection := Form1.ADOConnection1;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('UPDATE contas SET Nome = (:Nome), SENHA = (:Senha)  WHERE Usuario = "User"');
    ADOQuery1.Parameters.ParamByName('Nome').Value := Edit1.Text;
    ADOQuery1.Parameters.ParamByName('Senha').Value := Edit2.Text;
    ADOQuery1.ExecSQL;
    Form1.DataSource1.DataSet := ADOQuery1;
    ShowMessage('Atualizado com sucesso!');
    ADOQuery1.Close();
    Form2.Label1.Caption := 'Bem-Vindo, ' + ADOQuery1.Parameters.ParamByName('Nome').Value;

  Form2.Show;
  Form3.Close;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form3.Close;
Form2.Show;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  Edit1.Text:= Form2.ADOQuery1.FieldbyName('Nome').AsString;
  Edit2.Text:= Form2.ADOQuery1.FieldbyName('Senha').AsString;
end;

end.
