object frmSample: TfrmSample
  Left = 0
  Top = 0
  Caption = 'QC15408'
  ClientHeight = 146
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  TextHeight = 15
  object Button1: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Hint = 'Hint is enabled when button is disabled.'
    Caption = 'Button'
    Enabled = False
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 128
    Top = 25
    Width = 121
    Height = 23
    Hint = 'Hint enabled'
    Enabled = False
    TabOrder = 1
    Text = 'Edit1'
  end
  object Button2: TButton
    Left = 24
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Hello World'
    TabOrder = 2
    OnClick = Button2Click
  end
end
