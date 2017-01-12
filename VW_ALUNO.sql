CREATE OR REPLACE VIEW VW_ALUNO
AS
SELECT  ID, 
        NOME, 
        RA, 
        ENDERECO, 
        SUBSTR(CEP, 1, 5) || '-' || SUBSTR(CEP, 6, 3) AS CEP,
        '(' || SUBSTR(TELEFONE, 1, 2) || ')' || SUBSTR(TELEFONE, 3, 4) || '-' || SUBSTR(TELEFONE, 7, 4) AS TELEFONE,
        '(' || SUBSTR(CELULAR, 1, 2) || ')' || SUBSTR(CELULAR, 3, 5) || '-' || SUBSTR(CELULAR, 8, 4) AS CELULAR,
        TO_CHAR(NASCIMENTO, 'DD/MM/YYYY') AS NASCIMENTO, 
        TO_CHAR(MATRICULA, 'DD/MM/YYYY HH:MM:SS') AS MATRICULA
FROM ALUNO;