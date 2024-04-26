      REAL*4    S,R4A(100)
      REAL*8    R8B(100),R8C(100)
      DATA      R8B/100*1/,
     #          R8C/100*4/
C
      S=0
      DO 100 I = 1,100
        S      = S * R8B(I) + R8C(I)
        R4A(I) = S
  100 CONTINUE
C
      WRITE(6,999) S,R4A(100)
  999 FORMAT(1H ,'RESULT = ',2F20.10)
      STOP
      END
