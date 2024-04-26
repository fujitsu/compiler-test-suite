      REAL*4 A(100),B(100),C/1./
      DATA A/100*.0/,B/100*.1/,M/100/
      DO 10 I=1,M
         C = C + 1.0
         A(I) = B(I) + C
   10 CONTINUE
      WRITE(6,100) A,B
  100 FORMAT(8F7.1)
C
      STOP
      END
