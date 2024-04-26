      REAL*4    R4A(100),R4B(100),R4C(100)
      DATA      R4A/100*0/,
     #          R4B/100*1/,
     #          R4C/100*3/
     #          J  /2/
C
      DO 100 I = 1,99
        R4A(J) = R4A(I) * R4B(I) + R4C(I)
        J=J+1
  100 CONTINUE
C
      WRITE(6,999) R4A(100)
  999 FORMAT(1H ,'RESULT = ',F20.10)
      STOP
      END
