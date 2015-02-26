object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #24187#34013'URL'#22320#22336#37319#38598#22120
  ClientHeight = 523
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 220
    Top = 482
    Width = 72
    Height = 13
    Caption = #32467#26524#19981#21253#21547#65306
  end
  object Label2: TLabel
    Left = 8
    Top = 449
    Width = 60
    Height = 13
    Caption = #21069#38754#34917#20840#65306
  end
  object Label3: TLabel
    Left = 220
    Top = 449
    Width = 60
    Height = 13
    Caption = #21518#38754#34917#20840#65306
  end
  object Label4: TLabel
    Left = 8
    Top = 415
    Width = 60
    Height = 13
    Caption = #20998#21106#23383#31526#65306
  end
  object Label5: TLabel
    Left = 220
    Top = 416
    Width = 60
    Height = 13
    Caption = #24320#22987#37096#20998#65306
  end
  object Label6: TLabel
    Left = 432
    Top = 416
    Width = 60
    Height = 13
    Caption = #32467#26463#37096#20998#65306
  end
  object Label7: TLabel
    Left = 8
    Top = 482
    Width = 60
    Height = 13
    Caption = #32467#26524#21253#21547#65306
  end
  object memo1: TMemo
    Left = 8
    Top = 8
    Width = 621
    Height = 132
    HideSelection = False
    ScrollBars = ssBoth
    TabOrder = 0
    WantReturns = False
    WordWrap = False
    OnKeyDown = memo1KeyDown
  end
  object button1: TButton
    Left = 432
    Top = 464
    Width = 89
    Height = 35
    Caption = #29983#25104
    TabOrder = 1
    OnClick = button1Click
  end
  object edit1: TEdit
    Left = 291
    Top = 412
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edit2: TEdit
    Left = 508
    Top = 412
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 72
    Top = 412
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object ListBox1: TListBox
    Left = 8
    Top = 146
    Width = 540
    Height = 256
    ItemHeight = 13
    TabOrder = 5
  end
  object Edit4: TEdit
    Left = 72
    Top = 445
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit5: TEdit
    Left = 291
    Top = 445
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit6: TEdit
    Left = 291
    Top = 478
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit7: TEdit
    Left = 72
    Top = 478
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 9
  end
  object Button2: TButton
    Left = 554
    Top = 146
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 554
    Top = 177
    Width = 75
    Height = 25
    Caption = #28165#31354
    TabOrder = 11
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 540
    Top = 464
    Width = 89
    Height = 35
    Caption = #23548#20986
    TabOrder = 12
    OnClick = Button4Click
  end
  object SaveDialog1: TSaveDialog
    Filter = #25991#26412#25991#20214' [ *.txt ]|.txt'
    Left = 576
    Top = 360
  end
end
