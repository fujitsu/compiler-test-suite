      INTEGER*4 A(10),B(10),C(10),D(10),E(10),F(10),G(10),H(10),I(10)
      DATA C/10*0/

        DO 1 J=1,10
         A(J)=10
1       CONTINUE

      N=10
      DO 10 J=1,N
        B(J)=A(J)
        C(J)=A(J)+(B(J)+C(J))
        D(J)=A(J)+1+B(J)+C(J)
        E(J)=(A(J)+B(J))+C(J)-1
        F(J)=A(J)+B(J)+(C(J)+1)
        G(J)=A(J)+(B(J)+(C(J)*1))
        H(J)=A(J)+B(J)+C(J)**2
        I(J)=A(J)-B(J)-C(J)-(D(J)-E(J)-F(J))-(G(J)-H(J))
  10  CONTINUE
      WRITE(6,*) A(1),B(1),C(1),D(1),E(1),F(1),G(1),H(1),I(1)
      STOP
      END
