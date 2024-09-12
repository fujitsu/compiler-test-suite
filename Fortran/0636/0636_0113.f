      PARAMETER (N=100)
      REAL A(N)/N*0/,B(N)/N*0/,C(N)/N*0/
      INTEGER IA(N),M(N)
      LOGICAL L(N)
      DATA IA/N*3/,J/0/
      DATA L/50*.TRUE.,50*.FALSE./
      DUMMY=0.0
      DO 1000 II=1,5
        DO 10 I=1,N
          J=J+IA(53)
   10   CONTINUE
        DO 20 I=1,N
          A(I)= SQRT(REAL(I))
   20   CONTINUE
        DO 30 I=1,N
          M(I)=I
          IF(L(I)) B(M(I))=99.9
   30   CONTINUE
        DO 40 I=1,N
          C(I)=J*(A(I)+B(I))
   40   CONTINUE
      DUMMY=DUMMY+REAL(II)
 1000 CONTINUE
      PRINT *,A,B,C,J,DUMMY
      STOP
      END
