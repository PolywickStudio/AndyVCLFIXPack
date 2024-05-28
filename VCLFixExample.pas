{$DEFINE VCLExample}
unit VCLFixExample;
interface
implementation
uses
  Controls,
  Types,
  Dialogs,
  VclFixPack,
  VCLFixed;
{$IFDEF VCLExample}

var
  FindDragTargetHook: TXRedirCode;

procedure UpdateTarget();
begin
  ShowMessage('Bye World');
end;

procedure InitRedirect;
begin
  HookProc(@TfrmSample.Update1, @UpdateTarget, FindDragTargetHook);
end;

procedure FiniRedirect;
begin
  UnhookProc(@TfrmSample.Update1, FindDragTargetHook);
end;
{$ENDIF VCLExample}
initialization
{$IFDEF VCLExample}
  InitRedirect;
{$ENDIF VCLExample}
finalization
{$IFDEF VCLExample}
  FiniRedirect;
{$ENDIF VCLExample}
end.
