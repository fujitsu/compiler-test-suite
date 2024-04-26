      REAL*4    R4A(100)
      DATA      R4A/50*50,50*49/
C
      DO 100 I = 2,100
        R4A(I) = R4A(I-1)
  100 CONTINUE
C
      WRITE(6,999) R4A(100)
  999 FORMAT(1H ,'RESULT = ',F20.10)
      STOP
      END
