      *----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------
       PROGRAM-ID. MOVE.
       AUTHOR. Matheus Leonardo Belo de França.
      *----------------------------------------------------------------
      *SISTEMA    : MOVE
      *PROGRAMA   : MOVE
      *OBJETIVO   : MOVE
      *PROGRAMADOR: Matheus Leonardo Belo de França
      *DATA       : 11/11/2025
      *LINGUAGEM  : COBOL
      *----------------------------------------------------------------
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ORIGEM.
           05 WS-NOME PIC X(10) VALUE 'MATHEUS'.
           05 WS-IDADE PIC 99 VALUE 22.
           05 WS-SALARIO PIC 9(7)V99 VALUE ZERO.
           05 WS-CIDADE PIC X(15) VALUE SPACE.
       01 DESTINO.
           05 WS-NOME-DESTINO PIC X(20) VALUE ZERO.
           05 WS-IDADE-DESTINO PIC 99 VALUE ZERO.
           05 WS-SALARIO-DESTINO PIC 9(7)V99 VALUE ZERO.
           05 WS-CIDADE-DESTINO PIC X(15) VALUE SPACE.
       PROCEDURE DIVISION.
           DISPLAY '--INICIO DO PROGRAMA--'.
           DISPLAY SPACES.
           DISPLAY 'PASSANDO OS DADOS PARA AS VARIAVEIS DE DESTINO'.
           MOVE WS-NOME TO WS-NOME-DESTINO.
           MOVE WS-IDADE TO WS-IDADE-DESTINO.
           MOVE 8000.00 TO WS-SALARIO-DESTINO.
           MOVE 'OLINDA' TO WS-CIDADE-DESTINO.
           DISPLAY 'NOME: ' WS-NOME-DESTINO.
           DISPLAY 'IDADE: ' WS-IDADE-DESTINO.
           DISPLAY 'SALARIO: ' WS-SALARIO-DESTINO.
           DISPLAY 'CIDADE: ' WS-CIDADE-DESTINO.
       STOP RUN.
       