      PROGRAM MAIN
      COMPLEX*8 A(100),B(100),C(100)
C
      DO 10 I=1,100
         A(I) = I
         B(I) = A(I) + 1.0
         C(I) = A(I) * B(I) * 0.1
   10 CONTINUE
C
      WRITE(6,100) C
  100 FORMAT(1H ,10F7.1)
      STOP
      END
