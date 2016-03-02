object Form6: TForm6
  Left = 0
  Top = 0
  Anchors = [akRight, akBottom]
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Sistema Financeiro - Relat'#243'rio'
  ClientHeight = 333
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    421
    333)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 401
    Height = 233
    Anchors = [akLeft, akTop, akRight, akBottom]
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
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tipo'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ValorPos'
        Title.Alignment = taCenter
        Title.Caption = 'Lucros'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ValorNeg'
        Title.Alignment = taCenter
        Title.Caption = 'Negativos'
        Width = 60
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 266
    Width = 97
    Height = 49
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemIndex = 0
    Items.Strings = (
      'Lucros'
      'Lan'#231'amentos')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 320
    Top = 280
    Width = 75
    Height = 25
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Sair'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 280
    Width = 75
    Height = 25
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Atualizar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT SNome,Descricao, Tipo, ValorPos,ValorNeg FROM saldo')
    Left = 144
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
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 152
    Top = 304
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
    Left = 120
    Top = 296
  end
end
