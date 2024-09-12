      INTEGER*4 A(10),B(10),C(10)/1,2,3,4,5,6,7,8,9,10/

      DO 10 I=1,10
        A(I)=1
10    CONTINUE
      WRITE(6,*) A

      DO 20 I=1,10,2
        A(I)=2
20    CONTINUE
      WRITE(6,*) A

      DO 30 I=1,10
        B(I)=A(I)+1
30    CONTINUE
      WRITE(6,*) B

      DO 40 I=1,10
        B(I)=A(C(I))
40    CONTINUE
      WRITE(6,*) B
      STOP
      END
