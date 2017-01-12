unit UMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, UAluno, UMateria, UCurso, UGrade, USobre,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFrmMenu = class(TForm)
    menu: TMainMenu;
    Cadastro1: TMenuItem;
    Aluno1: TMenuItem;
    Materia1: TMenuItem;
    Cursos1: TMenuItem;
    Sair1: TMenuItem;
    StatusBar1: TStatusBar;
    N1: TMenuItem;
    Grade1: TMenuItem;
    Sobre1: TMenuItem;
    procedure Aluno1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Materia1Click(Sender: TObject);
    procedure Cursos1Click(Sender: TObject);
    procedure Grade1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sobre1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

procedure TFrmMenu.Aluno1Click(Sender: TObject);
begin

  If not Assigned(FrmAluno) Then
    FrmAluno := TFrmAluno.Create(Application);

  FrmAluno.ShowModal;

end;

procedure TFrmMenu.Cursos1Click(Sender: TObject);
begin

  If not Assigned(FrmCurso) Then
    FrmCurso := TFrmCurso.Create(Application);

  FrmCurso.ShowModal;

end;

procedure TFrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FrmMenu := Nil;
  Application.Terminate;

end;

procedure TFrmMenu.Grade1Click(Sender: TObject);
begin

  If not Assigned(FrmGrade) Then
    FrmGrade := TFrmGrade.Create(Application);

  FrmGrade.ShowModal;

end;

procedure TFrmMenu.Materia1Click(Sender: TObject);
begin

  If not Assigned(FrmMateria) Then
    FrmMateria := TFrmMateria.Create(Application);

  FrmMateria.ShowModal;

end;

procedure TFrmMenu.Sair1Click(Sender: TObject);
begin

  FrmMenu := Nil;
  Application.Terminate;

end;

procedure TFrmMenu.Sobre1Click(Sender: TObject);
begin

  If not Assigned(FrmSobre) Then
    FrmSobre := TFrmSobre.Create(Application);

  FrmSobre.ShowModal;

end;

end.
