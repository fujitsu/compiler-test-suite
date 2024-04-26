      INTEGER*4 S
      REAL*8    R8B(100),R8C(100)
      DATA      R8B/100*1/,R8C/100*1/
C
      S=0
      T=S
      DO 100 I=1,100
        S = S * R8B(I) + R8C(I)
  100 CONTINUE
C
      WRITE(6,999) S
  999 FORMAT(1H ,'RESULT = ',I10)
      STOP
      END
