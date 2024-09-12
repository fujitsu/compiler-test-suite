      DIMENSION  A(10,10),B(10),C(10),D(10,10),E(10,10),F(10)
      DIMENSION  G(10,10),H(10,10)
      DATA  A,B,C,D,E,F,G,H
     *   /100*1.0,10*2.0,10*3.0,100*4.0,100*5.0,10*6.0,100*7.0,100*8.0/
      DATA  N/10/
      DO 20 J=1,10
        B(J) = B(J) * 2.0
        IX1 = J
        DO 10 I=1,N
          A(I,J) = B(I)   + C(I)
          D(I,J) = E(I,IX1) * C(I)
          F(I)   = G(IX1,I) * H(I,I)
   10   CONTINUE
   20 CONTINUE
      WRITE(6,*) A,D,F
      STOP
      END
