      *----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------
       PROGRAM-ID. AC34EX02.
       AUTHOR. Matheus Leonardo Belo de França.
      *----------------------------------------------------------------
      *SISTEMA    : VALIDA A DATA
      *PROGRAMA   : AC34EX02
      *OBJETIVO   : VALIDANDO A DATA DE ENTRADA
      *PROGRAMADOR: Matheus Leonardo Belo de França
      *DATA       : 11/11/2025
      *LINGUAGEM  : COBOL
      *----------------------------------------------------------------
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-DIA PIC 99 VALUE ZERO.
       01 WS-MES PIC 99 VALUE ZERO.
       01 WS-ANO PIC 9999 VALUE ZERO.
       01 NN PIC X(1) VALUE ZERO.
       PROCEDURE DIVISION.
       PERFORM 0000-INICIAR-PROGRAMA.
       PERFORM 1000-RECEBER-DADOS.

       STOP RUN.
       
       0000-INICIAR-PROGRAMA.
           DISPLAY '---O PROGRAMA INICIOU---'
           EXIT.

       1000-RECEBER-DADOS.
           DISPLAY 'QUAL O DIA(DD)?'
           ACCEPT WS-DIA.
           DISPLAY 'QUAL O MES(MM)?'
           ACCEPT WS-MES.
           DISPLAY 'QUAL O ANO(YYYY)?'
           ACCEPT WS-ANO.

       2000-VALIDACAO-NN.
           EVALUATE WS-MES
               WHEN 01
                   MOVE 31 TO NN
               WHEN 02
                   MOVE 28 TO NN
               WHEN 03
                   MOVE 31 TO NN
               WHEN 04
                   MOVE 30 TO NN
               WHEN 05
                   MOVE 31 TO NN
               WHEN 06
                   MOVE 30 TO NN
               WHEN 07
                   MOVE 31 TO NN
               WHEN 08
                   MOVE 31 TO NN
               WHEN 09
                   MOVE 30 TO NN
               WHEN 10
                   MOVE 31 TO NN
               WHEN 11
                   MOVE 30 TO NN
               WHEN 12
                   MOVE 31 TO NN
               WHEN OTHER
                   MOVE 0 TO NN
           END-EVALUATE.

           IF WS-ANO >= 2000
               IF WS-MES > 0 AND WS-MES <= 12
                   IF WS-DIA > 0 AND WS-DIA <= NN
                       DISPLAY 'DATA INFORMADA' WS-DIA '/' WS-MES '/' 
                       WS-ANO 'EH VALIDA'
                   ELSE
                       DISPLAY 'DATA INFORMADA' WS-DIA '/' WS-MES '/' 
                       WS-ANO 'NAO EH VALIDA'
                   END-IF
               ELSE
                   DISPLAY 'DATA INFORMADA' WS-DIA '/' WS-MES '/' 
                       WS-ANO 'NAO EH VALIDA'
               END-IF
           ELSE
               DISPLAY 'DATA INFORMADA' WS-DIA '/' WS-MES '/' 
                       WS-ANO 'NAO EH VALIDA'
           END-IF.