      DIMENSION  A(10),B(10),C(10),D(10),E(10)
      DATA  A,B,C,D,E/10*1.0,10*200.0,10*3.0,10*4.0,10*5.0/
      DO 10 N=1,10
        A(N) = B(N) - C(N) - D(N) - E(N)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
