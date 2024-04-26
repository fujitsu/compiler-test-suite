      INTEGER A(10),B(10)
      N = 10
      DO 10 I=1,10
         B(I) = I
         N    = N    + 1
         A(I) = B(I) + N
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
