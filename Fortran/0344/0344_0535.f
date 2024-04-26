      PROGRAM MAIN
      PARAMETER(N=10)
      INTEGER*2 A(10)
      REAL*8    B(10)
      DATA A/10*250/,B/10*7.5/
C
      DO 10 I=1,N
         A(I) = A(I) / I
         B(I) = B(I) / I
         A(I) = A(I) - I
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,10I7)
      WRITE(6,200) B
  200 FORMAT(1H ,10F7.1)
      STOP
      END
