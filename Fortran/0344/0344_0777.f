      REAL*4    R4A(100),R4B(100),R4C(100)
      DATA      R4A/100*0/,
     #          R4B/100*1/,
     #          R4C/100*3/
     #          IRC/1/
C
      DO 100 I = 1,100
        R4A(IRC) = R4A(IRC) * R4B(I) + R4C(I)
  100 CONTINUE
C
      WRITE(6,999) R4A(IRC)
  999 FORMAT(1H ,'RESULT = ',F20.10)
      STOP
      END
