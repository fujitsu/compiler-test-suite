      PARAMETER (N=100)
      REAL A(N)/N*0/
      INTEGER M(N)
      LOGICAL L(N)
      DATA L/25*.TRUE.,25*.FALSE.,25*.TRUE.,25*.FALSE./
      K=0
      DO 100 II=1,N
      DO 10 I=1,N
      M(I)=I
      IF(L(I)) A(M(I))=1000.0
   10 CONTINUE
      IF(L(II)) K=K+1
  100 CONTINUE
      PRINT *,A,K
      STOP
      END
