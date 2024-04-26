      INTEGER A(10),B(10),C(10)
      REAL D(10,10),E(10,10)
      DATA N,M,NN/1,10,1/

      D = 1.
      DO 10 I=1,M
        DO 11 J=N,10
          A(J)=J
          B(J)=J
          C(J)=I
11      CONTINUE
        DO 12 J=1,10
          DO 13 K=10,NN,-1
            D(J,K)=K
            E(J,K)=I
            E(J,K)=D(K,J)+K*(-E(J,K))
13        CONTINUE
12      CONTINUE
10    CONTINUE

      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      WRITE(6,1) D
      WRITE(6,1) E
 1    FORMAT(5F12.5)
      STOP
      END

