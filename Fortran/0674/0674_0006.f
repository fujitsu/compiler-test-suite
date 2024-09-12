      PROGRAM MAIN
      INTEGER A(10)
      DO 10 I = 1,10
        A(I) = I
   10 CONTINUE
      PRINT*,A
      DO 20 I = 1,10
   20   A(I) = I
      PRINT*,A
      STOP
      END
