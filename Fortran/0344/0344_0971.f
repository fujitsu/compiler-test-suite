      PROGRAM MAIN
      REAL*4 A(100)
      DATA N/100/,A/100*.1/
      DO 10 I=1,N
         WRITE(1,*) A(I)
   10 CONTINUE
      WRITE(6,100) (A(I),I=1,N)
  100 FORMAT(10F5.1)
      STOP
      END
