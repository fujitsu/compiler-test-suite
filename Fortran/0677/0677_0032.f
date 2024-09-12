      INTEGER*4 A(256),B(256),C(256),D(256)

      DO 10  J=1,10
        A(J)=J
        B(J)=A(J)+1+  (A(J)*1)  *1+  ((A(J)+10)*2-10)
        C(J)=((B(J)-1)-(B(J)-1))+(B(J)-1)
        D(J)=A(J)+B(J)+C(J)+2+(B(J)-1)
10    CONTINUE
      WRITE(6,*) A(1),B(1),C(1),D(1)
      STOP
      END
