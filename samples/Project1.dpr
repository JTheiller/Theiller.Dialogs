program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Theiller.Dialogs.Timer in '..\src\Theiller.Dialogs.Timer.pas',
  Theiller.Dialogs.Lib in '..\src\Theiller.Dialogs.Lib.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
