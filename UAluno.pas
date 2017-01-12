unit UAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, FireDAC.Phys.OracleDef,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FireDAC.Comp.UI, FireDAC.Phys.Oracle, UData;

type
  TFrmAluno = class(TForm)
    menu: TMainMenu;
    Sair1: TMenuItem;
    Pesquisar1: TMenuItem;
    Cadastrar1: TMenuItem;
    DbgAluno: TDBGrid;
    PnlCadastro: TPanel;
    TxtNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BtnCancelar: TButton;
    Label3: TLabel;
    TxtEndereco: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    MskCEP: TMaskEdit;
    MskRA: TMaskEdit;
    MskTelefone: TMaskEdit;
    MskCelular: TMaskEdit;
    MskNascimento: TMaskEdit;
    BtnGravar: TButton;
    PnlPesquisa: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    TxtPesquisaNome: TEdit;
    BtnCancelarPesquisa: TButton;
    MskPesquisaRA: TMaskEdit;
    BtnPesquisar: TButton;
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Cadastrar1Click(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure Pesquisar1Click(Sender: TObject);
    procedure BtnCancelarPesquisaClick(Sender: TObject);
    procedure ExibePnlCadastro(Exibir: boolean);
    procedure ExibePnlPesquisa(Exibir: boolean);
    procedure ExibeMenu(Exibir: boolean);
    procedure BtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAluno: TFrmAluno;

implementation

{$R *.dfm}

procedure TFrmAluno.BtnCancelarClick(Sender: TObject);
begin

  ExibePnlCadastro(False);

  ExibeMenu(True);

end;

procedure TFrmAluno.BtnCancelarPesquisaClick(Sender: TObject);
begin

  ExibePnlPesquisa(False);

  ExibeMenu(True);

end;

procedure TFrmAluno.BtnGravarClick(Sender: TObject);
begin

//  UData.DataModule1.FDConnection1

end;

procedure TFrmAluno.Cadastrar1Click(Sender: TObject);
begin

  ExibePnlCadastro(True);

  ExibeMenu(False);

end;

procedure TFrmAluno.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action := caFree;
  FrmAluno := Nil;

end;

procedure TFrmAluno.Pesquisar1Click(Sender: TObject);
begin

  ExibePnlPesquisa(True);

  ExibeMenu(False);

end;

procedure TFrmAluno.Sair1Click(Sender: TObject);
begin

  Close;
  FrmAluno := Nil;

end;

procedure TFrmAluno.ExibePnlPesquisa(Exibir: boolean);
begin

  with PnlPesquisa do
  begin
    Enabled := Exibir;
    Visible := Exibir;
    Align := alClient;
  end;

end;

procedure TFrmAluno.ExibePnlCadastro(Exibir: boolean);
begin

  with PnlCadastro do
  begin
    Enabled := Exibir;
    Visible := Exibir;
    Align := alClient;
  end;

end;

procedure TFrmAluno.ExibeMenu(Exibir: boolean);
begin

  with menu do
  begin
    Items[0].Enabled := Exibir;
    Items[1].Enabled := Exibir;
  end;

end;

end.
