      SUM = 0.0
      CALL TMP(SUM)
      WRITE(6,*) SUM
C
      STOP
      END
C
      SUBROUTINE TMP(SUM)
      REAL A(100)
C
      DO 10 I=1,100
         SUM  = SUM + TAN(FLOAT(I))
         A(I) = I
         SUM  = SUM + A(I)
   10 CONTINUE
      RETURN
      END
