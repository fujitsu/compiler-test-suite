      REAL*4  A(10)
      REAL*8  B(10)
      DO 10 I=1,10
         A(I) = I
         A(I) = A(I) + 1
   10 CONTINUE
      DO 20 I=1,10
         B(I) = I
         A(I) = I
         A(I) = A(I) + 1
   20 CONTINUE
      DO 30 I=1,10
         B(I) = B(I) + 1
   30 CONTINUE
      WRITE(6,*) A,B
      STOP
      END
