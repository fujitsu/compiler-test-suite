      DIMENSION A(10),B(10),C(10),D(10),E(10),F(10),G(10),H(10)
      DIMENSION X(10),Y(10),Z(10)
      DATA A/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      DATA B/11,12,13,14,15,16,17,18,19,20/
      DO 20 I=1,10
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
