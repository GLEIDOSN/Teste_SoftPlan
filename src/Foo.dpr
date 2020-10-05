program Foo;

uses
  Vcl.Forms,
  Main in 'Main.pas' {fMain},
  DatasetCopy in 'DatasetCopy.pas' {fDatasetCopy},
  DatasetLoop in 'DatasetLoop.pas' {fDatasetLoop},
  Streams in 'Streams.pas' {fStreams},
  Exceptions in 'Exceptions.pas' {fExceptions},
  Threads in 'Threads.pas' {fThreads};

{$R *.res}

begin
  //ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
