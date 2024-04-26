      INTEGER*4    S,R4B(100),R4C(100)
      DATA      R4B/100*1/,
     #          R4C/100*4/
C
      S=1
      DO 100 I=1,100
        S =  S / R4B(I) + R4C(I)
  100 CONTINUE
C
      WRITE(6,999) S
  999 FORMAT(1H ,'RESULT = ',I10)
      STOP
      END
