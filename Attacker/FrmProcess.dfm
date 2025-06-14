object Form18: TForm18
  Left = 0
  Top = 0
  Caption = 'Form18'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object ListView1: TListView
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    Columns = <
      item
        AutoSize = True
        Caption = 'Process'
      end
      item
        AutoSize = True
        Caption = 'PID'
      end
      item
        AutoSize = True
        Caption = 'Path'
      end>
    RowSelect = True
    PopupMenu = processesPopup
    TabOrder = 0
    ViewStyle = vsReport
    ExplicitWidth = 584
    ExplicitHeight = 437
  end
  object processesPopup: TPopupMenu
    Left = 236
    Top = 98
    object R1: TMenuItem
      Caption = 'Refresh'
      OnClick = R1Click
    end
    object K1: TMenuItem
      Caption = 'Terminate'
      OnClick = K1Click
    end
  end
end
