      DIMENSION  A(10,10),B(10,10),C(10,10),D(10,10),E(10)
      DIMENSION  S(10)
      DATA  A,B,C,D,E/100*1.0,100*1.0,100*1.0,100*1.0,10*2.0/
      DATA  S/10*5.0/
      DO 10 I=1,10
      DO 10 N=1,10
        A(N,I) = S(I) + E(N)
        B(N,I) = S(I) - E(N)
        C(N,I) = S(I) * E(N)
        D(N,I) = S(I) / E(N)
   10 CONTINUE
      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      WRITE(6,*) D
      STOP
      END
