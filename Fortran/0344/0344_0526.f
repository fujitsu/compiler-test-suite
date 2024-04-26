      PROGRAM MAIN
      PARAMETER(N=10)
      REAL*4 A(10)
C
      DO 10 I=1,N
         A(I) = I ** 2 / 3
         A(I) = A(I) * I
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,10F7.1)
      STOP
      END
