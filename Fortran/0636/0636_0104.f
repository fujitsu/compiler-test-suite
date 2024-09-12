      PARAMETER (N=100)
      REAL A(N),B(N)
      INTEGER IA(N)
      DATA IA/N*1/
      J=1
      DO 100 K=1,3
        DO 10 I=1,N
         J=J+IA(N/2)
   10   CONTINUE
        J=J/2
        DO 20 I=1,N
         A(I)=I
   20   CONTINUE
        DO 30 I=1,N
         B(I)=SQRT(REAL(A(I)))
   30   CONTINUE
  100 CONTINUE
      PRINT *,A,B
      STOP
      END
