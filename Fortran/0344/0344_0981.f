      REAL*4 A(100),B(100),C(100)
      REAL*8 D(100),E(100),F(100)
      DATA B/100*0.1/,C/100*0.5/
      DATA E/100*0.3/,F/100*0.2/,N/100/
      DO 10 I=1,N
         A(I) = 0.0
         A(I) = B(I) / C(I) / 0.001
         D(I) = 0.1
         D(I) = E(I) * F(I) * 0.001
   10 CONTINUE
      WRITE(6,100) A,B,C,D,E,F
  100 FORMAT(5F13.7)
      STOP
      END
