program VCLFixApp;

uses
  Vcl.Forms,
  VCLFixed in 'VCLFixed.pas' {frmSample},
  VCLFixExample in 'VCLFixExample.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'QC15408';
  Application.CreateForm(TfrmSample, frmSample);
  Application.Run;
end.
