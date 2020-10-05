object fThreads: TfThreads
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Threads'
  ClientHeight = 234
  ClientWidth = 508
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    508
    234)
  PixelsPerInch = 96
  TextHeight = 13
  object lblProgresso: TLabel
    Left = 11
    Top = 187
    Width = 3
    Height = 13
    Anchors = [akLeft]
    ExplicitTop = 160
  end
  object Progressbar: TProgressBar
    AlignWithMargins = True
    Left = 3
    Top = 214
    Width = 502
    Height = 17
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = -135
    ExplicitTop = 161
    ExplicitWidth = 582
  end
  object btnProcessar: TButton
    Left = 338
    Top = 34
    Width = 156
    Height = 25
    Anchors = [akRight]
    Caption = 'Processar Threads'
    TabOrder = 3
    OnClick = btnProcessarClick
    ExplicitLeft = 328
    ExplicitTop = 35
  end
  object grpbThread2: TGroupBox
    Left = 13
    Top = 108
    Width = 288
    Height = 77
    Anchors = [akTop, akRight]
    Caption = 'Segunda Thread'
    TabOrder = 1
    ExplicitLeft = 3
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 52
      Height = 13
      Caption = 'Contador: '
    end
    object Label4: TLabel
      Left = 16
      Top = 28
      Width = 162
      Height = 13
      Caption = 'Tempo de espera (milesegundos):'
    end
    object lblContador2: TLabel
      Left = 74
      Top = 48
      Width = 6
      Height = 13
      Caption = '0'
    end
    object edtTimeThread2: TEdit
      Left = 193
      Top = 25
      Width = 73
      Height = 21
      TabOrder = 0
    end
  end
  object grpbThread1: TGroupBox
    Left = 13
    Top = 12
    Width = 288
    Height = 77
    Anchors = [akTop, akRight]
    Caption = 'Primeira Thread'
    TabOrder = 0
    ExplicitLeft = 3
    object Label5: TLabel
      Left = 16
      Top = 48
      Width = 52
      Height = 13
      Caption = 'Contador: '
    end
    object Label3: TLabel
      Left = 16
      Top = 28
      Width = 162
      Height = 13
      Caption = 'Tempo de espera (milesegundos):'
    end
    object lblContador1: TLabel
      Left = 74
      Top = 48
      Width = 6
      Height = 13
      Caption = '0'
    end
    object edtTimeThread1: TEdit
      Left = 193
      Top = 25
      Width = 73
      Height = 21
      TabOrder = 0
    end
  end
end
