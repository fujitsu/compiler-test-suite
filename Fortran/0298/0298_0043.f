      REAL A(100,100),B(100,100),C(100,100)
      A=2.
      B=3.
      C=1.
      N=100
      CALL SUB(A,B,C,N)
      PRINT *,C(1,1),C(2,20),C(50,100)
      END
      SUBROUTINE SUB(A,B,C,N)
      REAL A(N,N),B(N,N),C(N,N)
      DO 300 I=1,N
        DO 300 J=1,N
          C(I,J)=0
          DO 300 K=1,N
  300       C(I,J)=C(I,J)+A(I,K)*B(K,J)
      RETURN
      END

