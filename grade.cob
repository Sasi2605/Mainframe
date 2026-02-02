       IDENTIFICATION DIVISION.
       PROGRAM-ID. GRADE-EVAL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-MARKS    PIC 99.
       01 WS-GRADE    PIC X.

       PROCEDURE DIVISION.
       MAIN-PARA.

           DISPLAY "ENTER MARKS (0-99): ".
           ACCEPT WS-MARKS.

           EVALUATE TRUE
               WHEN WS-MARKS >= 90
                   MOVE 'A' TO WS-GRADE
               WHEN WS-MARKS >= 80
                   MOVE 'B' TO WS-GRADE
               WHEN WS-MARKS >= 70
                   MOVE 'C' TO WS-GRADE
               WHEN WS-MARKS >= 60
                   MOVE 'D' TO WS-GRADE
               WHEN WS-MARKS >= 50
                   MOVE 'E' TO WS-GRADE
               WHEN OTHER
                   MOVE 'F' TO WS-GRADE
           END-EVALUATE.

           DISPLAY "GRADE = " WS-GRADE.

           STOP RUN.
