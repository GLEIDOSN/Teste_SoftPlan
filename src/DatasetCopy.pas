unit DatasetCopy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfDatasetCopy = class(TForm)
    dbgr1: TDBGrid;
    dbgr2: TDBGrid;
    dbNav1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FDataset1, FDataset2: TClientDataset;
    FDataSource1, FDataSource2: TDataSource;

    procedure CloneDataSet(aDataSet_Clonar, aDataSet_Clonado
      : TCustomClientDataSet; aReset: Boolean; aKeepSettings: Boolean = False);
    procedure InitDataset;
  public
  end;

var
  fDatasetCopy: TfDatasetCopy;

implementation

{$R *.dfm}

procedure TfDatasetCopy.CloneDataSet(aDataSet_Clonar, aDataSet_Clonado
  : TCustomClientDataSet; aReset, aKeepSettings: Boolean);
begin
  aDataSet_Clonado.CloneCursor(aDataSet_Clonar, aReset, aKeepSettings);
end;

procedure TfDatasetCopy.FormCreate(Sender: TObject);
begin
  inherited;
  FDataset1 := TClientDataset.Create(nil);
  FDataset2 := TClientDataset.Create(nil);
  FDataSource1 := TDataSource.Create(nil);
  FDataSource2 := TDataSource.Create(nil);

  FDataSource1.DataSet := FDataset1;
  FDataSource2.DataSet := FDataset2;

  dbgr1.DataSource := FDataSource1;
  dbgr2.DataSource := FDataSource2;

  InitDataset;
end;

procedure TfDatasetCopy.FormDestroy(Sender: TObject);
begin
  FDataset1.Free;
  FDataset2.Free;
  FDataSource1.Free;
  FDataSource2.Free;
end;

procedure TfDatasetCopy.InitDataset;
begin
  dbNav1.DataSource := FDataSource1;
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

  CloneDataSet(FDataset1, FDataset2, False, true);
end;

end.
