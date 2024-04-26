      PROGRAM MAIN
      INTEGER*8 A(10),B(10)
C
      DO 10 I=1,10
         B(I) = I
         A(I) = B(I)
         A(I) = A(I) + B(I)
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END
