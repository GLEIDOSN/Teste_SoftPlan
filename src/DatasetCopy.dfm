object fDatasetCopy: TfDatasetCopy
  Left = 0
  Top = 0
  Caption = 'Dataset Copy'
  ClientHeight = 558
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object dbgr1: TDBGrid
    Left = 8
    Top = 96
    Width = 320
    Height = 440
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgr2: TDBGrid
    Left = 384
    Top = 96
    Width = 320
    Height = 440
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbNav1: TDBNavigator
    Left = 8
    Top = 65
    Width = 320
    Height = 25
    TabOrder = 2
  end
end
