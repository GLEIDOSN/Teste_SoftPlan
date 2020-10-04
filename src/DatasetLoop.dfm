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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 80
    Top = 80
    Width = 441
    Height = 201
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 80
    Top = 18
    Width = 105
    Height = 25
    Caption = 'Deletar pares'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 80
    Top = 49
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 2
  end
  object ClientDataSet1: TClientDataSet
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
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 392
    Top = 152
  end
end
