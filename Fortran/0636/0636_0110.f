      PARAMETER (N=10)
      INTEGER IA(N)
      DATA IA/N*1/
      JJ = 0
      DO 300 II=1,5
        DO 10 I=1,N
          JJ=JJ+IA(1)
   10   CONTINUE
  300 CONTINUE
      PRINT *,JJ
      STOP
      END
