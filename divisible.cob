       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIVISIBLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUM     PIC 9(4).
       01 WS-REM     PIC 9.

       PROCEDURE DIVISION.
       MAIN-PARA.

           PERFORM VARYING WS-NUM FROM 1 BY 1
               UNTIL WS-NUM > 1000

               IF FUNCTION MOD(WS-NUM, 2)  = 0
               AND FUNCTION MOD(WS-NUM, 3)  = 0
               AND FUNCTION MOD(WS-NUM, 17) = 0
                   DISPLAY WS-NUM
               END-IF

           END-PERFORM.

           STOP RUN.
