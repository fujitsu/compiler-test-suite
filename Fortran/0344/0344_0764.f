      REAL*4    R4A(11),R4B(11),R4C(11)
      DATA      R4A/11*0/,R4B/11*1/,R4C/11*5/
      DO 100 I = 3,11
        R4A(I) = R4A(I-2) * R4B(I) +R4C(I)
  100 CONTINUE
      WRITE(6,999) R4A(11)
  999 FORMAT(1H ,'RESULT = ',F20.10)
      STOP
      END
