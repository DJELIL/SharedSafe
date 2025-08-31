object Form1: TForm1
  Left = 490
  Top = 249
  Caption = 'Form1'
  ClientHeight = 662
  ClientWidth = 1052
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1052
    Height = 49
    Align = alTop
    Color = 16744448
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 72
      Top = 9
      Width = 96
      Height = 25
      Caption = 'Personnels'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object CurvyPanel1: TCurvyPanel
    Left = 240
    Top = 104
    Width = 777
    Height = 129
    Caption = ''
    Color = 16744448
    Rounding = 14
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 25
      Width = 85
      Height = 21
      Caption = 'Solde Total'
      Color = 16744448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
end
