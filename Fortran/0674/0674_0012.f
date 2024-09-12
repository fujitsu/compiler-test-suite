      PROGRAM MAIN
      INTEGER A(10),B(10)
      DO 10 I = 1,10
        A(I) = I
   10 CONTINUE

      DO 20 I = 1,10
   20   B(I) = 10-I
      PRINT*,A,B
      STOP
      END
