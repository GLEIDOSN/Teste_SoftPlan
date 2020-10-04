unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
  public
  end;

var
  fMain: TfMain;

implementation

uses
  DatasetCopy, DatasetLoop, Streams, Exceptions;

{$R *.dfm}

procedure TfMain.Button1Click(Sender: TObject);
begin
  fDatasetCopy.Show;
end;

procedure TfMain.Button2Click(Sender: TObject);
begin
  fDatasetLoop.Show;
end;

procedure TfMain.Button3Click(Sender: TObject);
begin
  fStreams.Show;
end;

procedure TfMain.Button4Click(Sender: TObject);
begin
  fExceptions.Show;
end;

end.
