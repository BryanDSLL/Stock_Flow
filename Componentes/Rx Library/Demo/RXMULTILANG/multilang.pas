{*******************************************************}
{                                                       }
{       MultiLang                                       }
{                                                       }
{       Copyright (C) 1998  Serge Sushko                }
{                                                       }
{*******************************************************}

unit MultiLang;
{$I RX.INC }
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  {$IFDEF RX_D16} System.UITypes, {$ENDIF}
  Dialogs, StdCtrls, Buttons, RxTranslate, Menus;

type
  TToolsForm = class(TForm)
    GroupBox4: TGroupBox;
    mml_title: TLabel;
    AboutBtn: TButton;
    FruitsLabel: TLabel;
    LanguageLabel: TLabel;
    mml_desctription: TLabel;
    FruitList: TListBox;
    LanguageCombo: TComboBox;
    MessageBtn: TButton;
    tl: TRxTranslator;
    MainMenu1: TMainMenu;
    FileMenuItem: TMenuItem;
    HempMenuItem: TMenuItem;
    AboutMenuItem: TMenuItem;
    ExitMenuItem: TMenuItem;
    procedure LanguageComboChange(Sender: TObject);
    procedure MessageBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExitMenuItemClick(Sender: TObject);
    procedure AboutBtnClick(Sender: TObject);
  private
    { Private declarations }
    function GetLangFileName(const sLangName: String): String;
  public
    { Public declarations }
  end;

var
  ToolsForm: TToolsForm;

implementation

{$R *.dfm}

procedure TToolsForm.AboutBtnClick(Sender: TObject);
begin
  MessageDlg('TLanguage component'#13#10'(c) 1998 Serge Sushko' , mtInformation, [mbOK], 0);
end;

procedure TToolsForm.ExitMenuItemClick(Sender: TObject);
begin
  Close
end;

procedure TToolsForm.FormCreate(Sender: TObject);
begin
  LanguageCombo.ItemIndex := 0;
  LanguageComboChange(Sender);
end;

function TToolsForm.GetLangFileName(const sLangName : String) : String;
var
  sDir : String;
begin
  sDir := ExtractFilePath(Application.ExeName);
  if (sDir[Length(sDir)] <> '\') then sDir := sDir + '\';
  Result := sDir + sLangName + '.lng';
end;

procedure TToolsForm.LanguageComboChange(Sender: TObject);
begin
  tl.LanguageFileName := GetLangFileName(LanguageCombo.Text);
  tl.Translate;
end;

procedure TToolsForm.MessageBtnClick(Sender: TObject);
var
  sMessage : String;
begin
  if (FruitList.ItemIndex > -1) then
    sMessage := tl.TMsg('Selected fruit is') + ' ' +
                FruitList.Items[FruitList.ItemIndex]
  else
    sMessage := tl.TMsg('No one fruit is selected');

  MessageDlg(sMessage, mtInformation, [mbOK], 0);
end;

end.
