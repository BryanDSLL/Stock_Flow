object ToolsForm: TToolsForm
  Left = 0
  Top = 0
  Caption = 'MML'
  ClientHeight = 201
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox4: TGroupBox
    Left = 0
    Top = 0
    Width = 551
    Height = 201
    Align = alClient
    Caption = ' Multi-language '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object mml_title: TLabel
      Left = 16
      Top = 20
      Width = 529
      Height = 33
      AutoSize = False
      Caption = 
        'TRxTranslator component translates string properties such as lab' +
        'el captions and list box items and allows to support multiple la' +
        'nguages within your application.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      WordWrap = True
    end
    object FruitsLabel: TLabel
      Left = 16
      Top = 72
      Width = 29
      Height = 14
      Caption = '&Fruits'
      FocusControl = FruitList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LanguageLabel: TLabel
      Left = 148
      Top = 72
      Width = 91
      Height = 14
      Caption = '&Select language:'
      FocusControl = LanguageCombo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object mml_desctription: TLabel
      Left = 304
      Top = 76
      Width = 221
      Height = 117
      AutoSize = False
      Caption = 
        'This part of demo is based TLanguage '#13#10'demo application written ' +
        'by Serge Sushko'#13#10'TLanguage component and included .lng files '#13#10'a' +
        're copyright (c) bySerge Sushko, 1998'#13#10#13#10'E-mail: sushko@iname.co' +
        'm,'#13#10'WWW: http://members.tripod.com/~sushko/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object AboutBtn: TButton
      Tag = 13
      Left = 148
      Top = 161
      Width = 145
      Height = 25
      Caption = '&About TLanguage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = AboutBtnClick
    end
    object FruitList: TListBox
      Left = 16
      Top = 88
      Width = 121
      Height = 81
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 14
      Items.Strings = (
        'Apple'
        'Strawberry'
        'Cherry')
      ParentFont = False
      TabOrder = 0
    end
    object LanguageCombo: TComboBox
      Left = 148
      Top = 88
      Width = 145
      Height = 22
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 1
      OnChange = LanguageComboChange
      Items.Strings = (
        'Czech'
        'English'
        'Espanol'
        'Romana'
        'Russian'
        'Deutsch')
    end
    object MessageBtn: TButton
      Left = 164
      Top = 124
      Width = 105
      Height = 25
      Caption = 'Selected fruit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = MessageBtnClick
    end
  end
  object tl: TRxTranslator
    Left = 424
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 48
    object FileMenuItem: TMenuItem
      Caption = 'File'
    end
    object HempMenuItem: TMenuItem
      Caption = 'Help'
    end
    object AboutMenuItem: TMenuItem
      Caption = 'About'
    end
    object ExitMenuItem: TMenuItem
      Caption = 'Exit'
      OnClick = ExitMenuItemClick
    end
  end
end
