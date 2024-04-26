      REAL*4    S,R4B(10),R4C(10)
      DATA      R4B/10*1/,
     #          R4C/10*4/
C
      S=0
      DO 100 I=1,10
        S = S * R4B(I) + R4C(I)
        S = S +1
  100 CONTINUE
C
      WRITE(6,999) S
  999 FORMAT(1H ,'RESULT = ',F20.10)
      STOP
      END
