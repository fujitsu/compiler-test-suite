      PROGRAM MAIN
      INTEGER*8 A(100),B(100),N
      DATA B/100*33/
      DATA N/9999/
C
      DO 10 I=1,100
         A(I) = IEOR(N,B(I))
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END
