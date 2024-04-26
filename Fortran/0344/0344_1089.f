      REAL*4 A(100),B(100)
      COMMON /BLK/SUM
C
      SUM = 0.0
      DO 10 I=1,100
         A(I) = SIN(FLOAT(I))
         SUM  = SUM + A(I)
         B(I) = COS(FLOAT(I))
         SUM = SUM + B(I)
   10 CONTINUE
      CALL TMP
C
      WRITE(6,*) SUM
      STOP
      END
C
      SUBROUTINE TMP
      COMMON /BLK/SUM
C
      DO 10 I=1,100
         SUM = SUM + TAN(FLOAT(I))
   10 CONTINUE
      RETURN
      END
