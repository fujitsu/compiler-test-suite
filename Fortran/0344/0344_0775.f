      REAL*4    R4A(100),R4B(100),R4C(100),R4D(100)
      EQUIVALENCE (R4A,R4D)
      DATA      R4A/100*0/,
     #          R4B/100*1/,
     #          R4C/100*3/
C
      DO 100 I = 2,100
        R4A(I) = R4D(I-1) * R4B(I) + R4C(I)
  100 CONTINUE
C
      WRITE(6,999) R4A(100)
  999 FORMAT(1H ,'RESULT = ',F20.10)
      STOP
      END
