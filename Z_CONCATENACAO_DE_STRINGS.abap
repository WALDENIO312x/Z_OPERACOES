*&---------------------------------------------------------------------*
*& Report Z_CONCATENACAO_DE_STRINGS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_CONCATENACAO_DE_STRINGS.

DATA: v_nome TYPE string,
      v_sobrenome TYPE string,
      v_nome_completo TYPE string.

v_nome = 'Waldenio'.
v_sobrenome = 'junior'.

CONCATENATE v_nome v_sobrenome INTO v_nome_completo SEPARATED BY space.

WRITE: / 'Nome completo:', v_nome_completo.