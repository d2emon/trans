unit unMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask;

type
  TfmMain = class(TForm)
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBText1: TDBText;
    Button1: TButton;
    DBGrid4: TDBGrid;
    DBNavigator3: TDBNavigator;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

uses unData;

{$R *.dfm}

procedure TfmMain.DBGrid1DblClick(Sender: TObject);
begin
  dmData.tbLocations.FindKey([dmData.tbLinksConnectId.Value]);
end;

procedure TfmMain.DBGrid3DblClick(Sender: TObject);
begin
  dmData.tbLocations.FindKey([dmData.tbTransportLinksLocationId.Value]);
end;

procedure TfmMain.Button1Click(Sender: TObject);
begin
  dmData.tbTransportLinks.Append;
  dmData.tbTransportLinksLocationId.Value := dmData.tbLocationsId.Value;
end;

procedure TfmMain.DBGrid2DblClick(Sender: TObject);
begin
  dmData.tbTransport.FindKey([dmData.tbTransportHereTransportId.Value]);
end;

end.
