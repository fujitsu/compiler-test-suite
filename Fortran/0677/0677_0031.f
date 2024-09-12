      INTEGER*4 A(1),B(2)/2*10/,C(1),D(1),E(1),F(1),G(1),H(1)

      N=2
      DO 10  J=1,1
        A(J)=1
        B(J)=2
        C(J)=3
        D(J)=4
        E(J)=5
        F(J)=6
        G(J)=7
        H(J)=8
10    CONTINUE
      WRITE(6,*) A(1),(B(I),I=1,N),C(1),D(1),E,F,G,(H(I),I=1,1)
      STOP
      END
