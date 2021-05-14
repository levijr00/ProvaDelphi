unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    mmMenu: TMainMenu;
    mniTarefas: TMenuItem;
    mniTarefa1: TMenuItem;
    mniTarefa2: TMenuItem;
    mniTarefa3: TMenuItem;
    procedure mniTarefa1Click(Sender: TObject);
    procedure mniTarefa2Click(Sender: TObject);
    procedure mniTarefa3Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uTarefa1, uTarefa2, uTarefa3;

{ TfrmPrincipal }

procedure TfrmPrincipal.mniTarefa1Click(Sender: TObject);
begin
   frmTarefa1 := TfrmTarefa1.Create(Self);
   frmTarefa1.Show;
end;

procedure TfrmPrincipal.mniTarefa2Click(Sender: TObject);
begin
   frmTarefa2 := TfrmTarefa2.Create(Self);
   frmTarefa2.Show;
end;

procedure TfrmPrincipal.mniTarefa3Click(Sender: TObject);
begin
   frmTarefa3 := TfrmTarefa3.Create(Self);
   frmTarefa3.Show;
end;

end.
