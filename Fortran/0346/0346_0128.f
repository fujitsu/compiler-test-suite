      DIMENSION  A(10),B(10),C(10),D(10),E(10),F(10)
      DIMENSION  G(10)
      DATA  A,B,C,D,E,F/10*1.0,10*1.0,10*1.0,10*1.0,10*1.0,10*1.0/
      DATA  G/10*1.0/
      DO 10 N=1,10
        A(N) = (B(N) + C(N)) * (D(N) + E(N))
        F(N) = A(N) - G(N)
   10 CONTINUE
      WRITE(6,*) A
      WRITE(6,*) F
      STOP
      END
