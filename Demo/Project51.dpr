program Project51;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit5 in 'Unit5.pas' {FormMain},
  DelphiWindowStyle.Core.Win in '..\DelphiWindowStyle.Core.Win.pas',
  DelphiWindowStyle.FMX in '..\DelphiWindowStyle.FMX.pas',
  DelphiWindowStyle.Types in '..\DelphiWindowStyle.Types.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
