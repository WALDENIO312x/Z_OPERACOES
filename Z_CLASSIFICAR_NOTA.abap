REPORT Z_CLASSIFICAR_NOTA.

PARAMETERS: p_nota TYPE i.

DATA: v_classificacao TYPE string.

IF p_nota BETWEEN 0 AND 4.
    v_classificacao = 'Insuficiente'.
ELSEIF p_nota BETWEEN 5 AND 6.
    v_classificacao = 'Regular'.
ELSEIF p_nota BETWEEN 7 AND 8.
    v_classificacao = 'Bom'.
ELSEIF p_nota BETWEEN 9 AND 10.
    v_classificacao = 'Excelente'.
ELSE.
    v_classificacao = 'Nota inválida'.
ENDIF.

WRITE: 'Classificação:', v_classificacao.