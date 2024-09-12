      PROGRAM MAIN
      INTEGER  A(101),B(101),C(101)
      DO 10 I = 1,101
   10   A(I) = I - 51
      DO 20 I = 1,101
   20   B(I) = 10
      DO 100 I = 1,101
        C(I) = A(I) + B(I)
        IF( ABS(A(I)).LT.ABS(B(I)) ) IF( A(I) ) 100,200,200
  200   C(I) = A(I)
  100   A(I) = B(I) * C(I)
      PRINT*,A,B,C
      END
