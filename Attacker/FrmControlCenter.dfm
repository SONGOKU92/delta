object Form10: TForm10
  Left = 0
  Top = 0
  Caption = 'Form10'
  ClientHeight = 466
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 417
    Height = 41
    Caption = 'View full system info'
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 55
    Width = 417
    Height = 130
    Caption = 'System Info'
    TabOrder = 1
    object ListView1: TListView
      Left = 2
      Top = 17
      Width = 413
      Height = 111
      Align = alClient
      Columns = <
        item
          AutoSize = True
          Caption = '.'
        end
        item
          AutoSize = True
          Caption = '.'
        end>
      Items.ItemData = {
        05000100000500000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
        000E55007300650072002F0043006F006D00700075007400650072003A000000
        0000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000B4F0053002000560065
        007200730069006F006E003A0000000000FFFFFFFFFFFFFFFF00000000FFFFFF
        FF000000000E530079007300740065006D00200055007000740069006D006500
        3A0000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000A490064006C
        0065002000540069006D0065003A0000000000FFFFFFFFFFFFFFFF00000000FF
        FFFFFF000000000E4100630074006900760065002000570069006E0064006F00
        77003A00}
      ShowColumnHeaders = False
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
  object GroupBox2: TGroupBox
    Left = 431
    Top = 8
    Width = 321
    Height = 85
    Caption = 'RAM Usage'
    TabOrder = 2
    object Label1: TLabel
      Left = 56
      Top = 29
      Width = 74
      Height = 15
      Caption = '0% (0 / 16 GB)'
    end
    object ProgressBar1: TProgressBar
      Left = 10
      Top = 50
      Width = 299
      Height = 21
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 431
    Top = 99
    Width = 321
    Height = 85
    Caption = 'CPU Usage'
    TabOrder = 3
    object Label2: TLabel
      Left = 56
      Top = 28
      Width = 16
      Height = 15
      Caption = '0%'
    end
    object ProgressBar2: TProgressBar
      Left = 10
      Top = 49
      Width = 299
      Height = 21
      TabOrder = 0
    end
  end
  object GroupBox5: TGroupBox
    Left = 431
    Top = 190
    Width = 321
    Height = 131
    Caption = 'Network'
    TabOrder = 4
    object ListView3: TListView
      Left = 2
      Top = 17
      Width = 317
      Height = 112
      Align = alClient
      Columns = <
        item
          AutoSize = True
          Caption = '.'
        end
        item
          AutoSize = True
          Caption = '.'
        end>
      Items.ItemData = {
        05E80000000500000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
        00075300740061007400750073003A0000000000FFFFFFFFFFFFFFFF00000000
        FFFFFFFF00000000084C006100740065006E00630079003A0000000000FFFFFF
        FFFFFFFFFF00000000FFFFFFFF00000000095300650063007500720069007400
        79003A0000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000000012520065
        006D006F0074006500200049005000200041006400640072006500730073003A
        0000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000000009540043005000
        200050006F00720074003A00}
      ShowColumnHeaders = False
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
  object GroupBox7: TGroupBox
    Left = 8
    Top = 327
    Width = 744
    Height = 131
    Caption = 'Geo Location'
    TabOrder = 5
    object ListView5: TListView
      Left = 2
      Top = 17
      Width = 740
      Height = 112
      Align = alClient
      Columns = <
        item
          AutoSize = True
          Caption = '.'
        end
        item
          AutoSize = True
          Caption = '.'
        end>
      Items.ItemData = {
        05D00000000500000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
        000843006F0075006E007400720079003A0000000000FFFFFFFFFFFFFFFF0000
        0000FFFFFFFF000000000752006500670069006F006E003A0000000000FFFFFF
        FFFFFFFFFF00000000FFFFFFFF000000000543006900740079003A0000000000
        FFFFFFFFFFFFFFFF00000000FFFFFFFF00000000094C00610074006900740075
        00640065003A0000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000A
        4C006F006E006700690074007500640065003A00}
      ShowColumnHeaders = False
      TabOrder = 0
      ViewStyle = vsReport
      ExplicitWidth = 317
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 191
    Width = 417
    Height = 130
    Caption = 'Hardware'
    TabOrder = 6
    object ListView2: TListView
      Left = 2
      Top = 17
      Width = 413
      Height = 111
      Align = alClient
      Columns = <
        item
          AutoSize = True
          Caption = '.'
        end
        item
          AutoSize = True
          Caption = '.'
        end>
      Items.ItemData = {
        059E0000000400000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
        000F43006F006D007000750074006500720020004D006F00640065006C003A00
        00000000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000000004520041004D003A
        0000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000000004430050005500
        3A0000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF00000000044700500055
        003A00}
      ShowColumnHeaders = False
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
end
