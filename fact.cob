       IDENTIFICATION DIVISION.
       PROGRAM-ID. FACTORIAL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUM PIC 99.
       01 WS-FACT PIC 9(10) VALUE 01.
       01 WS-I PIC 99.
             

       PROCEDURE DIVISION.

           DISPLAY 'FACTORIAL'.
           ACCEPT WS-NUM.
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I>WS-NUM
             COMPUTE WS-FACT = WS-FACT * WS-I
           END-PERFORM.
           DISPLAY WS-FACT.
           
           STOP RUN.