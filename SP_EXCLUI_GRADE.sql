CREATE OR REPLACE PROCEDURE SP_EXCLUI_GRADE
(
P_CURSO_ID      IN GRADE.CURSO_ID%TYPE,
P_MATERIA_ID    IN GRADE.MATERIA_ID%TYPE,
P_ALUNO_ID      IN GRADE.ALUNO_ID%TYPE
)
IS

CURSO_ID_INVALIDO   EXCEPTION;
MATERIA_ID_INVALIDO EXCEPTION;
ALUNO_ID_INVALIDO   EXCEPTION;

BEGIN

    BEGIN -- Valida��o do par�metro ID
       
        IF P_CURSO_ID IS NULL THEN
            RAISE CURSO_ID_INVALIDO;
        END IF;
       
        IF P_MATERIA_ID IS NULL THEN
            RAISE MATERIA_ID_INVALIDO;
        END IF;
       
        IF P_ALUNO_ID IS NULL THEN
            RAISE ALUNO_ID_INVALIDO;
        END IF;

    EXCEPTION    
    
        WHEN CURSO_ID_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20001, 'CODIGO ID DO CURSO INV�LIDO!');
    
        WHEN MATERIA_ID_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20002, 'CODIGO ID DE MATERIA INV�LIDO!');
    
        WHEN ALUNO_ID_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20003, 'CODIGO ID DE ALUNO INV�LIDO!');
            
    END;

    BEGIN
    
        DELETE FROM GRADE
        WHERE CURSO_ID = P_CURSO_ID
        AND MATERIA_ID = P_MATERIA_ID
        AND ALUNO_ID = P_ALUNO_ID;
        
        COMMIT;
    
    EXCEPTION
    
        WHEN OTHERS THEN
            BEGIN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20004, 'ERRO INESPERADO - ' || SQLERRM);
            END;
    
    END;

END;