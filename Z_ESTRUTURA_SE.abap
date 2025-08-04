*&---------------------------------------------------------------------*
*& Report Z_ESTRUTURA_SE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_ESTRUTURA_SE.

PARAMETERS: p_idade TYPE i.

IF p_idade < 0.
  WRITE: 'Ainda não nasceu'.
ELSEIF p_idade < 1.
  WRITE: 'Bebê recem nascido'.
ELSEIF p_idade < 3.
  WRITE: 'Bebê'.
ELSEIF p_idade < 11.
  WRITE: 'Criança'.
ELSEIF p_idade < 14.
  WRITE: 'Pré-Adolescente'.
ELSEIF p_idade < 18.
  WRITE: 'Adolescente'.
ELSEIF p_idade < 60.
  WRITE: 'Adulto'.
ELSE.
  WRITE: 'Idoso'.

ENDIF.