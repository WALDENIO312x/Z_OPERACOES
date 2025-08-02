*&---------------------------------------------------------------------*
*& Report Z_OPERACOES_USUARIO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_OPERACOES_USUARIO.

PARAMETERS: p_num1 TYPE i,
            p_num2 TYPE i.

DATA: v_soma TYPE i,
      v_subtracao TYPE i,
      v_multiplicacao TYPE i,
      v_divisao TYPE i,
      v_resto TYPE i.

v_soma = p_num1 + p_num2.
v_subtracao = p_num1 - p_num2.
v_multiplicacao = p_num1 * p_num2.
v_divisao = p_num1 / p_num2.
v_resto = p_num1 MOD p_num2.

WRITE: / 'Soma: ', v_soma,
       / 'Subtração: ', v_subtracao,
       / 'Multiplicacao: ', v_multiplicacao,
       / 'Divisão: ', v_divisao,
       / 'Resto: ', v_resto.