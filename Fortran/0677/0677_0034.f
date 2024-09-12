      REAL   *4 A(10)/10*1./,B(10),C(10),D(10),E(10),F(10),G(10),H(10)

      DO 10 J=1,10
        B(J)=A(J)+1
        C(J)=A(J)+B(J)+1.
        D(J)=A(J)+B(J)+C(J)/1
        E(J)=A(J)+B(J)+C(J)-1
        F(J)=A(J)+B(J)+C(J)+1
        G(J)=A(J)+B(J)+C(J)*1
        H(J)=A(J)+B(J)+C(J)
  10  CONTINUE
      WRITE(6,*) A(1),B(1),C(1),D(1),E(1),F(1),G(1),H(1)
      STOP
      END
