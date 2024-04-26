      INTEGER*4 I4A(100),I4B(100)
      DATA      I4A/100*999/,
     #          I4B/100*2/
C
      DO 100 I = 2,100
        I4A(I) = MOD(I4A(I-1),I4B(I))
  100 CONTINUE
C
      WRITE(6,999) I4A(100)
  999 FORMAT(1H ,'RESULT = ',I10)
      STOP
      END
