object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Foo'
  ClientHeight = 186
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnDataSetCopy: TButton
    Left = 64
    Top = 16
    Width = 169
    Height = 25
    Caption = 'Dataset Copy'
    TabOrder = 0
    OnClick = btnDataSetCopyClick
  end
  object btnDatasetLoop: TButton
    Left = 64
    Top = 47
    Width = 169
    Height = 25
    Caption = 'Dataset Loop'
    TabOrder = 1
    OnClick = btnDatasetLoopClick
  end
  object btnStreamns: TButton
    Left = 64
    Top = 79
    Width = 169
    Height = 25
    Caption = 'Streams'
    TabOrder = 2
    OnClick = btnStreamnsClick
  end
  object btnExceptionsPerfomance: TButton
    Left = 64
    Top = 111
    Width = 169
    Height = 25
    Caption = 'Exceptions/Performance'
    TabOrder = 3
    OnClick = btnExceptionsPerfomanceClick
  end
  object Button5: TButton
    Left = 64
    Top = 142
    Width = 169
    Height = 25
    Caption = 'Threads'
    TabOrder = 4
    OnClick = Button5Click
  end
end
