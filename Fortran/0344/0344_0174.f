      REAL A(10,10,10),B(10,10,10),C(10,10,10)
      DO 10 I=1,10,1
        DO 20 J=1,10,1
          DO 30 K=1,10,1
             A(I,J,K)=I+J+K
             B(J,K,I)=I+J+K
             C(K,J,I)=I+J+K
30        CONTINUE
20      CONTINUE
10    CONTINUE

      WRITE(6,1) A,B,C
 1    FORMAT(6F11.3)
      STOP
      END
