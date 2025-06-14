object Form14: TForm14
  Left = 0
  Top = 0
  Caption = 'Form14'
  ClientHeight = 303
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 398
    Height = 303
    ActivePage = Text
    Align = alClient
    TabOrder = 0
    object Text: TTabSheet
      Caption = 'Text'
      TabVisible = False
      object Memo1: TMemo
        Left = 3
        Top = 3
        Width = 384
        Height = 256
        TabOrder = 0
      end
      object Button1: TButton
        Left = 3
        Top = 265
        Width = 98
        Height = 25
        Caption = 'Get Clipboard'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 107
        Top = 265
        Width = 98
        Height = 25
        Caption = 'Clear Clipboard'
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 291
        Top = 265
        Width = 96
        Height = 25
        Caption = 'Set Clipboard'
        TabOrder = 3
        OnClick = Button3Click
      end
    end
    object Image: TTabSheet
      Caption = 'Image'
      ImageIndex = 1
      TabVisible = False
      object Image1: TImage
        Left = 3
        Top = 3
        Width = 384
        Height = 256
        Stretch = True
      end
      object Button4: TButton
        Left = 3
        Top = 265
        Width = 98
        Height = 25
        Caption = 'Get Clipboard'
        TabOrder = 0
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 107
        Top = 265
        Width = 98
        Height = 25
        Caption = 'Clear Clipboard'
        TabOrder = 1
      end
    end
  end
end
