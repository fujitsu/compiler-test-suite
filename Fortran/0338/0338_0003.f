      COMMON A(10),B(10),C
      DO 1 I=1,10
 1    B(I)=I

      DO 2 I=2,9
        C=B(I)+1
2     A(I)=C
      WRITE(6,*) A(2),A(9)
      STOP
      END
