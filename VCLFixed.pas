unit VCLFixed;
interface
uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  VCLFixPack,
  VCLFixPackHint,
  Vcl.StdCtrls;

type
  TfrmSample = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Update1;
  end;
var
  frmSample: TfrmSample;
implementation
{$R *.dfm}

procedure TfrmSample.Update1;
begin
  ShowMessage('Hello World');
end;

procedure TfrmSample.Button2Click(Sender: TObject);
begin
  Update1;
end;

end.
