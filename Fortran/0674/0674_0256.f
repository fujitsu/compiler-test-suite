      PARAMETER (N=100)
      LOGICAL L(N)
      REAL A(N)
      INTEGER M(N)
      DATA A/100*0.0/
      DATA L/25*.TRUE.,25*.FALSE.,25*.TRUE.,25*.FALSE./
      DO 10 I=1,N
      M(I)=I
      IF(L(I)) A(M(I))=2.8
   10 CONTINUE
      PRINT *,A
      STOP
      END
