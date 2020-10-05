unit Exceptions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Diagnostics,
  System.Threading;

type
  TfExceptions = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
    Label2: TLabel;
    Button2: TButton;
    Memo3: TMemo;
    Label1: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FPath: string;

    function LoadNumbers(AIgnore: Integer): Boolean;
    procedure WriteMemoException(E: Exception);
  public
  end;

var
  fExceptions: TfExceptions;

implementation

{$R *.dfm}

procedure TfExceptions.Button1Click(Sender: TObject);
var
  LStopWatch: TStopWatch;
begin
  try
    Memo1.Lines.Clear;
    Memo2.Lines.Clear;

    try
      LStopWatch := TStopWatch.StartNew;
      LoadNumbers(1);
    finally
      LStopWatch.Stop;
      Label1.Caption := 'Tempo de processamento: ' +
        IntToStr(LStopWatch.ElapsedMilliseconds) + ' ms';
    end;
  except
    on E: Exception do
    begin
      WriteMemoException(E);
      raise;
    end;
  end;
end;

procedure TfExceptions.Button2Click(Sender: TObject);
var
  i: Integer;
  LStopWatch: TStopWatch;
begin
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;

  LStopWatch := TStopWatch.StartNew;

  for i := 0 to 7 do
    LoadNumbers(i);

  LStopWatch.Stop;

  Label1.Caption := 'Tempo de processamento: ' +
    IntToStr(LStopWatch.ElapsedMilliseconds) + ' ms';
end;

procedure TfExceptions.FormCreate(Sender: TObject);
begin
  FPath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) +
    'text.txt';
end;

function TfExceptions.LoadNumbers(AIgnore: Integer): Boolean;
var
  st: TStringList;
  s: String;
begin
  st := TStringList.Create;
  st.LoadFromFile(FPath);

  try
    s := st.Text;
    Memo2.Lines.Add(StringReplace(s, IntToStr(AIgnore), '', [rfReplaceAll]));
  except
    on E: Exception do
    begin
      WriteMemoException(E);
      Memo1.Lines.Add(Format('Erro ao tentar retirar número %d', [AIgnore]));
    end;
  end;

  FreeAndNil(st);
  Result := True;
end;

procedure TfExceptions.WriteMemoException(E: Exception);
begin
  Memo1.Lines.Add('Classe Exception: ' + E.ClassName);
  Memo1.Lines.Add('Erro: ' + E.Message);
end;

end.
