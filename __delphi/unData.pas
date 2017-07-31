unit unData;

interface

uses
  SysUtils, Classes, DB, DBTables, Dialogs;

type
  TdmData = class(TDataModule)
    tbLocations: TTable;
    dsLocations: TDataSource;
    tbLinks: TTable;
    dsLinks: TDataSource;
    dbData: TDatabase;
    ssTrans: TSession;
    tbLocationsId: TAutoIncField;
    tbLocationsLocationName: TStringField;
    tbLocationsDescription: TStringField;
    tbLinksId: TAutoIncField;
    tbLinksLocationId: TIntegerField;
    tbLinksConnectId: TIntegerField;
    tbLocationsLookup: TTable;
    tbLocationsLookupId: TAutoIncField;
    tbLocationsLookupLocationName: TStringField;
    tbLocationsLookupDescription: TStringField;
    tbLinksConnectName: TStringField;
    tbTransport: TTable;
    dsTransport: TDataSource;
    tbTransportLinks: TTable;
    dsTransportLinks: TDataSource;
    tbTransportId: TAutoIncField;
    tbTransportTransCode: TStringField;
    tbTransportLinksId: TAutoIncField;
    tbTransportLinksTransportId: TIntegerField;
    tbTransportLinksLocationId: TIntegerField;
    tbTransportLinksLocationName: TStringField;
    tbTransportHere: TTable;
    tbTransportHereId: TAutoIncField;
    tbTransportHereTransportId: TIntegerField;
    tbTransportHereLocationId: TIntegerField;
    tbTransportLookup: TTable;
    tbTransportLookupId: TAutoIncField;
    tbTransportLookupTransCode: TStringField;
    tbTransportHereTransCode: TStringField;
    dsTransportHere: TDataSource;
    tbTransportWeight: TIntegerField;
    tbTransportHereWeight: TIntegerField;
    tbTransportLookupWeight: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmData: TdmData;

implementation

{$R *.dfm}

procedure TdmData.DataModuleCreate(Sender: TObject);
var
  i: Integer;
begin
  ssTrans.Open;
  dbData.Open;
  tbLocations.Open;
  tbLocationsLookup.Open;
  tbLinks.Open;
  tbTransport.Open;
  tbTransportLookup.Open;
  tbTransportLinks.Open;
  tbTransportHere.Open;
end;

procedure TdmData.DataModuleDestroy(Sender: TObject);
begin
  {
  tbLinks.Close;
  tbLocationsLookup.Close;
  tbLocations.Close;
  dbData.Close;
  }
  ssTrans.Close;
end;

end.
