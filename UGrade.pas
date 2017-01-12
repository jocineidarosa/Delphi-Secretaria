unit UGrade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmGrade = class(TForm)
    MainMenu1: TMainMenu;
    Cadastrar1: TMenuItem;
    Pesquisar1: TMenuItem;
    Sair1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGrade: TFrmGrade;

implementation

{$R *.dfm}

procedure TFrmGrade.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action := caFree;
  FrmGrade := Nil;

end;

procedure TFrmGrade.Sair1Click(Sender: TObject);
begin

  Close;
  FrmGrade := Nil;

end;

end.
