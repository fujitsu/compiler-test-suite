      REAL*4    T,S,R4B(100),R4C(100),R4D(100)
      DATA      R4B/100*1/,
     #          R4C/100*2/
     #          R4D/50*1,50*0/
C
      T=0
      S=T
      DO 100 I=2,100
        T = S * R4B(I) + R4C(I)
        IF(R4D(I).EQ.0) THEN
          S = T
        ENDIF
  100 CONTINUE
      T=0
C
      WRITE(6,999) S
  999 FORMAT(1H ,'RESULT = ',F20.10)
      STOP
      END
