      INTEGER*4 A(10),B(10),C(10)/1,2,3,4,5,6,7,8,9,10/,D(10),E(10)

      DO 10 I=1,10
        A(I)=1
10    CONTINUE

      DO 20 I=1,10
        B(I)=A(I)+1
20    CONTINUE

      DO 30 I=1,10
        D(I)=A(I)+B(I)
30    CONTINUE

      DO 40 I=1,10
        E(I)=A(C(I))
        D(C(I))=A(I)
40    CONTINUE
      WRITE(6,*) A,B,C,D,E
      STOP
      END
