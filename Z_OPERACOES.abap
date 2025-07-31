*&---------------------------------------------------------------------*
*& Report Z_OPERACOES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_OPERACOES.

DATA: v1 TYPE i VALUE 10,
      v2 TYPE i VALUE 3,
      v_soma TYPE i,
      v_mult TYPE i,
      v_resto TYPE i.

v_soma = v1 + v2.
v_mult = v1 * v2.
v_resto = v1 MOD v2.

WRITE: / 'Soma:', v_soma,
       / 'Multiplicação:', v_mult,
       / 'Resto da divisão:', v_resto.