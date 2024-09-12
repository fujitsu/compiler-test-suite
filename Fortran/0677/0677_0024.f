      INTEGER*4 A(10),B(10),C(10),D(10),E(10),F(10),G(10),H(10)/10*0/

      DO 10 I=1,10
        A(I) = 0
  10  CONTINUE

      DO 20 I=1,10
        B(I) = A(I)
        C(I) = B(I)+100
  20  CONTINUE

      DO 30 I=1,10
        B(I) = C(I)
        C(I) = A(I)
        D(I) = C(I)
        E(I) = A(I)
        A(I) = B(I) + C(I) + D(I)
        F(I) = A(I) + E(I) + H(I)
        G(I) = F(I)
  30  CONTINUE
      WRITE(6,*) G
      STOP
      END
