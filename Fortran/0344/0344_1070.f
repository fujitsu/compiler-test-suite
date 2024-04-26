      REAL*4 R4A1(100),R4B1(100),R4C1(100)
      DATA R4A1/100*1.3/,R4B1/100*0.5/,R4C1/100*0.9/
      EQUIVALENCE (INC,J)
C
      INC = 1
      DO 10 I=2,10,INC
        R4A1(I) = SQRT(R4B1(I)) + R4C1(I)
        CALL SUB1(J)
 10   CONTINUE
      WRITE(6,*) 'R4A1 = '
      WRITE(6,1) R4A1
  1   FORMAT(5E15.6)
C
      STOP
      END
C
      SUBROUTINE SUB1(J)
      J = J + 1
      RETURN
      END
