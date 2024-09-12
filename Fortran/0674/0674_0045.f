      REAL*4 A(10,10),B(10,10),C(10,10),D(10,10),S
      DATA C/100*0/,D/100*0/
      DATA K/10/
      DO 10 J=1,10
        DO 20 I=1,10
          A(I,J) = 1.0
          B(I,J) = A(I,J)
20      CONTINUE
        S = B(1,1)
        DO 10 L=1,10
          C(L,K) = 2.0
          D(L,K) = C(L,K)
10    CONTINUE
      PRINT *,A,B,C,D
      STOP
      END
