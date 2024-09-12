      INTEGER*4 A(10),B(10)/10*0/,C(10),D(10),E(10),F(10),G(10),H(10)

      DO 10 I=1,10
        A(I) = B(I) + 1
        C(I) = A(I) * 10
        A(I) = C(I)
  10  CONTINUE
      WRITE(6,*) A,C

      DO 20 I=1,10
        A(I) = C(I)
        D(I) = A(I)
        E(I) = C(I)
        F(I) = A(I)
        G(I) = C(I) + A(I)
        H(I) = D(I) + E(I) + F(I) + G(I)
  20  CONTINUE
      WRITE(6,*) H

      DO 30 I=1,10
        A(I) = G(I)
        B(I) = C(I)
        E(I) = D(I)
  30  CONTINUE
      WRITE(6,*) A,B,E,G,C,D
      STOP
      END
