      PROGRAM MAIN
      INTEGER  A(20),B(20),C(20)
      DATA A/20*1/,B/20*2/,C/20*3/
      DO 10 I = 1,10
   10   A(I) = 10 - I
      DO 20 I = 1,10
   20   B(I) = A(I+1)
      DO 30 I = 1,10
   30   C(I) = A(11-I)
      PRINT*,A,B,C
      STOP
      END
