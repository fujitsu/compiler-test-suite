      REAL A(10),B(10),C(10),D(10),E(10)

       DO 10 I=1,10
         A(I)=I
         B(I)=I
         C(I)=A(I)+B(I)
         D(I)=1.
         E(I)=D(I)+A(I)+I
10    CONTINUE

      DO 20 I=1,10
        A(I)=A(I)+B(I)*C(I)/D(I)+1.+(A(I)*E(I))
20    CONTINUE
      WRITE(6,1) A
 1    FORMAT(5F10.5)
      STOP
      END
