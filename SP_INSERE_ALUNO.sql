CREATE OR REPLACE PROCEDURE SP_INSERE_ALUNO
(
P_NOME       IN ALUNO.NOME%TYPE,
P_RA         IN ALUNO.RA%TYPE,
P_ENDERECO   IN ALUNO.ENDERECO%TYPE,
P_CEP        IN ALUNO.CEP%TYPE,
P_TELEFONE   IN VARCHAR2,
P_CELULAR    IN VARCHAR2,
P_NASCIMENTO IN VARCHAR2
)
IS

V_TELEFONE      ALUNO.TELEFONE%TYPE;
V_CELULAR       ALUNO.CELULAR%TYPE;
V_NASCIMENTO    ALUNO.NASCIMENTO%TYPE;
        
NOME_INVALIDO       EXCEPTION;
RA_INVALIDO         EXCEPTION;
ENDERECO_INVALIDO   EXCEPTION;
CEP_INVALIDO        EXCEPTION;
TELEFONE_INVALIDO   EXCEPTION;
CELULAR_INVALIDO    EXCEPTION;
NASCIMENTO_INVALIDO EXCEPTION;

BEGIN

    BEGIN -- Valida��o do par�metro Nome
        
        IF P_NOME IS NULL OR P_NOME = '' OR LENGTH(P_NOME) > 100 THEN 
            RAISE NOME_INVALIDO;
        END IF;
        
    EXCEPTION
    
        WHEN NOME_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20001, 'NOME INV�LIDO!');

    END;

    BEGIN -- Valida��o do par�metro RA
       
        IF P_RA IS NULL OR LENGTH(P_RA) <> 5 THEN
            RAISE RA_INVALIDO;
        END IF;
        
    EXCEPTION    
    
        WHEN RA_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20002, 'CODIGO DO RA INV�LIDO!');
            
        WHEN INVALID_NUMBER THEN
            RAISE_APPLICATION_ERROR(-20003, 'CODIGO DO RA INV�LIDO!');

    END;

    BEGIN -- Valida��o do par�metro Endere�o
        
        IF P_ENDERECO IS NULL OR P_ENDERECO = '' OR LENGTH(P_ENDERECO) > 200 THEN 
            RAISE ENDERECO_INVALIDO;
        END IF;
        
    EXCEPTION
    
        WHEN ENDERECO_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20004, 'ENDERECO INV�LIDO!');

    END;

    BEGIN -- Valida��o do par�metro CEP
       
        IF P_CEP IS NULL OR LENGTH(P_CEP) <> 8 THEN
            RAISE CEP_INVALIDO;
        END IF;

    EXCEPTION    
    
        WHEN CEP_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20005, 'CODIGO DO CEP INV�LIDO!');
            
        WHEN INVALID_NUMBER THEN
            RAISE_APPLICATION_ERROR(-20006, 'CODIGO DO CEP INV�LIDO!');
        
    END;

    BEGIN -- Valida��o do par�metro Telefone
       
        IF P_TELEFONE IS NULL OR LENGTH(P_TELEFONE) <> 10 THEN
            RAISE TELEFONE_INVALIDO;
        END IF;
        
        SELECT TO_NUMBER(P_TELEFONE) INTO V_TELEFONE FROM DUAL;
        
    EXCEPTION    
    
        WHEN TELEFONE_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20007, 'TELEFONE INV�LIDO!');
            
        WHEN INVALID_NUMBER THEN
            RAISE_APPLICATION_ERROR(-20008, 'TELEFONE INV�LIDO!');
        
    END;
    
    BEGIN -- Valida��o do par�metro Celular
       
        IF P_CELULAR IS NULL OR LENGTH(P_CELULAR) <> 11 THEN
            RAISE CELULAR_INVALIDO;
        END IF;
        
        SELECT TO_NUMBER(P_CELULAR) INTO V_CELULAR FROM DUAL;
        
    EXCEPTION    
    
        WHEN CELULAR_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20009, 'CELULAR INV�LIDO!');
            
        WHEN INVALID_NUMBER THEN
            RAISE_APPLICATION_ERROR(-20010, 'CELULAR INV�LIDO!');
        
    END;
    
    BEGIN -- Valida��o do par�metro Nascimento
       
        IF P_NASCIMENTO IS NULL THEN
            RAISE NASCIMENTO_INVALIDO;
        END IF;
        
        SELECT TO_DATE(P_NASCIMENTO, 'yyyy-mm-dd') INTO V_NASCIMENTO FROM DUAL;

    EXCEPTION    
    
        WHEN NASCIMENTO_INVALIDO THEN
            RAISE_APPLICATION_ERROR(-20011, 'DATA DE NASCIMENTO INV�LIDA!');
            
        WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR(-20012, 'DATA DE NASCIMENTO INV�LIDA!');
        
    END;
    
    BEGIN
    
        INSERT INTO ALUNO(ID,
                          NOME, RA, ENDERECO, CEP, 
                          TELEFONE, CELULAR, NASCIMENTO, MATRICULA)
        VALUES(SQ_ALUNO.NEXTVAL, 
               P_NOME, P_RA, P_ENDERECO, P_CEP, 
               V_TELEFONE, V_CELULAR, V_NASCIMENTO, CURRENT_TIMESTAMP);
                       
        COMMIT;        
        
    EXCEPTION
    
        WHEN OTHERS THEN
            BEGIN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20013, 'ERRO INESPERADO - ' || SQLERRM);
            END;
            
    END;

END;