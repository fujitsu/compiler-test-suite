      INTEGER*4 A(600)/600*1/,B(600)/600*2/,C(600)/600*3/,D(600)/600*4/
      INTEGER*4 E(600)/600*5/,F(600)/600*6/
      INTEGER*4 G(600)/600*7/,H(600)/600*8/,I(600),K(600)

      DO 600 J=1,10
        I(J)=A(J)*B(J)*C(J)*D(J)*E(J)*F(J)*G(J)*H(J)
        K(J)=A(J)*B(J)*C(J)*D(J)*E(J)*F(J)*G(J)*H(J)*I(J)
  600  CONTINUE

      WRITE(6,*) A(1),B(1),C(1),D(1),E(1),F(1),G(1),H(1),I(1),K(1)
      STOP
      END
