      PROGRAM MAIN
      INTEGER  A(10),B(10),C(10)
      DATA N/10/
      DATA A/10*0/
      DO 10 I=1,N
      B(I) = 5
   10 C(I) = A(I) + B(I)
      PRINT*, A,B,C
      STOP
      END
