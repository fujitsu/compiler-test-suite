      REAL*8    S,RB(10)/10*1/
      INTEGER   N/10/
C
      S=1
      DO 100 I=1,N
        S =  S * RB(I) + S
  100 CONTINUE
C
      WRITE(6,999) S
  999 FORMAT(1H ,'RESULT = ',F28.10)
      STOP
      END
