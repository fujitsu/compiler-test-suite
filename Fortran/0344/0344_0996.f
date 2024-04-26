      PROGRAM MAIN
      INTEGER*8 A(100),B(100),N
      DATA B/100*99999/
      DATA N/8888/
C
      DO 10 I=1,100
         A(I) = IAND(B(I),N)
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END
