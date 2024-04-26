      REAL*4    S,R4B(100),T
      DATA      R4B/100*1/
C
      S=1
      T=S
      DO 100 I=1,100
        S = S * R4B(I)
        T = T + R4B(I)
  100 CONTINUE
C
      WRITE(6,999) S,T
  999 FORMAT(1H ,'RESULT = ',2F20.10)
      STOP
      END
