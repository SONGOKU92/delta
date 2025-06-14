object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 129
  ClientWidth = 261
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object ClientSource: TncClientSource
    Encryption = etRijndael
    EncryptionKey = 'gaynuggetporn'
    EncryptOnHashedKey = False
    OnConnected = ClientSourceConnected
    OnHandleCommand = ClientSourceHandleCommand
    Host = 'LocalHost'
    Left = 16
    Top = 16
  end
  object ScreenCaptureTimer: TTimer
    Enabled = False
    Interval = 16
    OnTimer = ScreenCaptureTimerTimer
    Left = 128
    Top = 16
  end
  object WebcamTimer: TTimer
    Enabled = False
    Interval = 1
    OnTimer = WebcamTimerTimer
    Left = 56
    Top = 56
  end
end
