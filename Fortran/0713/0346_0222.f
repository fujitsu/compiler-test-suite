      DIMENSION  A(10),B(10),C(10),D(10)
      DATA  A,B,C,D/10*1.0,10*2.0,10*3.0,10*4.0/
      DO 10 I=1,10
        B(I) = A(I) + C(I)
        A(I) = D(I) + C(I)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
