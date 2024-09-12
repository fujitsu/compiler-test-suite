      PARAMETER (N=1026)
      INTEGER M1(N),M2(N)
      REAL A(N),B(N)
      LOGICAL L1(N),L2(N)
      DATA L1/10*.FALSE.,1016*.TRUE./
      DATA L2/100*.TRUE.,900*.FALSE.,26*.TRUE./
      DO 10 I=1,N
        M1(I)=I
        M2(I)=I
        A(I)=SQRT(REAL(I))
        B(I)=A(I)*2.5
   10 CONTINUE
      CALL MOD(A,B,M1,M2,L1,L2,N)
      PRINT *,A,B
      STOP
      END
      SUBROUTINE MOD(A,B,M1,M2,L1,L2,N)
      INTEGER M1(N),M2(N)
      REAL A(N),B(N)
      LOGICAL L1(N),L2(N)
      DO 100 I=1,N
        IF(L1(I)) A(M1(I))=B(I)-0.96
  100 CONTINUE
      DO 200 I=1,N
        IF(L2(I)) B(M2(I))=A(I)+6.89
  200 CONTINUE
      RETURN
      END
