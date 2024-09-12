      SUBROUTINE TEST(A,AA,B,BB,C)
      REAL*8 A(100),AA(100,100),B(100),BB(100,100),C(100)
      DO 10 I = 2,99
        A(I) = - I * I
        DO 110 J = 1,100
  110     AA(I,J) = 100  / I
        B(I) = A(I) * I
        DO 120 J = 1,100
  120     BB(I,J) = 1 / I / I
        C(I) = A(I+1) + B(I)
   10 CONTINUE
      RETURN
      END
      PROGRAM MAIN
      REAL*8 A(100),AA(100,100),B(100),BB(100,100),C(100)
      DO 10 I = 1,100
        A(I) = 2 * I - 9
        B(I) = 3.333 * I * I
        C(I) = 4.567 * I - 21.34
        DO 20 J = 1,100
          AA(I,J) = MAX(I,J) * I * J
          BB(I,J) = MIN(I,J) + I * J
   20   CONTINUE
   10 CONTINUE
      CALL TEST(A,AA,B,BB,C)
      PRINT*,A,AA,B,BB,C
      STOP
      END
