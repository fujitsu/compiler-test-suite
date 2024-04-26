      REAL*4 A(100),B(100),C(100)
      DATA A/100*.0/,B/100*.1/,C/100*.2/,M/100/
      DO 10 I=1,M
         A(I) = B(I) + C(I)
   10 CONTINUE
      WRITE(6,100) A,B,C
  100 FORMAT(15F5.1)
C
      STOP
      END
