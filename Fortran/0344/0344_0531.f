      PROGRAM MAIN
      PARAMETER(N=10)
      INTEGER*2 A(10)
      REAL*8    B(10)
      DATA A/10*250/,B/10*0.55/
C
      DO 10 I=1,N
         A(I) = B(I) - A(I) - B(I)
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,10I7)
      STOP
      END
