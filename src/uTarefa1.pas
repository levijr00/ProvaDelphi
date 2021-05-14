unit uTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uspQuery;

type
  TfrmTarefa1 = class(TForm)
    grpConfigConsulta: TGroupBox;
    pnlCabecalho: TPanel;
    grpColunas: TGroupBox;
    memColunas: TMemo;
    grpTabelas: TGroupBox;
    memTabelas: TMemo;
    grpCondicoes: TGroupBox;
    memCondicao: TMemo;
    pnlControles: TPanel;
    btnGeraSQL: TBitBtn;
    grpSQLGerado: TGroupBox;
    memSQL: TMemo;
    spQuery1: TspQuery;
    procedure btnGeraSQLClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTarefa1: TfrmTarefa1;

implementation

{$R *.dfm}

procedure TfrmTarefa1.btnGeraSQLClick(Sender: TObject);
begin
   spQuery1.spColunas.Text   := memColunas.Text;
   spQuery1.spTabelas.Text   := memTabelas.Text;
   spQuery1.spCondicoes.Text := memCondicao.Text;
   spQuery1.GeraSQL;

   memSQL.Text := spQuery1.SQL.Text;
end;

procedure TfrmTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

end.


