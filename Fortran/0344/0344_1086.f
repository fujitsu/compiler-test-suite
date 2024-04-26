      PARAMETER(N=100)
      REAL*8 A(N),B(N),SUM/0.0/
C
      DO 10 I=1,N
         A(I) = FLOAT(I)
         SUM  = SUM + A(I)
         B(I) = A(I) + FLOAT(I)
         SUM  = SUM + B(I)
         SUM  = SUM + B(I) + A(I)
   10 CONTINUE
C
      WRITE(6,*) SUM
      STOP
      END
