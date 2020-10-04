unit DatasetCopy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfDatasetCopy = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
  private
    FDataset1, FDataset2: TClientDataset;
    FDataSource1, FDataSource2: TDataSource;

    procedure InitDataset;
  public
  end;

var
  fDatasetCopy: TfDatasetCopy;

implementation

{$R *.dfm}

procedure TfDatasetCopy.FormCreate(Sender: TObject);
begin
  inherited;
  FDataset1 := TClientDataset.Create(nil);
  FDataset2 := TClientDataset.Create(nil);
  FDataSource1 := TDataSource.Create(nil);
  FDataSource2 := TDataSource.Create(nil);

  FDataSource1.DataSet := FDataset1;
  FDataSource2.DataSet := FDataset2;

  DBGrid1.DataSource := FDataSource1;
  DBGrid2.DataSource := FDataSource2;

  InitDataset;
end;

procedure TfDatasetCopy.InitDataset;
begin
  DBNavigator1.DataSource := FDataSource1;
  FDataset1.Close;
  FDataset1.FieldDefs.Add('Field1', ftString, 20);
  FDataset1.FieldDefs.Add('Field2', ftInteger);
  FDataset1.CreateDataSet;

  FDataset1.Append;
  FDataset1.FieldByName('Field1').AsString := 'Field1Value1';
  FDataset1.FieldByName('Field2').AsInteger := 1;
  FDataset1.Post;

  FDataset1.Append;
  FDataset1.FieldByName('Field1').AsString := 'Field1Value2';
  FDataset1.FieldByName('Field2').AsInteger := 2;
  FDataset1.Post;

  FDataset1.Append;
  FDataset1.FieldByName('Field1').AsString := 'Field1Value3';
  FDataset1.FieldByName('Field2').AsInteger := 3;
  FDataset1.Post;
end;

end.
