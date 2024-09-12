      INTEGER IA(10)
      DATA IA/10*2/
      K=0
      SUM=0
      J=0
      DO 1000 III=1,10
        DO 100 II=1,10
          DO 10 I=1,10
            J=J+IA(6)
   10     CONTINUE
        K=K+1
  100   CONTINUE
      SUM=SUM+K+III
 1000 CONTINUE
      PRINT *,J,K,SUM
      STOP
      END
