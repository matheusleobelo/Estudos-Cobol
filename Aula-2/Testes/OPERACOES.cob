      *----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------
       PROGRAM-ID. OPERACOES.
       AUTHOR. Matheus Leonardo Belo de França.
      *----------------------------------------------------------------
      *SISTEMA    : OPERACOES
      *PROGRAMA   : OPERACOES
      *OBJETIVO   : OPERACOES
      *PROGRAMADOR: Matheus Leonardo Belo de França
      *DATA       : 11/11/2025
      *LINGUAGEM  : COBOL
      *----------------------------------------------------------------
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-VALOR1 PIC 9(2) VALUE 50.
       01 WS-VALOR2 PIC 9(2) VALUE 20.
       01 WS-RESULTADO PIC 9(5)v99 VALUE ZERO.
       PROCEDURE DIVISION.
           DISPLAY '--SOMA--'.
           ADD WS-VALOR1 TO WS-VALOR2 GIVING WS-RESULTADO.
           DISPLAY WS-VALOR1 ' + ' WS-VALOR2 ' = ' WS-RESULTADO.
           DISPLAY SPACES.
           DISPLAY '--SUBTRACAO--'.
           SUBTRACT WS-VALOR1 FROM WS-VALOR2 GIVING WS-RESULTADO.
           DISPLAY WS-VALOR1 ' - ' WS-VALOR2 ' = ' WS-RESULTADO.
           DISPLAY SPACES.
           DISPLAY '--MULTIPLICACAO--'.
           MULTIPLY WS-VALOR1 BY WS-VALOR2 GIVING WS-RESULTADO.
           DISPLAY WS-VALOR1 ' * ' WS-VALOR2 ' = ' WS-RESULTADO.
           DISPLAY SPACES.
           DISPLAY '--DIVISAO--'.
           DIVIDE WS-VALOR2 INTO WS-VALOR1 GIVING WS-RESULTADO.
           DISPLAY WS-VALOR1 ' / ' WS-VALOR2 ' = ' WS-RESULTADO.
           DISPLAY SPACES.
           DISPLAY '--COMPUTE--'.
           COMPUTE WS-RESULTADO = WS-VALOR1 * WS-VALOR2 + WS-VALOR1. 
           DISPLAY WS-VALOR1 ' * ' WS-VALOR2 ' + ' ' = ' WS-RESULTADO.
       STOP RUN.
       