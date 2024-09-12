      COMMON /BLK/A,B,C,D
      INTEGER*4 A(256),B(256),C(256),D(256),E(256)/256*256/

      DO 10  J=1,10
        D(J)=A(J)+B(J)+C(J)
10    CONTINUE
      WRITE(6,*) A(1),B(1),C(1),D(1),(E(J),J=1,10),E(256)

      N=256
      DO 20  J=1,N
        D(J)=(A(J)+1)+((B(J)+2)+(C(J)+3))*4
20    CONTINUE
      WRITE(6,*) A,B,C,D
      STOP
      END
      BLOCK DATA
      COMMON /BLK/A,B,C,D
      INTEGER*4 A(300),B(300),C(300),D(300)
      DATA A/300*1/,B/300*2/,C/300*3/,D/300*4/
      END
