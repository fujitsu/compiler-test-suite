      INTEGER*4 A(10),B(10)

      DO 10 I=1,10
        A(I)=1
10    CONTINUE

      DO 20 I=1,10
        B(I)=A(I)+1
20    CONTINUE
      WRITE(6,*) A,B
      STOP
      END