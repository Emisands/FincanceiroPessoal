object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Sistema Financeiro - Configura'#231#245'es'
  ClientHeight = 195
  ClientWidth = 230
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 8
    Width = 113
    Height = 19
    Caption = 'Configura'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object Label4: TLabel
    Left = 24
    Top = 120
    Width = 162
    Height = 13
    Caption = '*Senha deve ter at'#233' 6 caracteres'
  end
  object Edit1: TEdit
    Left = 72
    Top = 53
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 72
    Top = 93
    Width = 121
    Height = 21
    MaxLength = 6
    TabOrder = 1
  end
  object Button1: TButton
    Left = 24
    Top = 153
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 118
    Top = 153
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    DataSource = Form1.DataSource1
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM contas WHERE Usuario='#39'User'#39)
    Left = 176
    Top = 8
    object ADOQuery1Nome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object ADOQuery1Senha: TWideStringField
      FieldName = 'Senha'
      Size = 50
    end
  end
end
