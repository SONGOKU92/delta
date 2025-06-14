object Form15: TForm15
  Left = 0
  Top = 0
  Caption = 'Form15'
  ClientHeight = 441
  ClientWidth = 624
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
    Width = 624
    Height = 441
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -57
    ExplicitTop = -5
    ExplicitWidth = 681
    ExplicitHeight = 446
    object TabSheet1: TTabSheet
      Caption = 'Batch'
      DesignSize = (
        616
        411)
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 616
        Height = 377
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelInner = bvNone
        Lines.Strings = (
          
            'start cmd /c "echo Hello, your being administrated by Sierra! &&' +
            ' PAUSE"')
        TabOrder = 0
        ExplicitWidth = 673
        ExplicitHeight = 382
      end
      object Button1: TButton
        Left = 3
        Top = 383
        Width = 94
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Execute Script'
        TabOrder = 1
        OnClick = Button1Click
        ExplicitTop = 388
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'VB Script'
      ImageIndex = 2
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 616
        Height = 377
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          'MsgBox "You'#39're being administrated by sierra!!", 64, "Sierra"')
        TabOrder = 0
        ExplicitWidth = 673
        ExplicitHeight = 382
      end
      object Button2: TButton
        Left = 3
        Top = 383
        Width = 94
        Height = 25
        Caption = 'Execute Script'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Powershell'
      ImageIndex = 2
      object Memo3: TMemo
        Left = 0
        Top = 0
        Width = 616
        Height = 377
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          'Add-Type -AssemblyName System.Windows.Forms'
          
            '[System.Windows.MessageBox]::Show('#39'You'#39#39're being administrated b' +
            'y sierra!'#39', '#39'Sierra'#39')')
        TabOrder = 0
        ExplicitWidth = 673
        ExplicitHeight = 382
      end
      object Button3: TButton
        Left = 3
        Top = 383
        Width = 94
        Height = 25
        Caption = 'Execute Script'
        TabOrder = 1
        OnClick = Button3Click
      end
    end
    object JavaScript: TTabSheet
      Caption = 'JavaScript'
      ImageIndex = 3
      object Memo4: TMemo
        Left = 0
        Top = 0
        Width = 616
        Height = 377
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          'alert("You are currently being controlled by sierra!");')
        TabOrder = 0
        ExplicitWidth = 673
        ExplicitHeight = 382
      end
      object Button4: TButton
        Left = 3
        Top = 383
        Width = 94
        Height = 25
        Caption = 'Execute Script'
        TabOrder = 1
        OnClick = Button4Click
      end
    end
  end
end
