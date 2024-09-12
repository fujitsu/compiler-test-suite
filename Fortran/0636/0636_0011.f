      PROGRAM MAIN
      REAL*8 A(20),B(20)
      REAL*8 AA(20,20),BB(20,20)
      REAL*8 T,S
      DO 10 I = 1,20
   10   A(I) = I * I
      DO 20 I = 1,20
   20   B(I) = 2*I -1
      DO 30 I = 1,20
        T = A(I) + B(I)
        S = A(I) - B(I)
        DO 40 J = 1,20
          AA(I,J) = T
          BB(I,J) = S
   40   CONTINUE
   30 CONTINUE
      PRINT *,AA,BB
      STOP
      END
