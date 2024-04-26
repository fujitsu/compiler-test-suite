      PROGRAM MAIN
      REAL*4 A(100)
      DATA A/100*0.4/,N/50/
      DO 10 I=1,100
         IF(N.LT.A(I)) GO TO 10
         J = I
         GO TO 20
   10 CONTINUE
C
   20 N = N + J
      WRITE(6,*) N
      WRITE(6,100) A
  100 FORMAT(1H ,15F5.1)
      STOP
      END
