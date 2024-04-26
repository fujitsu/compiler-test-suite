      INTEGER*4 S,I4B(100),I4C(100)
      DATA      I4B/100*1/,
     #          I4C/100*3/
C
      S=1
      DO 100 I=1,100
        S = MOD(S,I4B(I)) + I4C(I)
  100 CONTINUE
C
      WRITE(6,999) S
  999 FORMAT(1H ,'RESULT = ',I10)
      STOP
      END
