      PARAMETER (N=100)
      LOGICAL L1(N),L2(N)
      REAL A(N)/N*0/,B(N)/N*0/
      INTEGER M(N)
      DATA L1/25*.TRUE.,25*.FALSE.,25*.TRUE.,25*.FALSE./
      DATA L2/90*.TRUE.,10*.FALSE./
      DO 10 I=1,N
      M(I)=I
      IF(L1(I)) A(M(I))=0.1
 1001 IF(L2(I)) B(M(I))=1.0
   10 CONTINUE
      PRINT *,A,B
      STOP
      END
