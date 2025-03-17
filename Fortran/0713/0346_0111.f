      DIMENSION  A(10),B(10),C(10)
      DATA  A,B,C/10*1.0,10*1.0,10*1.0/
      DO 10 I=1,10
          A(I) = B(I) + C(I)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
