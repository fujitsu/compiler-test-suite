      PARAMETER (N=100)
      LOGICAL L1(N),L2(N)
      REAL A(N)/N*0/,B(N)/N*0/
      INTEGER M(N)
      DATA L1/25*.TRUE.,25*.FALSE.,25*.TRUE.,25*.FALSE./
      DATA L2/10*.TRUE.,90*.FALSE./
      DO 10 I=1,N
      M(I)=I
      IF(L1(I)) A(M(I))=2.8
   10 CONTINUE
      DO 20 I=1,N
      IF(L2(I)) B(M(I))=1.6
   20 CONTINUE
      PRINT *,A,B
      STOP
      END
