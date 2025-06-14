object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Remote Chat | '
  ClientHeight = 310
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 463
    Height = 310
    ActivePage = Chat
    Align = alClient
    TabOrder = 0
    object Setup: TTabSheet
      Caption = 'Setup'
      TabVisible = False
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 455
        Height = 40
        Align = alTop
        Caption = 'Your Username'
        TabOrder = 0
        object Edit1: TEdit
          Left = 2
          Top = 17
          Width = 451
          Height = 21
          Align = alClient
          TabOrder = 0
          Text = 'Support'
          ExplicitHeight = 23
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 40
        Width = 455
        Height = 40
        Align = alTop
        Caption = 'Clients Window Title'
        TabOrder = 1
        object Edit2: TEdit
          Left = 2
          Top = 17
          Width = 451
          Height = 21
          Align = alClient
          TabOrder = 0
          Text = 'Currently Chatting with support'
          ExplicitHeight = 23
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 185
        Width = 455
        Height = 89
        Align = alTop
        Caption = 'Extra Settings'
        TabOrder = 2
        object CheckBox1: TCheckBox
          Left = 3
          Top = 16
          Width = 110
          Height = 17
          Caption = 'Disable Typing'
          TabOrder = 0
        end
        object CheckBox2: TCheckBox
          Left = 3
          Top = 39
          Width = 110
          Height = 17
          Caption = 'Top Most'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object CheckBox3: TCheckBox
          Left = 3
          Top = 62
          Width = 142
          Height = 17
          Caption = 'Allowed to close chat'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
      end
      object Button1: TButton
        Left = 0
        Top = 274
        Width = 455
        Height = 25
        Align = alTop
        Caption = 'Start Chatting'
        TabOrder = 3
        OnClick = Button1Click
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 80
        Width = 455
        Height = 105
        Align = alTop
        Caption = 'Welcome Message'
        TabOrder = 4
        object Memo2: TMemo
          Left = 2
          Top = 17
          Width = 451
          Height = 86
          Align = alClient
          Lines.Strings = (
            'Hello!'
            'You are currently talk to support,'
            'please feel free to ask any questions.')
          TabOrder = 0
        end
      end
    end
    object Chat: TTabSheet
      Caption = 'Chat'
      ImageIndex = 1
      TabVisible = False
      object Memo1: TMemo
        Left = 0
        Top = 41
        Width = 455
        Height = 236
        Align = alClient
        ReadOnly = True
        TabOrder = 0
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 455
        Height = 41
        Align = alTop
        Caption = 'Live Settings'
        TabOrder = 1
        object Edit3: TEdit
          Left = 2
          Top = 16
          Width = 451
          Height = 23
          Align = alBottom
          TabOrder = 0
          TextHint = 'Your username...'
        end
      end
      object Edit4: TEdit
        Left = 0
        Top = 277
        Width = 455
        Height = 23
        Align = alBottom
        TabOrder = 2
        TextHint = 'Your message goes here...'
        OnKeyPress = Edit4KeyPress
      end
    end
  end
end
