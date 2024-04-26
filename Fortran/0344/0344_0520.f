      PROGRAM MAIN
      REAL*8  A(10)
      COMPLEX*16 B(10)
C
      DO 10 I=1,10
         A(I) = I
         A(I) = A(I) + I
         B(I) = A(I)
         B(I) = B(I) + I
   10 CONTINUE
C
      WRITE(6,100) B
  100 FORMAT(1H ,10F7.1)
      STOP
      END
