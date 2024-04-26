      PROGRAM MAIN
      PARAMETER(N=10)
      INTEGER*2 A(10)
      DATA A/10*250/
C
      DO 10 I=1,N
         A(I) = A(I) / I
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,10I7)
      STOP
      END
