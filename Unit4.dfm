object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Sistema Financeiro - Inserir Dados'
  ClientHeight = 189
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 54
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Label2: TLabel
    Left = 19
    Top = 81
    Width = 24
    Height = 13
    Caption = 'Tipo:'
  end
  object Label3: TLabel
    Left = 19
    Top = 27
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label4: TLabel
    Left = 19
    Top = 117
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Memo1: TMemo
    Left = 88
    Top = 114
    Width = 193
    Height = 54
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 88
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 88
    Top = 51
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 78
    Width = 145
    Height = 21
    TabOrder = 3
    Text = 'Escolha uma op'#231#227'o'
    Items.Strings = (
      'Salario'
      'Recompensa'
      'Bonus'
      'Aluguel'
      'Conta de Luz'
      'Conta de Agua'
      'Outras Contas'
      'Compra pessoal')
  end
  object RadioGroup1: TRadioGroup
    Left = 249
    Top = 24
    Width = 144
    Height = 75
    Caption = 'Isto '#233':'
    Items.Strings = (
      'Lucro'
      'Lan'#231'amentos')
    TabOrder = 4
  end
  object Button1: TButton
    Left = 305
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 305
    Top = 143
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    DataSource = Form1.DataSource1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM saldo;')
    Left = 336
    Top = 32
    object ADOQuery1Descricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
    object ADOQuery1Tipo: TWideStringField
      FieldName = 'Tipo'
      Size = 50
    end
    object ADOQuery1ValorPos: TFloatField
      FieldName = 'ValorPos'
    end
    object ADOQuery1ValorNeg: TFloatField
      FieldName = 'ValorNeg'
    end
    object ADOQuery1Ativo: TIntegerField
      FieldName = 'Ativo'
    end
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    MasterSource = Form1.DataSource1
    TableName = 'saldo'
    Left = 376
    Top = 64
  end
end
