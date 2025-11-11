      *----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------
       PROGRAM-ID. INITIALIZE.
       AUTHOR. Matheus Leonardo Belo de França.
      *----------------------------------------------------------------
      *SISTEMA    : INITIALIZE
      *PROGRAMA   : INITIALIZE
      *OBJETIVO   : INITIALIZE
      *PROGRAMADOR: Matheus Leonardo Belo de França
      *DATA       : 11/11/2025
      *LINGUAGEM  : COBOL
      *----------------------------------------------------------------
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 DADOS-PESSOAIS.
           05 WS-NOME PIC X(20) VALUE 'MATHEUS'.
           05 WS-IDADE PIC 99 VALUE 22.
           05 WS-CIDADE PIC X(15) VALUE 'OLINDA'.

       PROCEDURE DIVISION.
           DISPLAY '--INICIO DO PROGRAMA--'.
           DISPLAY SPACES.
           DISPLAY 'OS SEUS DADOS ANTES DO INITIALIZE SAO: '.
           DISPLAY 'NOME: ' WS-NOME.
           DISPLAY 'IDADE: ' WS-IDADE.
           DISPLAY 'CIDADE: 'WS-CIDADE.
           DISPLAY SPACES.
           DISPLAY 'OS SEUS DADOS ANTES DO INITIALIZE SAO: '.
           INITIALIZE DADOS-PESSOAIS.
           DISPLAY 'NOME: ' WS-NOME.
           DISPLAY 'IDADE: ' WS-IDADE.
           DISPLAY 'CIDADE: 'WS-CIDADE.
       STOP RUN.
       