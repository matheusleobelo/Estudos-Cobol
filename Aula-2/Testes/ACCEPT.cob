      *----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------
       PROGRAM-ID. ACCEPT.
       AUTHOR. Matheus Leonardo Belo de França.
      *----------------------------------------------------------------
      *SISTEMA    : ACCEPT
      *PROGRAMA   : ACCEPT
      *OBJETIVO   : ACCEPT
      *PROGRAMADOR: Matheus Leonardo Belo de França
      *DATA       : 11/11/2025
      *LINGUAGEM  : COBOL
      *----------------------------------------------------------------
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NOME PIC X(30) VALUE SPACES.
       PROCEDURE DIVISION.
           DISPLAY '--INICIO DO PROGRAMA--'.
           DISPLAY SPACES.
           DISPLAY 'QUAL E O SEU NOME?'.
           ACCEPT WS-NOME.
           DISPLAY SPACES.
           DISPLAY 'ENTENDI, SEU NOME E: ' WS-NOME.
       STOP RUN.
       