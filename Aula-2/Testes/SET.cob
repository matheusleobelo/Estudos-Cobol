      *----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------
       PROGRAM-ID. SET.
       AUTHOR. Matheus Leonardo Belo de França.
      *----------------------------------------------------------------
      *SISTEMA    : SET
      *PROGRAMA   : SET
      *OBJETIVO   : SET
      *PROGRAMADOR: Matheus Leonardo Belo de França
      *DATA       : 11/11/2025
      *LINGUAGEM  : COBOL
      *----------------------------------------------------------------
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-SWITCH-STATUS PIC X(01) VALUE SPACE.
           88 WS-PROCESSAMENTO-OK VALUE 'S'.
           88 WS-PROCESSAMENTO-FALHO VALUE 'N'.
       PROCEDURE DIVISION.
           DISPLAY '--TESTE DE SWITCH FALHO--'.
           SET WS-PROCESSAMENTO-FALHO TO TRUE.
           DISPLAY 'Status do Switch (WS-SWITCH-STATUS): '
           WS-SWITCH-STATUS.
           DISPLAY SPACE.
           
           IF WS-PROCESSAMENTO-OK
               DISPLAY 'Mensagem: O processamento deu OK!'
           ELSE
               DISPLAY 'Mensagem: O processamento deu FALHOU!'
           END-IF.
           DISPLAY SPACE.
           DISPLAY '--------------------------------------------------'.
           DISPLAY SPACE.
           DISPLAY '--TESTE DE SWITCH OK--'.
           DISPLAY SPACE.
           SET WS-PROCESSAMENTO-OK TO TRUE.
           DISPLAY 'Status do Switch (WS-SWITCH-STATUS): '
           WS-SWITCH-STATUS.
           
           IF WS-PROCESSAMENTO-FALHO
               DISPLAY 'Mensagem: O processamento deu FALHOU!'
           ELSE 
               DISPLAY 'Mensagem: O processamento deu OK!'
           END-IF.
       STOP RUN.
       