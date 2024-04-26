      REAL*4 A(100),B(100)
      DATA A/100*.1/,B/100*.1/,M/100/
      DO 10 I=1,M
         WRITE(1) A(I),B(I)
   10 CONTINUE
      WRITE(6,100) A,B
  100 FORMAT(15F5.1)
C
      STOP
      END
