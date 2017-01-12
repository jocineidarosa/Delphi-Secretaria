object DataModuleSecretaria: TDataModuleSecretaria
  OldCreateOrder = False
  Height = 429
  Width = 737
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=localhost:1521/xe'
      'User_Name=localdb'
      'Password=userapp'
      'CharacterSet=UTF8'
      'DriverID=Ora')
    Connected = True
    Left = 64
    Top = 24
  end
  object FDQueryAluno: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      
        'SELECT ID, NOME, RA, ENDERECO, CEP, TELEFONE, CELULAR, NASCIMENT' +
        'O, MATRICULA'
      'FROM VW_ALUNO')
    Left = 64
    Top = 80
    object FDQueryAlunoID: TBCDField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
      Precision = 5
      Size = 0
    end
    object FDQueryAlunoNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object FDQueryAlunoRA: TWideStringField
      FieldName = 'RA'
      Origin = 'RA'
      Required = True
      FixedChar = True
      Size = 5
    end
    object FDQueryAlunoENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 200
    end
    object FDQueryAlunoCEP: TWideStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object FDQueryAlunoTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 13
    end
    object FDQueryAlunoCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 14
    end
    object FDQueryAlunoNASCIMENTO: TWideStringField
      FieldName = 'NASCIMENTO'
      Origin = 'NASCIMENTO'
      Size = 10
    end
    object FDQueryAlunoMATRICULA: TWideStringField
      FieldName = 'MATRICULA'
      Origin = 'MATRICULA'
      Size = 19
    end
  end
  object FDStoredProcInsereAluno: TFDStoredProc
    Connection = FDConn
    SchemaName = 'LOCALDB'
    StoredProcName = 'SP_INSERE_ALUNO'
    Left = 64
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = 'P_NOME'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 2
        Name = 'P_RA'
        DataType = ftFixedWideChar
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 3
        Name = 'P_ENDERECO'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 400
      end
      item
        Position = 4
        Name = 'P_CEP'
        DataType = ftFixedWideChar
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 16
      end
      item
        Position = 5
        Name = 'P_TELEFONE'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'P_CELULAR'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'P_NASCIMENTO'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
      end>
  end
  object DtsAluno: TDataSource
    DataSet = FDQueryAluno
    Left = 64
    Top = 304
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    VendorHome = 'XE'
    VendorLib = 'C:\instantclient_12_1\oci.dll'
    Left = 536
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 656
    Top = 8
  end
  object FDStoredProcAtualizaAluno: TFDStoredProc
    Connection = FDConn
    SchemaName = 'LOCALDB'
    StoredProcName = 'SP_ATUALIZA_ALUNO'
    Left = 64
    Top = 192
    ParamData = <
      item
        Position = 1
        Name = 'P_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'P_NOME'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 3
        Name = 'P_RA'
        DataType = ftFixedWideChar
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 4
        Name = 'P_ENDERECO'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 400
      end
      item
        Position = 5
        Name = 'P_CEP'
        DataType = ftFixedWideChar
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 16
      end
      item
        Position = 6
        Name = 'P_TELEFONE'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'P_CELULAR'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'P_NASCIMENTO'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
      end>
  end
  object FDStoredProcExcluiAluno: TFDStoredProc
    Connection = FDConn
    SchemaName = 'LOCALDB'
    StoredProcName = 'SP_EXCLUI_ALUNO'
    Left = 64
    Top = 248
    ParamData = <
      item
        Position = 1
        Name = 'P_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end>
  end
  object FDQueryMateria: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      
        'SELECT CURSO_ID, NOME_CURSO, MATERIA_ID, NOME_MATERIA, DESCRICAO' +
        '_MATERIA '
      'FROM VW_CURSO_MATERIA    ')
    Left = 232
    Top = 80
    object FDQueryMateriaCURSO_ID: TBCDField
      FieldName = 'CURSO_ID'
      Origin = 'CURSO_ID'
      Required = True
      Precision = 5
      Size = 0
    end
    object FDQueryMateriaNOME_CURSO: TWideStringField
      FieldName = 'NOME_CURSO'
      Origin = 'NOME_CURSO'
      Required = True
      Size = 100
    end
    object FDQueryMateriaMATERIA_ID: TBCDField
      FieldName = 'MATERIA_ID'
      Origin = 'MATERIA_ID'
      Required = True
      Precision = 5
      Size = 0
    end
    object FDQueryMateriaNOME_MATERIA: TWideStringField
      FieldName = 'NOME_MATERIA'
      Origin = 'NOME_MATERIA'
      Required = True
      Size = 100
    end
    object FDQueryMateriaDESCRICAO_MATERIA: TWideStringField
      FieldName = 'DESCRICAO_MATERIA'
      Origin = 'DESCRICAO_MATERIA'
      Required = True
      Size = 500
    end
  end
  object FDStoredProcInsereMateria: TFDStoredProc
    Connection = FDConn
    SchemaName = 'LOCALDB'
    StoredProcName = 'SP_INSERE_MATERIA'
    Left = 232
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = 'P_NOME'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 2
        Name = 'P_DESCRICAO'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 1000
      end
      item
        Position = 3
        Name = 'P_CURSO_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end>
  end
  object DtsMateria: TDataSource
    DataSet = FDQueryMateria
    Left = 232
    Top = 304
  end
  object FDStoredProcAtualizaMateria: TFDStoredProc
    Connection = FDConn
    SchemaName = 'LOCALDB'
    StoredProcName = 'SP_ATUALIZA_MATERIA'
    Left = 232
    Top = 192
    ParamData = <
      item
        Position = 1
        Name = 'P_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'P_NOME'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 3
        Name = 'P_DESCRICAO'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 1000
      end
      item
        Position = 4
        Name = 'P_CURSO_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end>
  end
  object FDStoredProcExcluiMateria: TFDStoredProc
    Connection = FDConn
    SchemaName = 'LOCALDB'
    StoredProcName = 'SP_EXCLUI_MATERIA'
    Left = 232
    Top = 248
    ParamData = <
      item
        Position = 1
        Name = 'P_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end>
  end
  object FDQueryCurso: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT ID, NOME, DESCRICAO'
      'FROM CURSO')
    Left = 400
    Top = 80
    object FDQueryCursoID: TBCDField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 5
      Size = 0
    end
    object FDQueryCursoNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object FDQueryCursoDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 500
    end
  end
  object FDStoredProcInsereCurso: TFDStoredProc
    Connection = FDConn
    SchemaName = 'LOCALDB'
    StoredProcName = 'SP_INSERE_CURSO'
    Left = 400
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = 'P_NOME'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 2
        Name = 'P_DESCRICAO'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 1000
      end>
  end
  object DtsCurso: TDataSource
    DataSet = FDQueryCurso
    Left = 400
    Top = 304
  end
  object FDStoredProcAtualizaCurso: TFDStoredProc
    Connection = FDConn
    SchemaName = 'LOCALDB'
    StoredProcName = 'SP_ATUALIZA_CURSO'
    Left = 400
    Top = 192
    ParamData = <
      item
        Position = 1
        Name = 'P_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'P_NOME'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 3
        Name = 'P_DESCRICAO'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 1000
      end>
  end
  object FDStoredProcExcluiCurso: TFDStoredProc
    Connection = FDConn
    SchemaName = 'LOCALDB'
    StoredProcName = 'SP_EXCLUI_CURSO'
    Left = 400
    Top = 248
    ParamData = <
      item
        Position = 1
        Name = 'P_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end>
  end
  object FDQueryGrade: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT CURSO_ID, MATERIA_ID, ALUNO_ID '
      'FROM GRADE')
    Left = 560
    Top = 80
    object FDQueryGradeCURSO_ID: TBCDField
      FieldName = 'CURSO_ID'
      Origin = 'CURSO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 5
      Size = 0
    end
    object FDQueryGradeMATERIA_ID: TBCDField
      FieldName = 'MATERIA_ID'
      Origin = 'MATERIA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 5
      Size = 0
    end
    object FDQueryGradeALUNO_ID: TBCDField
      FieldName = 'ALUNO_ID'
      Origin = 'ALUNO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 5
      Size = 0
    end
  end
  object FDStoredProcInsereGrade: TFDStoredProc
    Connection = FDConn
    SchemaName = 'LOCALDB'
    StoredProcName = 'SP_INSERE_GRADE'
    Left = 560
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = 'P_CURSO_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'P_MATERIA_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'P_ALUNO_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end>
  end
  object DtsGrade: TDataSource
    DataSet = FDQueryGrade
    Left = 560
    Top = 304
  end
  object FDStoredProcAtualizaGrade: TFDStoredProc
    Connection = FDConn
    SchemaName = 'LOCALDB'
    StoredProcName = 'SP_ATUALIZA_GRADE'
    Left = 560
    Top = 192
    ParamData = <
      item
        Position = 1
        Name = 'P_CURSO_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'P_MATERIA_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'P_ALUNO_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end>
  end
  object FDStoredProcExcluiGrade: TFDStoredProc
    Connection = FDConn
    SchemaName = 'LOCALDB'
    StoredProcName = 'SP_EXCLUI_GRADE'
    Left = 560
    Top = 248
    ParamData = <
      item
        Position = 1
        Name = 'P_CURSO_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'P_MATERIA_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'P_ALUNO_ID'
        DataType = ftBCD
        FDDataType = dtBCD
        Precision = 5
        ParamType = ptInput
      end>
  end
end
