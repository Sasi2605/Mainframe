       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIBONACCI-SUM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-FIB1     PIC 9(4) VALUE 0.
       01 WS-FIB2     PIC 9(4) VALUE 1.
       01 WS-FIB-NEXT PIC 9(4).
       01 WS-SUM      PIC 9(6) VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PARA.

           DISPLAY "FIBONACCI SERIES UP TO 100:".

           DISPLAY WS-FIB1.
           DISPLAY WS-FIB2.

           COMPUTE WS-SUM = WS-FIB1 + WS-FIB2.

           PERFORM UNTIL WS-FIB-NEXT > 100

               COMPUTE WS-FIB-NEXT = WS-FIB1 + WS-FIB2

               IF WS-FIB-NEXT <= 100
                   DISPLAY WS-FIB-NEXT
                   ADD WS-FIB-NEXT TO WS-SUM
               END-IF

               MOVE WS-FIB2 TO WS-FIB1
               MOVE WS-FIB-NEXT TO WS-FIB2

           END-PERFORM.

           DISPLAY "SUM OF FIBONACCI NUMBERS = " WS-SUM.

           STOP RUN.
