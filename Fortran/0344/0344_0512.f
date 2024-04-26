      REAL*4 A(10),B(10,10),C(10,10)
      DO 10 I=1,10
         A(I) = I
         DO 20 J=1,10
            B(I,J) = J
   20    CONTINUE
         DO 30 J=1,10,2
            C(I,J) = J
            C(I,J+1) = J
   30    CONTINUE
   10 CONTINUE
      WRITE(6,99) A,B,C
   99 FORMAT(10F5.1)
      STOP
      END
