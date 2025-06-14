object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 314
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 360
    Height = 289
    Align = alClient
    Lines.Strings = (
      'You are being controlled by Sierra Software.')
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 40
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object Button1: TButton
    Left = 0
    Top = 289
    Width = 360
    Height = 25
    Align = alBottom
    Caption = 'Send Note'
    TabOrder = 1
    OnClick = Button1Click
    ExplicitLeft = 80
    ExplicitTop = 136
    ExplicitWidth = 75
  end
end
