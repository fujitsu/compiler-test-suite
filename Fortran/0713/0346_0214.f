      DIMENSION  A(10),B(10),C(10),D(10)
      DATA  A,B,C,D/10*1.0,10*1.0,10*1.0,10*1.0/
      DATA  S1,S2,S3/2.0,4.0,6.0/
      DO 10 N=1,10
        A(N) = (S1+B(N)) + (S2+C(N)) + (S3+D(N))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
