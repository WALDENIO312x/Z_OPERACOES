*&---------------------------------------------------------------------*
*& Report Z_EXPRESSOES_COM_PARAMETROS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_EXPRESSOES_COM_PARAMETROS.

PARAMETERS: p_num1 TYPE i,
            p_num2 TYPE i.

DATA: v_resultado TYPE i.

v_resultado = p_num1 * p_num2.

WRITE: / 'Resultado da multiplicação:', v_resultado.