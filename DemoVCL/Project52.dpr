program Project52;

uses
  Vcl.Forms,
  Unit6 in 'Unit6.pas' {Form6},
  DelphiWindowStyle.Core.Win in '..\DelphiWindowStyle.Core.Win.pas',
  DelphiWindowStyle.Types in '..\DelphiWindowStyle.Types.pas',
  DelphiWindowStyle.VCL in '..\DelphiWindowStyle.VCL.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
