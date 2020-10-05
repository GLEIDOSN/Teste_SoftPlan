unit Threads;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  System.Threading;

type
  TfThreads = class(TForm)
    Progressbar: TProgressBar;
    btnProcessar: TButton;
    grpbThread2: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    lblContador2: TLabel;
    edtTimeThread2: TEdit;
    grpbThread1: TGroupBox;
    Label5: TLabel;
    Label3: TLabel;
    lblContador1: TLabel;
    edtTimeThread1: TEdit;
    lblProgresso: TLabel;
    procedure btnProcessarClick(Sender: TObject);
  private
    procedure CountThread1;
    procedure CountThread2;
  public

  end;

var
  fThreads: TfThreads;

implementation

{$R *.dfm}

procedure TfThreads.btnProcessarClick(Sender: TObject);
var
  Tasks: array [0 .. 1] of ITask;
begin
  Progressbar.Position := 0;
  Progressbar.Max := 200;

  Tasks[0] := TTask.Create(CountThread1);
  Tasks[0].Start;

  Tasks[1] := TTask.Create(CountThread2);
  Tasks[1].Start;

end;

procedure TfThreads.CountThread1;
var
  i: Integer;
begin
  for i := 0 to 100 do
  begin
    Sleep(StrToInt(edtTimeThread1.Text));
    lblContador1.Caption := i.ToString;
    Progressbar.Position := Progressbar.Position + 1;
    Application.ProcessMessages;
  end;
end;

procedure TfThreads.CountThread2;
var
  i: Integer;
begin
  for i := 0 to 100 do
  begin
    Sleep(StrToInt(edtTimeThread2.Text));
    lblContador2.Caption := i.ToString;
    Progressbar.Position := Progressbar.Position + 1;
    lblProgresso.Caption := 'Progresso: ' + Progressbar.Position.ToString;
    Application.ProcessMessages;
  end;
end;

end.
