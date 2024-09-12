      INTEGER*4 A(256)/256*1/,B(256)/256*2/,C(256)/256*3/,D(256)

      DO 10  J=1,10
        D(J)=A(J)+B(J)+C(J)+2
10    CONTINUE
      WRITE(6,*) A(1),B(1),C(1),D(1)
      STOP
      END
