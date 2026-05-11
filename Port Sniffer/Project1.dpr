
program Project1;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {MainForm},
  UnitThreadSniffer in 'UnitThreadSniffer.pas',
  UWinsockErreurs in 'UWinsockErreurs.pas',
  WinSock2 in 'WinSock2.pas',
  UnitPileTrame in 'UnitPileTrame.pas',
  UnitGlobal in 'UnitGlobal.pas',
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
