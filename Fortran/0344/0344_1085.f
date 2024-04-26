      REAL*4 A(100),B(100),SUM/0.0/
C
      DO 10 I=1,100
         A(I) = FLOAT(I)
         SUM  = SUM + A(I)
         B(I) = A(I) + FLOAT(I)
         SUM  = SUM + B(I)
   10 CONTINUE
C
      WRITE(6,*) SUM
      STOP
      END
