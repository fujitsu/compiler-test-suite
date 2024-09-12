      PROGRAM MAIN
      REAL*8 A(10,10,10),B(10,10,10)
      INTEGER AA(1000),BB(1000)
      DO 10 I = 1,10
        DO 20 J = 1,10
          DO 30 K = 1,10
            A(I,J,K) = I * J * K
   30     CONTINUE
   20   CONTINUE
   10 CONTINUE
      DO 40 I = 1,10
        DO 50 J = 1,10
          DO 60 K = 1,10
            B(I,J,K) = A(I,J,K) + 2.342
   60     CONTINUE
   50   CONTINUE
   40 CONTINUE
      DO 100 I = 1,1000
        AA(I) = A(1,2,3) * I
  100 CONTINUE
      DO 200 J = 1,1000
        BB(J) = AA(J) + B(3,3,4)
  200 CONTINUE
      PRINT *,A,B,AA,BB
      STOP
      END
