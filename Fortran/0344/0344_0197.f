      REAL * 4 A(20),B(20),C(20)
      data a/20*0./
      c = (/(i,i=1,20)/)
      b = (/(j*2,j=1,20)/)
C
      DO 10 J=1,20
        DO 20 I=1,J
          A(I)=I
          DO 30 K=1,J
            C(K)=C(K)+B(K)
30        CONTINUE
20      CONTINUE
10    CONTINUE
C
      WRITE(6,1) A,C
1     format(10f8.2)
      STOP
      END
