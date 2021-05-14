program ProvaDelphiApp;

uses
  Vcl.Forms,
  uPrincipal in 'src\uPrincipal.pas' {frmPrincipal},
  uTarefa1 in 'src\uTarefa1.pas' {frmTarefa1},
  uTarefa2 in 'src\uTarefa2.pas' {frmTarefa2},
  uTarefa3 in 'src\uTarefa3.pas' {frmTarefa3},
  uspQuery in 'src\\uspQuery.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
