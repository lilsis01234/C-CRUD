object Form1: TForm1
  Left = 197
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 96
    Top = 8
    Width = 57
    Height = 29
    Caption = 'Nom'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 312
    Top = 8
    Width = 92
    Height = 25
    Caption = 'Pr'#233'noms'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 568
    Top = 8
    Width = 87
    Height = 29
    Caption = 'Voiture'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 96
    Top = 72
    Width = 458
    Height = 32
    Caption = 'Liste des voitures et leurs propri'#233'taires'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 168
    Top = 16
    Width = 113
    Height = 21
    DataField = 'Nom'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 424
    Top = 16
    Width = 113
    Height = 21
    DataField = 'Prenoms'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 88
    Top = 120
    Width = 697
    Height = 233
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nom'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prenoms'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Voiture'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 88
    Top = 352
    Width = 690
    Height = 41
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBComboBox1: TDBComboBox
    Left = 664
    Top = 16
    Width = 113
    Height = 21
    DataField = 'Voiture'
    DataSource = DataSource1
    ItemHeight = 13
    TabOrder = 4
    OnChange = DBComboBox1Change
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=exame' +
      'n.mdb;Mode=ReadWrite;Persist Security Info=False;Jet OLEDB:Syste' +
      'm database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Pass' +
      'word="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=' +
      '1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Tran' +
      'sactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create S' +
      'ystem Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:' +
      'Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without Rep' +
      'lica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 848
    Top = 416
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'voiture'
    Left = 816
    Top = 416
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 784
    Top = 416
  end
end
