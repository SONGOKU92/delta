object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 127
  ClientWidth = 306
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    306
    127)
  TextHeight = 15
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 311
    Height = 96
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Hello, you are being controlled by Sierra Software.')
    TabOrder = 0
    ExplicitWidth = 263
    ExplicitHeight = 200
  end
  object Button1: TButton
    Left = 0
    Top = 102
    Width = 127
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Send Text To Speech'
    TabOrder = 1
    OnClick = Button1Click
    ExplicitTop = 281
  end
  object Button2: TButton
    Left = 179
    Top = 102
    Width = 127
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Test Text To Speech'
    TabOrder = 2
    OnClick = Button2Click
  end
end
