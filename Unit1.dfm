object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 560
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object StringGridBindSourceDB1: TStringGrid
    Tag = 2
    Left = 320
    Top = 240
    Width = 320
    Height = 120
    ColCount = 2
    FixedCols = 0
    RowCount = 10
    TabOrder = 1
    ColWidths = (
      64
      64)
  end
  object StringGridBindSourceDB3: TStringGrid
    Tag = 3
    Left = 440
    Top = 408
    Width = 320
    Height = 120
    ColCount = 3
    FixedCols = 0
    RowCount = 4
    TabOrder = 2
    ColWidths = (
      64
      64
      64)
  end
  object ListBoxmodel: TListBox
    Left = 416
    Top = 248
    Width = 121
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    TabOrder = 3
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=bamper38.net'
      'User_Name=root'
      'Password=masterkey'
      'Server=localhost'
      'Port=3360'
      'DriverID=MySQL')
    Connected = True
    Left = 256
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 432
    Top = 48
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'mark_key'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = '`bamper38.net`.marks'
    TableName = '`bamper38.net`.marks'
    Left = 496
    Top = 168
    object FDTable1mark_key: TFDAutoIncField
      FieldName = 'mark_key'
      Origin = 'mark_key'
    end
    object FDTable1mark: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mark'
      Origin = 'mark'
      Size = 255
    end
    object FDTable1mark_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'mark_id'
      Origin = 'mark_id'
    end
  end
  object BindSourceDB12: TBindSourceDB
    DataSet = FDTable1
    ScopeMappings = <>
    Left = 376
    Top = 152
  end
  object FDManager1: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 520
    Top = 80
  end
  object FDCommand1: TFDCommand
    Connection = FDConnection1
    CommandText.Strings = (
      'select * from marks')
    Active = True
    Left = 496
    Top = 248
  end
  object FDTable2: TFDTable
    Active = True
    IndexName = 'PRIMARY'
    MasterSource = DataSource1
    Connection = FDConnection2
    UpdateOptions.UpdateTableName = '`bamper38.net`.model'
    TableName = '`bamper38.net`.model'
    Left = 736
    Top = 56
    object FDTable2model_key: TFDAutoIncField
      FieldName = 'model_key'
      Origin = 'model_key'
    end
    object FDTable2model: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'model'
      Origin = 'model'
      Size = 255
    end
    object FDTable2model_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'model_id'
      Origin = 'model_id'
    end
    object FDTable2parent_id: TIntegerField
      FieldName = 'parent_id'
      Origin = 'parent_id'
      Required = True
    end
  end
  object FDConnection2: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'User_Name=root'
      'Password=masterkey'
      'Port=3360'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 840
    Top = 24
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = FDTable2
    ScopeMappings = <>
    Left = 480
    Top = 360
  end
  object DataSource2: TDataSource
    DataSet = FDTable2
    Left = 848
    Top = 136
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGridBindSourceDB1
      Columns = <
        item
          MemberName = 'model'
        end
        item
          MemberName = 'parent_id'
        end>
    end
    object LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      GridControl = StringGridBindSourceDB3
      Columns = <>
    end
    object LinkFillControlToFieldmodel: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'model'
      Control = ListBoxmodel
      Track = True
      FillDataSource = BindSourceDB1
      FillValueFieldName = 'parent_id'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSource = DataSource2
    ScopeMappings = <>
    Left = 464
    Top = 288
  end
  object BindSourceDB3: TBindSourceDB
    DataSource = DataSource1
    ScopeMappings = <>
    Left = 472
    Top = 296
  end
end
