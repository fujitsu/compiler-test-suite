      REAL*4 A(100),B(100)
      EQUIVALENCE (SUM1,SUM2)
      SUM2=0
C
      DO 10 I=1,100
         A(I) = FLOAT(I)
         SUM1 = SUM1 + A(I)
         B(I) = FLOAT(I) + A(I)
         SUM1 = SUM1 + B(I)
         SUM2 = SUM2 + B(I)
   10 CONTINUE
C
      WRITE(6,*) SUM1,SUM2
      STOP
      END
