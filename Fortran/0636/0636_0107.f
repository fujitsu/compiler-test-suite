      PARAMETER (N=100)
      INTEGER IA(N),M(N)
      LOGICAL L(N)
      REAL A(N)/N*0/
      DATA IA/N*2/,J/0/
      DATA L/50*.TRUE.,50*.FALSE./
      DO 10 I=1,N
        J=J+IA(50)
   10 CONTINUE
      DO 20 I=1,N
        M(I)=I
        IF(L(I)) A(M(I))=1.0
   20 CONTINUE
      PRINT *,J,A
      STOP
      END
