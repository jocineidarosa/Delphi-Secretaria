CREATE OR REPLACE PROCEDURE SP_ATUALIZA_MATERIA
(
P_ID        IN MATERIA.ID%TYPE,
P_NOME      IN MATERIA.NOME%TYPE,
P_DESCRICAO IN MATERIA.DESCRICAO%TYPE
)
IS

ID_INVALIDO         EXCEPTION;        
NOME_INVALIDO       EXCEPTION;
DESCRICAO_INVALIDA  EXCEPTION;

BEGIN

    BEGIN -- Valida��o do par�metro ID
       
        IF P_ID IS NULL THEN
            RAISE ID_INVALIDO;
        END IF;

    EXCEPTION    
    
        WHEN ID_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20001, 'CODIGO ID INV�LIDO! - ' || SQLERRM);
    END;

    BEGIN -- Valida��o do par�metro Nome
        
        IF P_NOME IS NULL OR P_NOME = '' OR LENGTH(P_NOME) > 100 THEN 
            RAISE NOME_INVALIDO;
        END IF;
        
    EXCEPTION
    
        WHEN NOME_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20002, 'NOME INV�LIDO! - ' || SQLERRM);

    END;

    BEGIN -- Valida��o do par�metro Descri��o
        
        IF P_DESCRICAO IS NULL OR P_DESCRICAO = '' OR LENGTH(P_DESCRICAO) > 500 THEN 
            RAISE DESCRICAO_INVALIDA;
        END IF;
        
    EXCEPTION
    
        WHEN DESCRICAO_INVALIDA THEN
            RAISE_APPLICATION_ERROR(-20003, 'DESCRI��O INV�LIDA! - ' || SQLERRM);

    END;
    

    UPDATE MATERIA
    SET NOME = P_NOME, DESCRICAO = P_DESCRICAO
    WHERE ID = P_ID;
    
    
    COMMIT;
    

EXCEPTION

    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20004, 'ERRO INESPERADO - ' || SQLERRM);

END;