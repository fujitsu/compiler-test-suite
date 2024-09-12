      PROGRAM MAIN
      INTEGER A(20),B(20),C(10)
      DATA M/3/,N1/10/,N2/20/
      DO 10 I = 1,N2
        A(I) = I
        B(I) = I*I
   10 CONTINUE

      DO 20 I = 1,N1
   20   C(I) = A(I+2)
      DO 30 I = 1,N1
   30   A(3+I) = B(I)
      PRINT*,A,B,C
      STOP
      END
