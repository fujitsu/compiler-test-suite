      REAL*4 R4A1(10),R4B1(10),R4C1(10)
      DATA R4A1/10*1.3/,R4B1/10*0.5/,R4C1/10*0.9/
C
      INC = 1
      DO 10 I=2,10,INC
        R4A1(I) = SQRT(R4B1(I)) + R4C1(I)
        CALL SUB1(INC)
 10   CONTINUE
      WRITE(6,*) 'R4A1 = ',R4A1
C
      STOP
      END
C
      SUBROUTINE SUB1(INC)
      INC = INC
      RETURN
      END
