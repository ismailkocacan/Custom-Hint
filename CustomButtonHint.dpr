program CustomButtonHint;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {Form1},
  UnitExtHint in 'UnitExtHint.pas',
  UnitCustomHintButton in 'UnitCustomHintButton.pas',
  UnitUtil in 'UnitUtil.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
