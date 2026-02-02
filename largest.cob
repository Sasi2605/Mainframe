       IDENTIFICATION DIVISION.
       PROGRAM-ID. LARGEStOFTHREE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUM1    PIC 9(4).
       01 WS-NUM2    PIC 9(4).
       01 WS-NUM3    PIC 9(4).
       01 WS-LARGE   PIC 9(4).

       PROCEDURE DIVISION.
       MAIN-PARA.

           ACCEPT WS-NUM1.
           DISPLAY "ENTER FIRST NUMBER: " WS-NUM1.
           
           ACCEPT WS-NUM2.
           DISPLAY "ENTER FIRST NUMBER: " WS-NUM2.
           
           ACCEPT WS-NUM3.
           DISPLAY "ENTER FIRST NUMBER: " WS-NUM3.
           

           IF WS-NUM1 >= WS-NUM2 AND WS-NUM1 >= WS-NUM3
               MOVE WS-NUM1 TO WS-LARGE
           ELSE IF WS-NUM2 >= WS-NUM1 AND WS-NUM2 >= WS-NUM3
               MOVE WS-NUM2 TO WS-LARGE
           ELSE
               MOVE WS-NUM3 TO WS-LARGE
           END-IF.

           DISPLAY "LARGEST NUMBER IS: " WS-LARGE.

           STOP RUN.
