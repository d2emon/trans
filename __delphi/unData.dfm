object dmData: TdmData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 192
  Top = 114
  Height = 286
  Width = 367
  object tbLocations: TTable
    DatabaseName = 'Trans'
    SessionName = 'Trans'
    TableName = 'locations.db'
    Left = 16
    Top = 56
    object tbLocationsId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbLocationsLocationName: TStringField
      FieldName = 'LocationName'
      Size = 128
    end
    object tbLocationsDescription: TStringField
      FieldName = 'Description'
      Size = 128
    end
  end
  object dsLocations: TDataSource
    DataSet = tbLocations
    Left = 80
    Top = 56
  end
  object tbLinks: TTable
    DatabaseName = 'Trans'
    SessionName = 'Trans'
    IndexName = 'Location'
    MasterFields = 'Id'
    MasterSource = dsLocations
    TableName = 'links.db'
    Left = 16
    Top = 104
    object tbLinksId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbLinksLocationId: TIntegerField
      FieldName = 'LocationId'
    end
    object tbLinksConnectId: TIntegerField
      FieldName = 'ConnectId'
    end
    object tbLinksConnectName: TStringField
      FieldKind = fkLookup
      FieldName = 'ConnectName'
      LookupDataSet = tbLocationsLookup
      LookupKeyFields = 'Id'
      LookupResultField = 'LocationName'
      KeyFields = 'ConnectId'
      Size = 255
      Lookup = True
    end
  end
  object dsLinks: TDataSource
    DataSet = tbLinks
    Left = 80
    Top = 104
  end
  object dbData: TDatabase
    Connected = True
    DatabaseName = 'Trans'
    DriverName = 'STANDARD'
    Params.Strings = (
      'PATH=DB'
      'DEFAULT DRIVER=PARADOX')
    SessionName = 'Trans'
    Left = 80
    Top = 8
  end
  object ssTrans: TSession
    Active = True
    SessionName = 'Trans'
    Left = 16
    Top = 8
  end
  object tbLocationsLookup: TTable
    DatabaseName = 'Trans'
    SessionName = 'Trans'
    IndexFieldNames = 'LocationName'
    TableName = 'locations.db'
    Left = 152
    object tbLocationsLookupId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbLocationsLookupLocationName: TStringField
      FieldName = 'LocationName'
      Size = 128
    end
    object tbLocationsLookupDescription: TStringField
      FieldName = 'Description'
      Size = 128
    end
  end
  object tbTransport: TTable
    DatabaseName = 'Trans'
    SessionName = 'Trans'
    IndexFieldNames = 'Weight'
    TableName = 'transport.db'
    Left = 152
    Top = 56
    object tbTransportId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbTransportTransCode: TStringField
      FieldName = 'TransCode'
      Size = 5
    end
    object tbTransportWeight: TIntegerField
      FieldName = 'Weight'
    end
  end
  object dsTransport: TDataSource
    DataSet = tbTransport
    Left = 224
    Top = 56
  end
  object tbTransportLinks: TTable
    DatabaseName = 'Trans'
    SessionName = 'Trans'
    IndexName = 'Transport'
    MasterFields = 'Id'
    MasterSource = dsTransport
    TableName = 'transportlinks.db'
    Left = 152
    Top = 104
    object tbTransportLinksId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbTransportLinksTransportId: TIntegerField
      FieldName = 'TransportId'
    end
    object tbTransportLinksLocationId: TIntegerField
      FieldName = 'LocationId'
    end
    object tbTransportLinksLocationName: TStringField
      FieldKind = fkLookup
      FieldName = 'LocationName'
      LookupDataSet = tbLocationsLookup
      LookupKeyFields = 'Id'
      LookupResultField = 'LocationName'
      KeyFields = 'LocationId'
      Size = 128
      Lookup = True
    end
  end
  object dsTransportLinks: TDataSource
    DataSet = tbTransportLinks
    Left = 224
    Top = 104
  end
  object tbTransportHere: TTable
    DatabaseName = 'Trans'
    SessionName = 'Trans'
    IndexName = 'Location'
    MasterFields = 'Id'
    MasterSource = dsLocations
    TableName = 'transportlinks.DB'
    Left = 16
    Top = 160
    object tbTransportHereId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbTransportHereTransportId: TIntegerField
      FieldName = 'TransportId'
      Required = True
    end
    object tbTransportHereLocationId: TIntegerField
      FieldName = 'LocationId'
      Required = True
    end
    object tbTransportHereTransCode: TStringField
      FieldKind = fkLookup
      FieldName = 'TransCode'
      LookupDataSet = tbTransportLookup
      LookupKeyFields = 'Id'
      LookupResultField = 'TransCode'
      KeyFields = 'TransportId'
      Size = 32
      Lookup = True
    end
    object tbTransportHereWeight: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Weight'
      LookupDataSet = tbTransportLookup
      LookupKeyFields = 'Id'
      LookupResultField = 'Weight'
      KeyFields = 'TransportId'
      Lookup = True
    end
  end
  object tbTransportLookup: TTable
    DatabaseName = 'Trans'
    SessionName = 'Trans'
    IndexFieldNames = 'Weight'
    TableName = 'transport.db'
    Left = 224
    object tbTransportLookupId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbTransportLookupTransCode: TStringField
      FieldName = 'TransCode'
      Size = 5
    end
    object tbTransportLookupWeight: TIntegerField
      FieldName = 'Weight'
    end
  end
  object dsTransportHere: TDataSource
    DataSet = tbTransportHere
    Left = 80
    Top = 160
  end
end
