unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfMain = class(TForm)
    btnDataSetCopy: TButton;
    btnDatasetLoop: TButton;
    btnStreamns: TButton;
    btnExceptionsPerfomance: TButton;
    Button5: TButton;
    procedure btnDataSetCopyClick(Sender: TObject);
    procedure btnDatasetLoopClick(Sender: TObject);
    procedure btnStreamnsClick(Sender: TObject);
    procedure btnExceptionsPerfomanceClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
  public
  end;

var
  fMain: TfMain;

implementation

uses
  DatasetCopy, DatasetLoop, Streams, Exceptions, Threads;

{$R *.dfm}

procedure TfMain.btnDataSetCopyClick(Sender: TObject);
begin
  fDatasetCopy := TfDatasetCopy.Create(Self);
  try
    fDatasetCopy.ShowModal;
  finally
    FreeAndNil(fDatasetCopy);
  end;
end;

procedure TfMain.btnDatasetLoopClick(Sender: TObject);
begin
  fDatasetLoop := TfDatasetLoop.Create(Self);
  try
    fDatasetLoop.ShowModal;
  finally
    FreeAndNil(fDatasetLoop);
  end;
end;

procedure TfMain.btnStreamnsClick(Sender: TObject);
begin
  fStreams := TfStreams.Create(Self);
  try
    fStreams.ShowModal;
  finally
    FreeAndNil(fStreams);
  end;
end;

procedure TfMain.Button5Click(Sender: TObject);
begin
  fThreads := TfThreads.Create(Self);
  try
    fThreads.ShowModal;
  finally
    FreeAndNil(fThreads);
  end;
end;

procedure TfMain.btnExceptionsPerfomanceClick(Sender: TObject);
begin
  fExceptions := TfExceptions.Create(Self);
  try
    fExceptions.ShowModal;
  finally
    FreeAndNil(fExceptions);
  end;
end;

end.
