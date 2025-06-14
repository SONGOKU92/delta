unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1;


procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then // VK_RETURN is the Enter key
  begin
    Key := #0;
    Memo1.Lines.Add('You said: ' + Edit1.Text);
    Form1.ClientSource.ExecCommand(0,   bytesof('MSG|' + 'Client Said: ' + '|' + Edit1.Text), false);
    Edit1.SetFocus;
    Edit1.clear;
  end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
         Form1.ClientSource.ExecCommand(0,   bytesof('ChatClose|'), false);
end;

end.
