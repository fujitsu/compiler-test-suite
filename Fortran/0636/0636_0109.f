      PARAMETER (N=10)
      INTEGER IA(N),IB(N)
      DATA IA/N*1/,IB/N*5/
      JJ = 0
      KK = 0
      DO 300 II=1,5
        DO 10 I=1,N
          JJ=JJ+IA(1)
   10   CONTINUE
      S=1.0
        DO 20 I=1,N
          KK=KK+IB(9)
   20   CONTINUE
  300 CONTINUE
      PRINT *,JJ,KK
      STOP
      END
