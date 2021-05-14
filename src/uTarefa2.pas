unit uTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Samples.Spin;

type
  TThreadProgresso = class(TThread)
  private
    FProgresso: TProgressBar;
    FTempo: Integer;
    procedure SetTempo(const Value: Integer);
  public
    property ProgressBar: TProgressBar read FProgresso write FProgresso;
    property Tempo: Integer read FTempo write SetTempo;
  protected
    procedure Execute; override;
  end;

  TfrmTarefa2 = class(TForm)
    pnlProgressos: TPanel;
    pnlThread1: TPanel;
    grpThread1: TGroupBox;
    grpThread2: TGroupBox;
    pgbThread2: TProgressBar;
    pnlControles: TPanel;
    btnExecutar: TBitBtn;
    pgbThread1: TProgressBar;
    speTimer1: TSpinEdit;
    speTimer2: TSpinEdit;
    procedure btnExecutarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FThread1, FThread2: TThreadProgresso;
    procedure FinalizarThread(pThread: TThreadProgresso);
  public
    procedure AjustarBotao(pSender: TObject);
  end;

var
  frmTarefa2: TfrmTarefa2;

implementation

{$R *.dfm}

{ TThreadProgresso }

procedure TThreadProgresso.Execute;
begin
   inherited;

   if (FProgresso.Position > 0) then
   begin
      FProgresso.Position := 0;
   end;

   while FProgresso.Position < FProgresso.Max do
   begin
      if not Terminated then
      begin
         FProgresso.StepBy(1);
         Sleep(FTempo);
      end;
   end;

   Application.ProcessMessages();
   Terminate;
   inherited;
end;

procedure TThreadProgresso.SetTempo(const Value: Integer);
begin
   if (Value <= 0) then
   begin
      raise Exception.Create('O tempo de execução deve ser maior que zero.');
   end
   else
   begin
      FTempo := Value;
   end;
end;

procedure TfrmTarefa2.AjustarBotao(pSender: TObject);
begin
   btnExecutar.Enabled := FThread1.Terminated and FThread2.Terminated;
end;

procedure TfrmTarefa2.btnExecutarClick(Sender: TObject);
begin
   btnExecutar.Enabled      := False;
   FThread1                 := TThreadProgresso.Create(False);
   FThread1.ProgressBar     := pgbThread1;
   FThread1.Tempo           := StrToIntDef(speTimer1.Text, 1);
   FThread1.FreeOnTerminate := True;
   FThread1.OnTerminate     := AjustarBotao;

   FThread2                 := TThreadProgresso.Create(False);
   FThread2.ProgressBar     := pgbThread2;
   FThread2.Tempo           := StrToIntDef(speTimer2.Text, 1);
   FThread2.FreeOnTerminate := True;
   FThread2.OnTerminate     := AjustarBotao;
end;

procedure TfrmTarefa2.FinalizarThread(pThread: TThreadProgresso);
begin
   if Assigned(pThread) then
   begin
      pThread.Terminate;
   end;
end;

procedure TfrmTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FinalizarThread(FThread1);
   FinalizarThread(FThread2);
   Action := caFree;
end;

end.
