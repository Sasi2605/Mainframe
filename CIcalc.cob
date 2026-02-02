       IDENTIFICATION DIVISION.
       PROGRAM-ID. CI-CALCULATOR.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-PRINCIPAL        PIC 9(7)V99.
       01 WS-RATE             PIC 9(3)V99.
       01 WS-YRS            PIC 99.
       01 WS-AMT           PIC 9(9)V99.
       01 WS-CI               PIC 9(9)V99.
       01 WS-POWER            PIC 9(9)V99 VALUE 1.
       01 WS-CNT            PIC 99.

       PROCEDURE DIVISION.

      
           ACCEPT WS-PRINCIPAL.
           ACCEPT WS-RATE.
           ACCEPT WS-YRS.

           COMPUTE WS-RATE = WS-RATE / 100.
           ADD 1 TO WS-RATE.

           MOVE 1 TO WS-POWER.

           PERFORM VARYING WS-CNT FROM 1 BY 1
               UNTIL WS-CNT > WS-YRS
               COMPUTE WS-POWER = WS-POWER * WS-RATE
           END-PERFORM.

           COMPUTE WS-AMT = WS-PRINCIPAL * WS-POWER.
           COMPUTE WS-CI = WS-AMT - WS-PRINCIPAL.

           DISPLAY "TOTAL AMOUNT = " WS-AMT.
           DISPLAY "COMPOUND INTEREST = " WS-CI.

           STOP RUN.
