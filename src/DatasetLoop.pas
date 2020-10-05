unit DatasetLoop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfDatasetLoop = class(TForm)
    dbgr1: TDBGrid;
    cds1: TClientDataSet;
    ds1: TDataSource;
    btnDeletarPares: TButton;
    dbNav1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure btnDeletarParesClick(Sender: TObject);
  private
  public
  end;

var
  fDatasetLoop: TfDatasetLoop;

implementation

{$R *.dfm}

procedure TfDatasetLoop.btnDeletarParesClick(Sender: TObject);
begin
  cds1.First;

  while not cds1.Eof do
  begin
    if cds1.FieldByName('Field2').AsInteger mod 2 = 0 then
      cds1.Delete
    else
      cds1.Next;
  end;
end;

procedure TfDatasetLoop.FormCreate(Sender: TObject);
begin
  cds1.CreateDataSet;

  cds1.Append;
  cds1.FieldByName('Field1').AsString := 'Field1';
  cds1.FieldByName('Field2').AsInteger := 1;
  cds1.Post;

  cds1.Append;
  cds1.FieldByName('Field1').AsString := 'Field2';
  cds1.FieldByName('Field2').AsInteger := 2;
  cds1.Post;

  cds1.Append;
  cds1.FieldByName('Field1').AsString := 'Field3';
  cds1.FieldByName('Field2').AsInteger := 2;
  cds1.Post;

  cds1.Append;
  cds1.FieldByName('Field1').AsString := 'Field4';
  cds1.FieldByName('Field2').AsInteger := 1;
  cds1.Post;

  cds1.Append;
  cds1.FieldByName('Field1').AsString := 'Field5';
  cds1.FieldByName('Field2').AsInteger := 2;
  cds1.Post;

  cds1.Append;
  cds1.FieldByName('Field1').AsString := 'Field6';
  cds1.FieldByName('Field2').AsInteger := 2;
  cds1.Post;

  cds1.Append;
  cds1.FieldByName('Field1').AsString := 'Field7';
  cds1.FieldByName('Field2').AsInteger := 2;
  cds1.Post;

  cds1.Append;
  cds1.FieldByName('Field1').AsString := 'Field8';
  cds1.FieldByName('Field2').AsInteger := 1;
  cds1.Post;

  cds1.Append;
  cds1.FieldByName('Field1').AsString := 'Field9';
  cds1.FieldByName('Field2').AsInteger := 2;
  cds1.Post;

  cds1.Append;
  cds1.FieldByName('Field1').AsString := 'Field10';
  cds1.FieldByName('Field2').AsInteger := 1;
  cds1.Post;
end;

end.
