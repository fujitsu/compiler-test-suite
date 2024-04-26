      PROGRAM MAIN
      REAL*4 A(10),B(10,10)
C
      DO 10 I=1,10
         A(I) = I
         A(I) = A(I) + I
         DO 10 J=1,10
            B(I,J) = A(I) + SQRT(A(I))
   10 CONTINUE
C
      WRITE(6,100) B
  100 FORMAT(1H ,10F7.2)
      STOP
      END
