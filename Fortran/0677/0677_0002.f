      DIMENSION A(1000),B(1000),C(1000),D(1000)
      DIMENSION E(1000),F(1000),G(1000),H(1000)
      DIMENSION X(1000),Y(1000),Z(1000)
      DO 10 I=1,1000
        A(I) = I
        B(I) = I+10
10    CONTINUE
      DO 20 I=1,1000
        C(I)=A(I)+B(I)
        D(I)=A(I)*B(I)
        F(I)=A(I)
        X(I)=A(I)
        Y(I)=A(I)
        Z(I)=A(I)
        E(I)=A(I)/B(I)+2.0
        G(I)=I
        H(I)= A(I)+2*I
20    CONTINUE
      WRITE(6,*) C,D,E,F,G,H
      STOP
      END
