      INTEGER*4 A(10),B(10),C(10)/10*10/,D(10)/10*10/,   AA(10)
      INTEGER*4 E(10)/10*10/,F(10)/10*10/,G(10)/10*0/,H(10)/10*10/

      DO 10  J=1,10
        A(J)=0
10    CONTINUE
      WRITE(6,*) A(1)

      DO 20  J=1,10
        A(J)=0
        B(J)=A(J)
20    CONTINUE
      WRITE(6,*) A(1),B(1)

      DO 30  J=1,10
        A(J)=B(J)+C(J)+D(J)+E(J)+F(J)+G(J)+H(J)
        AA(J)=A(J)
30    CONTINUE
      WRITE(6,*) AA
      STOP
      END
