CREATE OR REPLACE PROCEDURE SP_ATUALIZA_GRADE
(
P_CURSO_ID      IN GRADE.CURSO_ID%TYPE,
P_MATERIA_ID    IN GRADE.MATERIA_ID%TYPE,
P_ALUNO_ID      IN GRADE.ALUNO_ID%TYPE
)
IS

V_COUNT     NUMBER(5);

CURSO_ID_INVALIDO   EXCEPTION;
MATERIA_ID_INVALIDO EXCEPTION;
ALUNO_ID_INVALIDO   EXCEPTION;
PK_GRADE_INVALIDA   EXCEPTION;

BEGIN

    BEGIN -- Valida��o do par�metro ID do Curso

        IF P_CURSO_ID IS NULL THEN
            RAISE CURSO_ID_INVALIDO;
        END IF;
        
        SELECT COUNT(*) INTO V_COUNT
        FROM CURSO
        WHERE ID = P_CURSO_ID;

    EXCEPTION    

        WHEN CURSO_ID_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20001, 'CODIGO ID DO CURSO INV�LIDO!');
            
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20002, 'CODIGO ID DO CURSO INV�LIDO!');
        
    END;
    
    BEGIN -- Valida��o do par�metro ID da Materia

        IF P_MATERIA_ID IS NULL THEN
            RAISE MATERIA_ID_INVALIDO;
        END IF;
        
        SELECT COUNT(*) INTO V_COUNT
        FROM MATERIA
        WHERE ID = P_MATERIA_ID;

    EXCEPTION    

        WHEN MATERIA_ID_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20003, 'CODIGO ID DA MATERIA INV�LIDO!');
            
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20004, 'CODIGO ID DA MATERIA INV�LIDO!');
        
    END;
    
    BEGIN -- Valida��o do par�metro ID de Aluno

        IF P_ALUNO_ID IS NULL THEN
            RAISE ALUNO_ID_INVALIDO;
        END IF;
        
        SELECT COUNT(*) INTO V_COUNT
        FROM ALUNO
        WHERE ID = P_ALUNO_ID;

    EXCEPTION    

        WHEN ALUNO_ID_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20005, 'CODIGO ID DE ALUNO INV�LIDO!');
            
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20006, 'CODIGO ID DE ALUNO INV�LIDO!');
        
    END;
    
    BEGIN -- Valida��o dos par�metros ID de Curso, Materia e Aluno

        SELECT COUNT(*) INTO V_COUNT
        FROM GRADE
        WHERE CURSO_ID = P_CURSO_ID
          AND MATERIA_ID = P_MATERIA_ID
          AND ALUNO_ID = P_ALUNO_ID;
          
        IF V_COUNT > 0 THEN
            RAISE PK_GRADE_INVALIDA;
        END IF;

    EXCEPTION    

        WHEN PK_GRADE_INVALIDA THEN
            RAISE_APPLICATION_ERROR(-20007, 'CURSO, MATERIA E ALUNO J� CADASTRATO NA GRADE!');
        
    END;

    BEGIN
    
        UPDATE GRADE
        SET CURSO_ID = P_CURSO_ID, MATERIA_ID = P_MATERIA_ID, ALUNO_ID = P_ALUNO_ID
        WHERE CURSO_ID = P_CURSO_ID
        AND MATERIA_ID = P_MATERIA_ID
        AND ALUNO_ID = P_ALUNO_ID;
        
        COMMIT;
    
    EXCEPTION
    
        WHEN OTHERS THEN
            BEGIN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20008, 'ERRO INESPERADO - ' || SQLERRM);
            END;
    
    END;

END;