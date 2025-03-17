      REAL   I,J,K,L
      DIMENSION  A(10),B(10),C(10),D(10),E(10),F(10)
      DIMENSION  G(10),H(10),I(10),J(10),K(10),L(10)
      DATA  A,B,C,D,E,F/10*1.0,10*1.0,10*1.0,10*1.0,10*1.0,10*1.0/
      DATA  G,H,I,J,K,L/10*1.0,10*2.0,10*2.0,10*1.0,10*1.0,10*2.0/
      DO 10 N=1,10
        A(N) = B(N) + C(N)
        D(N) = E(N) - F(N)
        G(N) = H(N) * I(N)
        J(N) = K(N) / L(N)
   10 CONTINUE
      WRITE(6,*) A
      WRITE(6,*) D
      WRITE(6,*) G
      WRITE(6,*) J
      STOP
      END
