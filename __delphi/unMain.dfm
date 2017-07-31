object fmMain: TfmMain
  Left = 192
  Top = 114
  Width = 578
  Height = 559
  Caption = 'fmMain'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    570
    525)
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 0
    Top = 0
    Width = 337
    Height = 17
    DataField = 'Id'
    DataSource = dmData.dsLocations
  end
  object DBEdit1: TDBEdit
    Left = 0
    Top = 24
    Width = 315
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'LocationName'
    DataSource = dmData.dsLocations
    TabOrder = 0
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 48
    Width = 315
    Height = 241
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Description'
    DataSource = dmData.dsLocations
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 292
    Width = 315
    Height = 200
    Anchors = [akLeft, akRight, akBottom]
    DataSource = dmData.dsLinks
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ConnectName'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 76
    Top = 496
    Width = 240
    Height = 25
    DataSource = dmData.dsLocations
    Anchors = [akRight, akBottom]
    TabOrder = 3
  end
  object DBGrid2: TDBGrid
    Left = 322
    Top = 0
    Width = 109
    Height = 120
    Anchors = [akTop, akRight]
    DataSource = dmData.dsTransportHere
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid2DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'TransCode'
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 322
    Top = 120
    Width = 241
    Height = 305
    Anchors = [akTop, akRight, akBottom]
    DataSource = dmData.dsTransportLinks
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid3DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'LocationName'
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 322
    Top = 496
    Width = 240
    Height = 25
    DataSource = dmData.dsTransport
    Anchors = [akRight, akBottom]
    TabOrder = 6
  end
  object Button1: TButton
    Left = 491
    Top = 464
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Button1'
    TabOrder = 7
    OnClick = Button1Click
  end
  object DBGrid4: TDBGrid
    Left = 438
    Top = 0
    Width = 121
    Height = 120
    Anchors = [akTop, akRight]
    DataSource = dmData.dsTransport
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TransCode'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Weight'
        Visible = True
      end>
  end
  object DBNavigator3: TDBNavigator
    Left = 326
    Top = 432
    Width = 240
    Height = 25
    DataSource = dmData.dsTransportLinks
    Anchors = [akRight, akBottom]
    TabOrder = 9
  end
end
