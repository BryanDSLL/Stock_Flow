program mml;

uses
  Forms,
  multilang in 'multilang.pas' {ToolsForm};

{$R *.res}

begin
  Application.Initialize;
  {$IFDEF CONDITIONALEXPRESSIONS}
  {$IF CompilerVersion > 18}
  Application.MainFormOnTaskbar := True;
  {$IFEND}
  {$ENDIF}
  Application.CreateForm(TToolsForm, ToolsForm);
  Application.Run;
end.
