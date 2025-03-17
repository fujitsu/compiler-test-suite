      DIMENSION  R(10)
      DIMENSION  A(10),B(10),C(10),D(10)
      DIMENSION  E(10),F(10),G(10),H(10)
      DATA  A,B,C,D/10*1.0,10*8.0,10*2.0,10*2.0/
      DATA  E,F,G,H/10*1.0,10*8.0,10*2.0,10*2.0/
      DO 10 I=1,10
        R(I) = A(I) + B(I) + C(I) + D(I) + (E(I) * F(I) * G(I) * H(I))
   10 CONTINUE
      WRITE(6,*) R
      STOP
      END
