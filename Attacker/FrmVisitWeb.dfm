object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 53
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ToggleSwitch1: TToggleSwitch
    Left = 5
    Top = 28
    Width = 95
    Height = 20
    StateCaptions.CaptionOn = 'Hidden'
    StateCaptions.CaptionOff = 'Visable'
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 0
    Top = 0
    Width = 624
    Height = 23
    Align = alTop
    TabOrder = 1
    Text = 'https://google.com/'
    TextHint = 'https://google.com/'
    ExplicitLeft = 184
    ExplicitTop = 32
    ExplicitWidth = 121
  end
  object Button1: TButton
    Left = 541
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Visit'
    TabOrder = 2
    OnClick = Button1Click
  end
end
