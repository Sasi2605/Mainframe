       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIMPLE-INTEREST.
      
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 P PIC 9(10).
        01 N PIC 9(5).
        01 R PIC 9(5).
        01 SI PIC 9(10).
      
       PROCEDURE DIVISION.
      
           DISPLAY 'SIMPLE INTEREST'.
           ACCEPT P.
           ACCEPT N.
           ACCEPT R.
           COMPUTE SI = (P * N * R)/100.
           DISPLAY SI.
           
           STOP RUN.