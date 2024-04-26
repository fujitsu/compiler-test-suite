      COMPLEX*8 A(10),B(10),C(10)
      DATA C/10*(2.0,4.0)/
      N = 0
      DO 10 I=1,10
         B(I) = FLOAT(I)
         N    = N        + 1
         A(N) = C(N) ** N
         A(N) = A(N) + C(I) ** I
   10 CONTINUE
      WRITE(6,*) A,B
      STOP
      END
