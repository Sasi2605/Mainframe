       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUM-20.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-NUMBERS.
          05 WS-NUM OCCURS 20 TIMES PIC 9(4).

       01 WS-I      PIC 99.
       01 WS-SUM    PIC 9(7) VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PARA.

           DISPLAY "ENTER 20 NUMBERS:".

           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 20
               ACCEPT WS-NUM(WS-I)
           END-PERFORM.

           MOVE 0 TO WS-SUM.

           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 20
               ADD WS-NUM(WS-I) TO WS-SUM
           END-PERFORM.

           DISPLAY "SUM OF 20 NUMBERS = " WS-SUM.

           STOP RUN.
