      REAL*4 A(100),B(100),C(100),SUM/0.0/
C
      DO 10 I=1,100
         A(I) = SIN(FLOAT(I))
         B(I) = COS(FLOAT(I))
         C(I) = TAN(FLOAT(I))
         SUM = SUM + B(I)
         IF(A(I).EQ.B(I)) THEN
            SUM = SUM - C(I)
         ENDIF
         SUM = SUM + A(I)
         SUM = SUM + C(I)
   10 CONTINUE
C
      WRITE(6,*) SUM
      STOP
      END
