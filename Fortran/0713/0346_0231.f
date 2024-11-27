      DIMENSION  A(1000),B(1000),C(1000),D(1000)
      DATA  A,B,C,D/1000*1.0,1000*2.0,1000*3.0,1000*4.0/
      DO 10 I=1,1000
        B(I) = A(I) + 1.0
        C(I) = B(I) * 2.0
        D(I) = B(I) * 3.0
        A(I) = D(I) * 4.0
   10 CONTINUE
      WRITE(6,*) A,B,C,D
      STOP
      END
