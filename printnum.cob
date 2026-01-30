       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRINT-NUM.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
         
         01 COUNTER PIC 999 VALUE 1.
         
       
       PROCEDURE DIVISION.
       
           DISPLAY 'NUMBERS FROM 1-100'.
           PERFORM UNTIL COUNTER>100
             DISPLAY COUNTER
             COMPUTE COUNTER = COUNTER + 1
             END-PERFORM.
           
          
         
         
           STOP RUN.