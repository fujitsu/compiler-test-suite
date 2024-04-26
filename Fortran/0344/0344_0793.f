      REAL*8    S
      INTEGER   N/5/
C
      S=2
      DO 100 I=1,N
        S =  S * S
  100 CONTINUE
C
      WRITE(6,999) S
  999 FORMAT(1H ,'RESULT = ',F28.10)
      STOP
      END
