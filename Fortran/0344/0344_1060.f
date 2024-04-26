      COMPLEX*8 A(10),B(10)
      N = 0
      DO 10 I=1,10
         B(I) = FLOAT(I)
         N    = N        + 1
         A(N) = B(I) ** N
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
