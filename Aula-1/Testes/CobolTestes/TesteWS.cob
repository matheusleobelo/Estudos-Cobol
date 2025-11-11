
      *----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------
       PROGRAM-ID. AC00EX01.
       AUTHOR. Matheus Leonardo Belo de França.
      *----------------------------------------------------------------
      *SISTEMA    : Testando WS
      *PROGRAMA   : Testando WS
      *OBJETIVO   : Testando WS
      *PROGRAMADOR: Matheus Leonardo Belo de França
      *DATA       : 10/11/2025
      *LINGUAGEM  : COBOL
      *----------------------------------------------------------------
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * Declaração de variáveis simples
       01 WS-NOME    PIC X(20) VALUE 'JOAO'.
       01 WS-IDADE   PIC 99    VALUE 30.
       01 WS-SALARIO PIC 9(7)V99 VALUE 1500.50.
       01 FILLER     PIC X(03) VALUE '---'.
      *Grupo de dados para data usando REDEFINES
       01 WS-DATA-SEPARADA.
           05 WS-ANO     PIC 9(4) VALUE 2025.
           05 WS-MES     PIC 9(2) VALUE 11.
           05 WS-DIA     PIC 9(2) VALUE 10.

       01 WS-DATA-UNIFICADA REDEFINES WS-DATA-SEPARADA PIC 9(8).

       PROCEDURE DIVISION.
           DISPLAY 'Nome: ' WS-NOME.
           DISPLAY 'Idade: ' WS-IDADE.
           DISPLAY 'Salario: ' WS-SALARIO.
           DISPLAY SPACES.
           DISPLAY 'DATA SEPARADA: ' WS-DIA '/' WS-MES '/' WS-ANO.
           DISPLAY 'DATA UNIFICADA (AAAA MM DD): ' WS-DATA-UNIFICADA.
       STOP RUN.
