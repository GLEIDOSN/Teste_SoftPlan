unit DatasetLoop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfDatasetLoop = class(TForm)
    DBGrid1: TDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
  public
  end;

var
  fDatasetLoop: TfDatasetLoop;

implementation

{$R *.dfm}

procedure TfDatasetLoop.Button1Click(Sender: TObject);
begin
  ClientDataSet1.First;

  while not ClientDataSet1.Eof do
  begin
    if ClientDataSet1.FieldByName('Field2').AsInteger mod 2 = 0 then
      ClientDataSet1.Delete;

    ClientDataSet1.Next;
  end;
end;

procedure TfDatasetLoop.FormCreate(Sender: TObject);
begin
  ClientDataSet1.CreateDataSet;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Field1').AsString := 'Field1';
  ClientDataSet1.FieldByName('Field2').AsInteger := 1;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Field1').AsString := 'Field2';
  ClientDataSet1.FieldByName('Field2').AsInteger := 2;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Field1').AsString := 'Field3';
  ClientDataSet1.FieldByName('Field2').AsInteger := 2;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Field1').AsString := 'Field4';
  ClientDataSet1.FieldByName('Field2').AsInteger := 1;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Field1').AsString := 'Field5';
  ClientDataSet1.FieldByName('Field2').AsInteger := 2;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Field1').AsString := 'Field6';
  ClientDataSet1.FieldByName('Field2').AsInteger := 2;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Field1').AsString := 'Field7';
  ClientDataSet1.FieldByName('Field2').AsInteger := 2;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Field1').AsString := 'Field8';
  ClientDataSet1.FieldByName('Field2').AsInteger := 1;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Field1').AsString := 'Field9';
  ClientDataSet1.FieldByName('Field2').AsInteger := 2;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Field1').AsString := 'Field10';
  ClientDataSet1.FieldByName('Field2').AsInteger := 1;
  ClientDataSet1.Post;
end;

end.
