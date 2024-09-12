      INTEGER*4 A(600),B(600),C(600),D(600)
      INTEGER*4 E(600),F(600),G(600),H(600),HH(600)

      N=600
      DO 600 I=1,2
      DO 600 J=1,N
        A(J)=0
        B(J)=0
        C(J)=0
        D(J)=0
        E(J)=0
        F(J)=0
        G(J)=0
        H(J)=0
        HH(J)=0
  600  CONTINUE
      WRITE(6,*) A(1),B(1),C(1),D(1),E(1),F(1),G(1),H(1)
      STOP
      END
