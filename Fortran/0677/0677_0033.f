      INTEGER*4 A(10)/10*1/,B(10)/10*1/,C(10)/10*2/,D(10)/10*3/
      INTEGER*4 E(10)/10*4/,F(10)/10*5/,G(10),H(10)

      DO 10 J=1,10
        G(J)=A(J)+B(J)+C(J)+D(J)+E(J)+F(J)
        H(J)=A(J)*B(J)*C(J)*D(J)*E(J)*F(J)
  10  CONTINUE
      WRITE(6,*) A(1),B(1),C(1),D(1),E(1),F(1),G(1),H(1)
      STOP
      END
