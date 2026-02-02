       IDENTIFICATION DIVISION.
       PROGRAM-ID. PALINDROME-NUM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-NUM        PIC 9(6).
       01 WS-TEMP       PIC 9(6).
       01 WS-REM        PIC 9.
       01 WS-REV        PIC 9(6) VALUE 0.

       PROCEDURE DIVISION.

           DISPLAY "ENTER A NUMBER: ".
           ACCEPT WS-NUM.

           MOVE WS-NUM TO WS-TEMP.

           PERFORM UNTIL WS-TEMP = 0
               COMPUTE WS-REM = FUNCTION MOD(WS-TEMP, 10)
               COMPUTE WS-REV = (WS-REV * 10) + WS-REM
               COMPUTE WS-TEMP = WS-TEMP / 10
           END-PERFORM.

           IF WS-REV = WS-NUM
               DISPLAY "THE NUMBER IS A PALINDROME"
           ELSE
               DISPLAY "THE NUMBER IS NOT A PALINDROME"
           END-IF.

           STOP RUN.
