object Form7: TForm7
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Excluir Dados - Sistema Financeiro'
  ClientHeight = 269
  ClientWidth = 471
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
    Left = 214
    Top = 40
    Width = 239
    Height = 13
    Caption = 'Escreva o Nome  da transa'#231#227'o que deseja deletar'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 185
    Height = 233
    BorderStyle = bsNone
    DataSource = DataSource1
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SNome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tipo'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 336
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Deletar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 264
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT SNome,Descricao, Tipo, ValorPos,ValorNeg FROM saldo')
    Left = 184
    Top = 264
    object ADOQuery1SNome: TWideStringField
      DisplayWidth = 11
      FieldName = 'SNome'
      Size = 50
    end
    object ADOQuery1Tipo: TWideStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 19
      FieldName = 'Tipo'
      LookupDataSet = Form1.ADOQuery1
      ReadOnly = True
      Size = 50
    end
    object ADOQuery1ValorPos: TFloatField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'ValorPos'
      LookupDataSet = Form1.ADOQuery1
      ReadOnly = True
    end
    object ADOQuery1ValorNeg: TFloatField
      DisplayWidth = 15
      FieldName = 'ValorNeg'
      ReadOnly = True
    end
    object ADOQuery1Descricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 120
    Top = 264
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    MasterSource = DataSource1
    PacketRecords = 0
    Params = <>
    Left = 72
    Top = 312
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    DataSource = Form1.DataSource1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM saldo')
    Left = 176
    Top = 320
    object ADOQuery2SNome: TWideStringField
      FieldName = 'SNome'
      Size = 50
    end
  end
end
