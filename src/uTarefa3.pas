unit uTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Datasnap.DBClient, Vcl.Buttons;

type
  TfrmTarefa3 = class(TForm)
    pnlDados: TPanel;
    pnlRodape: TPanel;
    grp1: TGroupBox;
    dbgProjetos: TDBGrid;
    pnlTotais: TPanel;
    pnl1: TPanel;
    edtTotal: TEdit;
    btnTotalizar: TBitBtn;
    lbl1: TLabel;
    pnl2: TPanel;
    edtDivisoes: TEdit;
    btnDividir: TBitBtn;
    lbl2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTotalizarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
  private
    FCDS: TClientDataSet;
    FDTS: TDataSource;
  public
    { Public declarations }
  end;

var
  frmTarefa3: TfrmTarefa3;

implementation

{$R *.dfm}

procedure TfrmTarefa3.btnDividirClick(Sender: TObject);
var
   lTotal, lRegAnterior: Double;
   lBookMark: TBookmark;
begin
   try
      lBookMark := FCDS.GetBookmark;
      FCDS.DisableControls;
      lTotal := 0;
      FCDS.First;
      while not FCDS.Eof do
      begin
         if FCDS.Bof then
         begin
            lRegAnterior := FCDS.FieldByName('Valor').AsFloat;
         end
         else
         begin
            lTotal       := lTotal + (FCDS.FieldByName('Valor').AsFloat / lRegAnterior);
            lRegAnterior := FCDS.FieldByName('Valor').AsFloat;
         end;
         FCDS.Next;
      end;

      edtDivisoes.Text := FormatFloat(',0.00', lTotal);
   finally
      if FCDS.BookmarkValid(lBookMark) then
      begin
         FCDS.GotoBookmark(lBookmark);
      end;

      FCDS.FreeBookmark(lBookmark);
      FCDS.EnableControls;
   end;

end;

procedure TfrmTarefa3.btnTotalizarClick(Sender: TObject);
var
   lTotal: Double;
   lBookMark: TBookmark;
begin
   try
      lBookMark := FCDS.GetBookmark;
      FCDS.DisableControls;
      lTotal := 0;
      FCDS.First;
      while not FCDS.Eof do
      begin
         lTotal := lTotal + FCDS.FieldByName('Valor').AsFloat;
         FCDS.Next;
      end;

      edtTotal.Text := FormatFloat(',0.00', lTotal);
   finally
      if FCDS.BookmarkValid(lBookMark) then
      begin
         FCDS.GotoBookmark(lBookmark);
      end;

      FCDS.FreeBookmark(lBookmark);
      FCDS.EnableControls;
   end;
end;

procedure TfrmTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(FDTS);
   FreeAndNil(FCDS);
   Action := caFree;
end;

procedure TfrmTarefa3.FormCreate(Sender: TObject);
var lCont: Integer;
begin
   FCDS := TClientDataSet.Create(Self);
   FDTS := TDataSource.Create(Self);

   FCDS.FieldDefs.Add('IdProjeto', ftInteger, 0, True);
   FCDS.FieldDefs.Add('NomeProjeto', ftString, 40, True);
   FCDS.FieldDefs.Add('Valor', ftFloat, 0, True);
   FCDS.CreateDataSet;

   FDTS.DataSet := FCDS;

   TFloatField(FCDS.FieldByName('Valor')).DisplayFormat := 'R$ ,0.00;R$ -,0.00;';

   for lCont := 1 to 10 do
   begin
      FCDS.Append;
      FCDS.FieldByName('IdProjeto').AsInteger  := lCont;
      FCDS.FieldByName('NomeProjeto').AsString := Format('Projeto %d', [lCont]);
      FCDS.FieldByName('Valor').AsFloat        := (lCont * 10);
      FCDS.Post;
   end;

   FCDS.First;
   dbgProjetos.DataSource := FDTS;

   dbgProjetos.Columns[0].FieldName := 'IdProjeto';
   dbgProjetos.Columns[1].FieldName := 'NomeProjeto';
   dbgProjetos.Columns[2].FieldName := 'Valor';
end;

end.
