object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 291
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Image1: TImage
    Left = 402
    Top = 0
    Width = 209
    Height = 268
    Align = alRight
    Stretch = True
    Visible = False
    OnMouseDown = Image1MouseDown
    ExplicitLeft = 400
  end
  object Splitter2: TSplitter
    Left = 399
    Top = 0
    Height = 268
    Align = alRight
    Visible = False
    ExplicitLeft = 192
    ExplicitTop = 40
    ExplicitHeight = 100
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 399
    Height = 268
    Align = alClient
    Lines.Strings = (
      'Sierra Command and Control.'
      '/help for more info.')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
    ExplicitWidth = 534
    ExplicitHeight = 270
  end
  object Edit1: TEdit
    Left = 0
    Top = 268
    Width = 611
    Height = 23
    Align = alBottom
    TabOrder = 1
    TextHint = 'Command...'
    OnKeyDown = Edit1KeyDown
    ExplicitLeft = -175
    ExplicitWidth = 786
  end
end
