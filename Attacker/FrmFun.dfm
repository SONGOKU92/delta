object Form16: TForm16
  Left = 0
  Top = 0
  Caption = 'Form16'
  ClientHeight = 420
  ClientWidth = 455
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
    Width = 455
    Height = 420
    ActivePage = Graphic
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 120
    ExplicitTop = 144
    ExplicitWidth = 289
    ExplicitHeight = 193
    object System: TTabSheet
      Caption = 'System'
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 217
        Height = 73
        Caption = 'User input'
        TabOrder = 0
        object Button1: TButton
          Left = 3
          Top = 16
          Width = 211
          Height = 25
          Caption = 'Disable'
          TabOrder = 0
        end
        object Button2: TButton
          Left = 3
          Top = 41
          Width = 211
          Height = 25
          Caption = 'Enable'
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 223
        Top = 3
        Width = 217
        Height = 73
        Caption = 'Monitor Power'
        TabOrder = 1
        object Button3: TButton
          Left = 3
          Top = 16
          Width = 211
          Height = 25
          Caption = 'Off'
          TabOrder = 0
        end
        object Button4: TButton
          Left = 3
          Top = 41
          Width = 211
          Height = 25
          Caption = 'On'
          TabOrder = 1
        end
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 157
        Width = 217
        Height = 73
        Caption = 'Swap Mouse Buttons'
        TabOrder = 2
        object Button5: TButton
          Left = 3
          Top = 16
          Width = 211
          Height = 25
          Caption = 'Swap'
          TabOrder = 0
        end
        object Button6: TButton
          Left = 3
          Top = 41
          Width = 211
          Height = 25
          Caption = 'Restore'
          TabOrder = 1
        end
      end
      object GroupBox5: TGroupBox
        Left = 3
        Top = 80
        Width = 217
        Height = 73
        Caption = 'Windows Taskbar'
        TabOrder = 3
        object Button9: TButton
          Left = 3
          Top = 16
          Width = 211
          Height = 25
          Caption = 'Hide'
          TabOrder = 0
        end
        object Button10: TButton
          Left = 3
          Top = 41
          Width = 211
          Height = 25
          Caption = 'Show'
          TabOrder = 1
        end
      end
      object GroupBox7: TGroupBox
        Left = 3
        Top = 311
        Width = 439
        Height = 73
        Caption = 'Rotate Screen'
        TabOrder = 4
        object Button13: TButton
          Left = 3
          Top = 16
          Width = 211
          Height = 25
          Caption = '0'
          TabOrder = 0
        end
        object Button14: TButton
          Left = 3
          Top = 41
          Width = 211
          Height = 25
          Caption = '180'
          TabOrder = 1
        end
        object Button15: TButton
          Left = 226
          Top = 16
          Width = 211
          Height = 25
          Caption = '90'
          TabOrder = 2
        end
        object Button16: TButton
          Left = 226
          Top = 41
          Width = 211
          Height = 25
          Caption = '270'
          TabOrder = 3
        end
      end
      object GroupBox11: TGroupBox
        Left = 223
        Top = 157
        Width = 217
        Height = 73
        Caption = 'Invert Scroll'
        TabOrder = 5
        object Button23: TButton
          Left = 3
          Top = 16
          Width = 211
          Height = 25
          Caption = 'Invert'
          TabOrder = 0
        end
        object Button24: TButton
          Left = 3
          Top = 41
          Width = 211
          Height = 25
          Caption = 'Revert'
          TabOrder = 1
        end
      end
      object GroupBox12: TGroupBox
        Left = 223
        Top = 80
        Width = 217
        Height = 73
        Caption = 'Invert Mouse Movment'
        TabOrder = 6
        object Button25: TButton
          Left = 3
          Top = 16
          Width = 211
          Height = 25
          Caption = 'Invert'
          TabOrder = 0
        end
        object Button26: TButton
          Left = 3
          Top = 41
          Width = 211
          Height = 25
          Caption = 'Revert'
          TabOrder = 1
        end
      end
      object GroupBox14: TGroupBox
        Left = 3
        Top = 234
        Width = 217
        Height = 73
        Caption = 'Mouse Tremble'
        TabOrder = 7
        object Button29: TButton
          Left = 3
          Top = 16
          Width = 211
          Height = 25
          Caption = 'Hide'
          TabOrder = 0
        end
        object Button30: TButton
          Left = 3
          Top = 41
          Width = 211
          Height = 25
          Caption = 'Show'
          TabOrder = 1
        end
      end
    end
    object Graphic: TTabSheet
      Caption = 'Graphic'
      ImageIndex = 1
      object GroupBox10: TGroupBox
        Left = 3
        Top = 3
        Width = 443
        Height = 201
        Caption = 'Surprise'
        TabOrder = 0
        object Image1: TImage
          Left = 135
          Top = 17
          Width = 306
          Height = 182
          Align = alRight
        end
        object RadioButton1: TRadioButton
          Left = 8
          Top = 20
          Width = 113
          Height = 17
          Caption = 'Jeff The Killer'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RadioButton2: TRadioButton
          Left = 8
          Top = 43
          Width = 113
          Height = 17
          Caption = 'Astolfo'
          TabOrder = 1
        end
        object Button21: TButton
          Left = 3
          Top = 168
          Width = 126
          Height = 25
          Caption = 'Send'
          TabOrder = 2
        end
        object RadioButton3: TRadioButton
          Left = 8
          Top = 66
          Width = 113
          Height = 17
          Caption = 'UK Anthem'
          TabOrder = 3
        end
        object RadioButton4: TRadioButton
          Left = 8
          Top = 89
          Width = 113
          Height = 17
          Caption = 'USA Anthem'
          TabOrder = 4
        end
        object RadioButton5: TRadioButton
          Left = 8
          Top = 112
          Width = 113
          Height = 17
          Caption = 'We are Spartans!'
          TabOrder = 5
        end
        object RadioButton6: TRadioButton
          Left = 8
          Top = 135
          Width = 113
          Height = 17
          Caption = 'This is scotland!'
          TabOrder = 6
        end
      end
      object GroupBox15: TGroupBox
        Left = 3
        Top = 208
        Width = 441
        Height = 99
        Caption = 'GDI'
        TabOrder = 1
        object Button22: TButton
          Left = 3
          Top = 16
          Width = 435
          Height = 25
          Caption = 'Invert Colors'
          TabOrder = 0
        end
        object Button31: TButton
          Left = 3
          Top = 41
          Width = 435
          Height = 25
          Caption = 'BSoD'
          TabOrder = 1
        end
        object Button32: TButton
          Left = 4
          Top = 66
          Width = 434
          Height = 25
          Caption = 'Tunnel'
          TabOrder = 2
        end
      end
    end
    object Media: TTabSheet
      Caption = 'Media'
      ImageIndex = 2
      object GroupBox16: TGroupBox
        Left = 3
        Top = 73
        Width = 443
        Height = 86
        Caption = 'Video'
        TabOrder = 0
        DesignSize = (
          443
          86)
        object Button33: TButton
          Left = 3
          Top = 58
          Width = 437
          Height = 25
          Anchors = [akLeft, akRight, akBottom]
          Caption = 'Play'
          TabOrder = 0
        end
        object Edit3: TEdit
          Left = 3
          Top = 16
          Width = 346
          Height = 23
          ReadOnly = True
          TabOrder = 1
          Text = 'C:/audio.mp4'
        end
        object Button34: TButton
          Left = 355
          Top = 16
          Width = 85
          Height = 23
          Caption = 'Browse'
          TabOrder = 2
        end
        object CheckBox2: TCheckBox
          Left = 7
          Top = 41
          Width = 97
          Height = 17
          Caption = 'With Audio'
          TabOrder = 3
        end
      end
      object GroupBox17: TGroupBox
        Left = 3
        Top = 3
        Width = 443
        Height = 69
        Caption = 'Audio'
        TabOrder = 1
        object Button35: TButton
          Left = 3
          Top = 41
          Width = 437
          Height = 25
          Caption = 'Play'
          TabOrder = 0
        end
        object Edit4: TEdit
          Left = 3
          Top = 16
          Width = 346
          Height = 23
          ReadOnly = True
          TabOrder = 1
          Text = 'C:/audio.mp3'
        end
        object Button36: TButton
          Left = 355
          Top = 16
          Width = 85
          Height = 23
          Caption = 'Browse'
          TabOrder = 2
        end
      end
    end
  end
end
