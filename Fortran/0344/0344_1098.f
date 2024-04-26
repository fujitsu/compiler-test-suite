      PROGRAM MAIN
      REAL*4 A(10),B(10,10),C(10),D(10,10,5)
C
      DO 10 I=1,10
         A(I) = I
         A(I) = A(I) + I
         DO 20 J=1,10
            B(I,J) = A(I) + SQRT(A(I))
            DO 30 K=1,5
               D(I,J,K) = B(I,J) * 0.3
   30       CONTINUE
            B(I,J) = A(I) + D(I,J,2)
   20    CONTINUE
         C(I) = A(I)
         B(I,3) = B(I,2) + C(I)
   10 CONTINUE
C
      WRITE(6,100) B
  100 FORMAT(1H ,10F7.2)
      STOP
      END
