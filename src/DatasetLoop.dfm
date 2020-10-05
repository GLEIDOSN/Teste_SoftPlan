object fDatasetLoop: TfDatasetLoop
  Left = 0
  Top = 0
  Caption = 'Dataset Loop'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgr1: TDBGrid
    Left = 80
    Top = 80
    Width = 441
    Height = 201
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnDeletarPares: TButton
    Left = 80
    Top = 18
    Width = 105
    Height = 25
    Caption = 'Deletar pares'
    TabOrder = 1
    OnClick = btnDeletarParesClick
  end
  object dbNav1: TDBNavigator
    Left = 80
    Top = 49
    Width = 440
    Height = 25
    DataSource = ds1
    TabOrder = 2
  end
  object cds1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Field1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Field2'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 312
    Top = 152
  end
  object ds1: TDataSource
    DataSet = cds1
    Left = 392
    Top = 152
  end
end
