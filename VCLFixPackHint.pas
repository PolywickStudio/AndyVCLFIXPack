{$DEFINE AppHintFix}
unit VCLFixPackHint;
interface

implementation
uses
  Controls, Types, VclFixPack;

{$IFDEF AppHintFix}

// QC15408
function FindDragTargetAlt(const Pos: TPoint; AllowDisabled: Boolean): TControl;
var
  Window: TWinControl;
  Control: TControl;
begin
  Result := nil;
  Window := FindVCLWindow(Pos);
  if Window <> nil then
  begin
    Result := Window;
    Control := Window.ControlAtPos(Window.ScreenToClient(Pos), AllowDisabled, AllowDisabled);
    if Control <> nil then Result := Control;
  end;
end;

var
  FindDragTargetHook: TXRedirCode;
  //Reg1: TXRedirCode;

procedure InitAppHintFix;
begin
  HookProc(@Controls.FindDragTarget, @FindDragTargetAlt, FindDragTargetHook);
end;

procedure FiniAppHintFix;
begin
  UnhookProc(@Controls.FindDragTarget, FindDragTargetHook);
end;
{$ENDIF AppHintFix}

initialization
{$IFDEF AppHintFix}
  InitAppHintFix;
{$ENDIF AppHintFix}

finalization
{$IFDEF AppHintFix}
  FiniAppHintFix;
{$ENDIF AppHintFix}


end.
