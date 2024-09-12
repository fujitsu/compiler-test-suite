      PARAMETER (N=10)
      REAL*8 A(N,N),B(N,N),C(N,N)
      DATA B/100*1.0/,C/100*2.0/,a/100*0/
      DO 1000 I=1,N
        DO 1000 J=1,N
          A(I,J)=0.0
            DO 1000 K=1,N
              A(I,J)=A(I,J)+B(I,K)*C(K,J)
 1000 CONTINUE
      DO 2000 I=1,N
        DO 2000 J=1,N
          A(I,J)=0.0
 2000 CONTINUE
      DO 4000 J=1,N
        DO 3000 K=1,N,2
          DO 3000 I=1,N
            A(I,J)=A(I,J)+B(I,K)*C(K,J)+B(I,K+1)*C(K+1,J)
 3000 CONTINUE
 4000 CONTINUE
      PRINT *,A
      STOP
      END
