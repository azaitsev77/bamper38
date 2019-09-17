unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.Client, Data.Bind.Components, Data.Bind.DBScope,
  FireDAC.Comp.DataSet, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.StdCtrls, Data.Bind.Controls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Bind.Navigator, Vcl.Bind.Grid, Data.Bind.Grid;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    BindSourceDB12: TBindSourceDB;
    FDManager1: TFDManager;
    FDCommand1: TFDCommand;
    DBGrid1: TDBGrid;
    FDTable2: TFDTable;
    FDConnection2: TFDConnection;
    BindSourceDB2: TBindSourceDB;
    DataSource2: TDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB1: TBindSourceDB;
    FDTable2model_key: TFDAutoIncField;
    FDTable2model: TStringField;
    FDTable2model_id: TIntegerField;
    FDTable2parent_id: TIntegerField;
    FDTable1mark_key: TFDAutoIncField;
    FDTable1mark: TStringField;
    FDTable1mark_id: TLongWordField;
    StringGridBindSourceDB1: TStringGrid;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindSourceDB3: TBindSourceDB;
    StringGridBindSourceDB3: TStringGrid;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    ListBoxmodel: TListBox;
    LinkFillControlToFieldmodel: TLinkFillControlToField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
