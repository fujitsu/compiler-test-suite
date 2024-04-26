      REAL*4 A(10,10),B(10,10,10),C(10,10,10)
      DO 10 I=1,10
      DO 10 J=1,10
         A(I,J) = J
         DO 20 K=1,10
            B(I,J,K) = K
   20    CONTINUE
         DO 30 K=1,10,2
            C(I,J,K) = K
            C(I,J,K+1) = K
   30    CONTINUE
   10 CONTINUE
      WRITE(6,99) A,B,C
   99 FORMAT(10F5.1)
      STOP
      END
