program Foo;

uses
  Vcl.Forms,
  Main in 'Main.pas' {fMain},
  DatasetCopy in 'DatasetCopy.pas' {fDatasetCopy},
  DatasetLoop in 'DatasetLoop.pas' {fDatasetLoop},
  Streams in 'Streams.pas' {fStreams},
  Exceptions in 'Exceptions.pas' {fExceptions};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TfDatasetCopy, fDatasetCopy);
  Application.CreateForm(TfDatasetLoop, fDatasetLoop);
  Application.CreateForm(TfStreams, fStreams);
  Application.CreateForm(TfExceptions, fExceptions);
  Application.Run;
end.
