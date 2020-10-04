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
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 64
    Top = 16
    Width = 169
    Height = 25
    Caption = 'Dataset Copy'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 64
    Top = 47
    Width = 169
    Height = 25
    Caption = 'Dataset Loop'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 64
    Top = 79
    Width = 169
    Height = 25
    Caption = 'Streams'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 64
    Top = 111
    Width = 169
    Height = 25
    Caption = 'Exceptions/Performance'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 64
    Top = 142
    Width = 169
    Height = 25
    Caption = 'Threads'
    TabOrder = 4
  end
end
