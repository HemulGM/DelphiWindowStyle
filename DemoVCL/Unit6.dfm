object Form6: TForm6
  Left = 0
  Top = 0
  AlphaBlend = True
  Caption = 'Form6'
  ClientHeight = 441
  ClientWidth = 624
  Color = 4079166
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  GlassFrame.Enabled = True
  GlassFrame.SheetOfGlass = True
  OnCreate = FormCreate
  TextHeight = 15
  object ButtonAuto: TButton
    Left = 112
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Auto'
    TabOrder = 0
    OnClick = ButtonAutoClick
  end
  object ButtonDisable: TButton
    Left = 193
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Disable'
    TabOrder = 1
    OnClick = ButtonDisableClick
  end
  object ButtonMica: TButton
    Left = 274
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Mica'
    TabOrder = 2
    OnClick = ButtonMicaClick
  end
  object ButtonAcrylic: TButton
    Left = 355
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Acrylic'
    TabOrder = 3
    OnClick = ButtonAcrylicClick
  end
  object ButtonTabbed: TButton
    Left = 436
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Tabbed'
    TabOrder = 4
    OnClick = ButtonTabbedClick
  end
  object CheckBoxDarkMode: TCheckBox
    Left = 112
    Top = 215
    Width = 97
    Height = 17
    Caption = 'DarkMode'
    TabOrder = 5
    OnClick = CheckBoxDarkModeClick
  end
end
