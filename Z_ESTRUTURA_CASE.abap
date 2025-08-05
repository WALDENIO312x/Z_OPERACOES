REPORT Z_ESTRUTURA_CASE.

PARAMETERS: p_q1 TYPE c LENGTH 1 DEFAULT ' ',
            p_q2 TYPE c LENGTH 1 DEFAULT ' ',
            p_q3 TYPE c LENGTH 1 DEFAULT ' ',
            p_q4 TYPE c LENGTH 1 DEFAULT ' ',
            p_q5 TYPE c LENGTH 1 DEFAULT ' '.

* Função auxiliar para interpretar resposta
FORM interpreta_question USING    iv_question_text TYPE string
                         iv_choice        TYPE c
                   CHANGING cv_output        TYPE string.

  DATA lv_msg TYPE string.

  CASE to_upper( iv_choice ).
    WHEN 'A'.
      lv_msg = |Opção A escolhida|.
    WHEN 'B'.
      lv_msg = |Opção B escolhida|.
    WHEN OTHERS.
      lv_msg = |Opção inválida|.
  ENDCASE.

  cv_output = |{ iv_question_text }{ cl_abap_char_utilities=>newline }{ lv_msg }|.

ENDFORM.

START-OF-SELECTION.

  DATA: lv_out1 TYPE string,
        lv_out2 TYPE string,
        lv_out3 TYPE string,
        lv_out4 TYPE string,
        lv_out5 TYPE string.

  PERFORM interpreta_question USING 'Pergunta 1: Você prefere café (A) ou chá (B)?'  p_q1 CHANGING lv_out1.
  PERFORM interpreta_question USING 'Pergunta 2: Você gosta mais de verão (A) ou inverno (B)?' p_q2 CHANGING lv_out2.
  PERFORM interpreta_question USING 'Pergunta 3: Você prefere ler livros (A) ou assistir filmes (B)?' p_q3 CHANGING lv_out3.
  PERFORM interpreta_question USING 'Pergunta 4: Você prefere viajar de avião (A) ou de carro (B)?'  p_q4 CHANGING lv_out4.
  PERFORM interpreta_question USING 'Pergunta 5: Você prefere doce (A) ou salgado (B)?'        p_q5 CHANGING lv_out5.

  " Impressão formatada
  WRITE: / lv_out1.
  WRITE: /.
  WRITE: / lv_out2.
  WRITE: /.
  WRITE: / lv_out3.
  WRITE: /.
  WRITE: / lv_out4.
  WRITE: /.
  WRITE: / lv_out5.
  WRITE: /.