unit Streams;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfStreams = class(TForm)
    btnLoad1: TButton;
    Label1: TLabel;
    btnLoad100: TButton;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure btnLoad1Click(Sender: TObject);
    procedure btnLoad100Click(Sender: TObject);
  private
    FPath: string;

    function LoadStream: TMemoryStream;
    procedure WriteLabelSize(aSize: Integer; aLabel: TLabel);
  public
  end;

var
  fStreams: TfStreams;

implementation

{$R *.dfm}

procedure TfStreams.btnLoad1Click(Sender: TObject);
var
  S: TStream;
begin
  S := LoadStream;
  try
    if S <> nil then
      WriteLabelSize(S.Size, Label1)
    else
      WriteLabelSize(0, Label1);
  finally
    S.Free;
  end;
end;

procedure TfStreams.btnLoad100Click(Sender: TObject);
var
  i, SizeInc: Integer;
  S: TStream;
begin
  ProgressBar1.Position := 0;
  ProgressBar1.Max := 100;
  SizeInc := 0;

  S := LoadStream;
  try
    if S <> nil then
    begin
      for i := 0 to 99 do
      begin
        SizeInc := SizeInc + S.Size;
        ProgressBar1.Position := ProgressBar1.Position + 1;
        Application.ProcessMessages;
      end;
    end;
  finally
    S.Free;
  end;

  WriteLabelSize(SizeInc, Label2);
end;

procedure TfStreams.FormCreate(Sender: TObject);
begin
  FPath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) +
    'pdf.pdf';
end;

function TfStreams.LoadStream: TMemoryStream;
begin
  if FileExists(FPath) then
  begin
    Result := TMemoryStream.Create;
    Result.LoadFromFile(FPath);
  end
  else
    Result := nil;
end;

procedure TfStreams.WriteLabelSize(aSize: Integer; aLabel: TLabel);
begin
  aLabel.Caption := 'Size: ' + (aSize div 1024).ToString + ' MB';
end;

end.
