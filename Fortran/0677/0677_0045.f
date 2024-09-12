      INTEGER*4 A(10),B(10),D(10)

      DO 10 I=1,10
        A(I)=1
10    CONTINUE

      DO 20 I=1,10
        B(I)=A(I)+1
20    CONTINUE

      DO 30 I=1,10
        D(I)=A(I)+B(I)
30    CONTINUE
      WRITE(6,*) A,B,D
      STOP
      END
