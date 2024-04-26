      REAL*4    S
      REAL*8    R8B(10)
      DATA      R8B/10*1/
C
      S=1
      DO 100 I=1,10
        S = S * R8B(I) + S * R8B(I)
  100 CONTINUE
C
      WRITE(6,999) S
  999 FORMAT(1H ,'RESULT = ',F20.10)
      STOP
      END
