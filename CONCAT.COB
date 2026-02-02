       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONCAT-LENGTH.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-STR1        PIC X(20).
       01 WS-STR2        PIC X(20).
       01 WS-RESULT      PIC X(40).
       01 WS-LENGTH      PIC 99.

       PROCEDURE DIVISION.
       MAIN-PARA.

           
           ACCEPT WS-STR1.
           ACCEPT WS-STR2.

           STRING WS-STR1 DELIMITED BY SPACE
                  WS-STR2 DELIMITED BY SPACE
                  INTO WS-RESULT
           END-STRING.

           COMPUTE WS-LENGTH = FUNCTION LENGTH(WS-RESULT).

           DISPLAY "CONCATENATED STRING: " WS-RESULT.
           DISPLAY "LENGTH OF STRING: " WS-LENGTH.

           STOP RUN.
