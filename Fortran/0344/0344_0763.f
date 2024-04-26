      REAL*4    R4A(11),R4B(11),R4C(11)
      DATA      R4A/11*0/,R4B/11*1/,R4C/11*1/
C
      J=R4B(1)+R4C(1)+1
      DO 100 I = 2,10
        R4A(J) = R4A(J-1) * R4B(I) +R4C(I)
        J = J  - R4A(I)
  100 CONTINUE
C
      WRITE(6,999) R4A(J)
  999 FORMAT(1H ,'RESULT = ',F20.10)
      STOP
      END
