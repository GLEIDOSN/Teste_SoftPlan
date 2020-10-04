object fStreams: TfStreams
  Left = 0
  Top = 0
  Caption = 'Streams'
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
  object Label1: TLabel
    Left = 104
    Top = 13
    Width = 26
    Height = 13
    Caption = 'Size: '
  end
  object Label2: TLabel
    Left = 104
    Top = 45
    Width = 26
    Height = 13
    Caption = 'Size: '
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Load 1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Load 100'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ProgressBar1: TProgressBar
    AlignWithMargins = True
    Left = 3
    Top = 279
    Width = 629
    Height = 17
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 248
    ExplicitTop = 160
    ExplicitWidth = 150
  end
end
