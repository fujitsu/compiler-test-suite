      PROGRAM MAIN
      INTEGER A(10,20),B(10,20),C(10,10)
      DATA M/3/,N1/10/,N2/20/
      DO 10 I = 1,N1
        DO 10 J = 1,N2
          A(I,J) = I
   10     B(I,J) = I*I

      DO 20 I = 1,N1
        DO 30 J = 1,N1
   30     C(I,J) = A(I,J+2)
        DO 40 J = 1,N1
   40     A(I,3+J) = B(I,J)
   20   CONTINUE
      PRINT*,A,B,C
      STOP
      END
