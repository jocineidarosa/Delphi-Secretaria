unit UData;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.Oracle,
  FireDAC.Phys.OracleDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TDataModuleSecretaria = class(TDataModule)
    FDConn: TFDConnection;
    FDQueryAluno: TFDQuery;
    FDStoredProcInsereAluno: TFDStoredProc;
    DtsAluno: TDataSource;
    FDPhysOracleDriverLink1: TFDPhysOracleDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDStoredProcAtualizaAluno: TFDStoredProc;
    FDStoredProcExcluiAluno: TFDStoredProc;
    FDQueryMateria: TFDQuery;
    FDStoredProcInsereMateria: TFDStoredProc;
    DtsMateria: TDataSource;
    FDStoredProcAtualizaMateria: TFDStoredProc;
    FDStoredProcExcluiMateria: TFDStoredProc;
    FDQueryAlunoID: TBCDField;
    FDQueryAlunoNOME: TWideStringField;
    FDQueryAlunoRA: TWideStringField;
    FDQueryAlunoENDERECO: TWideStringField;
    FDQueryAlunoCEP: TWideStringField;
    FDQueryAlunoTELEFONE: TWideStringField;
    FDQueryAlunoCELULAR: TWideStringField;
    FDQueryAlunoNASCIMENTO: TWideStringField;
    FDQueryAlunoMATRICULA: TWideStringField;
    FDQueryCurso: TFDQuery;
    FDStoredProcInsereCurso: TFDStoredProc;
    DtsCurso: TDataSource;
    FDStoredProcAtualizaCurso: TFDStoredProc;
    FDStoredProcExcluiCurso: TFDStoredProc;
    FDQueryCursoID: TBCDField;
    FDQueryCursoNOME: TWideStringField;
    FDQueryCursoDESCRICAO: TWideStringField;
    FDQueryGrade: TFDQuery;
    FDStoredProcInsereGrade: TFDStoredProc;
    DtsGrade: TDataSource;
    FDStoredProcAtualizaGrade: TFDStoredProc;
    FDStoredProcExcluiGrade: TFDStoredProc;
    FDQueryGradeCURSO_ID: TBCDField;
    FDQueryGradeMATERIA_ID: TBCDField;
    FDQueryGradeALUNO_ID: TBCDField;
    FDQueryMateriaCURSO_ID: TBCDField;
    FDQueryMateriaNOME_CURSO: TWideStringField;
    FDQueryMateriaMATERIA_ID: TBCDField;
    FDQueryMateriaNOME_MATERIA: TWideStringField;
    FDQueryMateriaDESCRICAO_MATERIA: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleSecretaria: TDataModuleSecretaria;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
