       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRIME-1-200.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUM       PIC 9(3).   
       01 WS-DIV       PIC 9(3).   
       01 WS-PRIME   PIC X VALUE 'Y'. 

       PROCEDURE DIVISION.
       MAIN-PARA.

           DISPLAY "PRIME NUMBERS FROM 1 TO 200:".

           PERFORM VARYING WS-NUM FROM 2 BY 1 UNTIL WS-NUM > 200
               MOVE 'Y' TO WS-PRIME

               PERFORM VARYING WS-DIV FROM 2 BY 1 UNTIL WS-DIV >= WS-NUM
                   IF FUNCTION MOD(WS-NUM, WS-DIV) = 0 AND WS-DIV NOT = WS-NUM
                       MOVE 'N' TO WS-PRIME
                       EXIT PERFORM
                   END-IF
               END-PERFORM

               IF WS-PRIME = 'Y'
                   DISPLAY WS-NUM
               END-IF

           END-PERFORM.

           STOP RUN.
