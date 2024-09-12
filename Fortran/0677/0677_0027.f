      INTEGER*4 A(10),B(10),C(10),D(10),E(10),F(10),G(10),H(10),I(10)

      DO 10 J=1,10
        A(J)= 0
  10  CONTINUE

      DO 20 J=1,9
        A(J)=A(10)
        B(J)=0
        C(J)=0
        D(J)=0
        E(J)=0
        F(J)=0
        G(J)=0
        H(J)=0
        I(J)=0
  20  CONTINUE
      WRITE(6,*) A(1),B(1),C(1),D(1),E(1),F(1),G(1),H(1),I(1)

      DO 30 J=1,9
        A(J) = A(J)
        B(J) = A(J)
        C(J) = A(J)
        D(J) = A(J)
        E(J) = B(J) + C(J) + D(J)
        F(J) = A(J) + E(J) + H(J)
        G(J) = F(J)
        H(J) = F(J)
  30  CONTINUE
      WRITE(6,*) A(1),B(1),C(1),D(1),E(1),F(1),G(1),H(1)
      STOP
      END
