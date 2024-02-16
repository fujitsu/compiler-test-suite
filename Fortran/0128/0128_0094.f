      INTEGER N,I,K
      PARAMETER (N=50)
      REAL UPPER, UNDER
      PARAMETER (UPPER=-15051.917, UNDER=-15052.210)
      REAL A(1:N), B(1:N), C(1:N)
      REAL D(1:N), E(1:N), F(1:N)
      REAL G(1:N), H(1:N)
      REAL SUM1, SUM2
      REAL SUM
      REAL P, Q, R, S, T, U, V, W

      DO 10 I=1,N
         A(I) = I/2.0
         B(I) = I/3.0
         C(I) = I/4.0
         D(I) = I/5.0
         E(I) = I/6.0
         F(I) = I/7.0
         G(I) = I/8.0
 10      H(I) = I/9.0

      SUM1 = 0
      DO 20 I=1,N
         DO 20 K=1,N
            P = A(I) - B(K)
            Q = H(I) - A(K)
            R = F(I) - G(K)
            S = E(I) - F(K)
            T = D(I) - E(K)
            U = C(I) - D(K)
            V = B(I) - C(K)
            W = P + Q + R + S + T + U + V
 20      SUM1 = SUM1 + W

      SUM2 = 0
      DO 30 I=1,N
         DO 30 K=1,N
            P = A(I) - B(K)
            Q = H(I) - A(K)
            W = P + Q
 30      SUM2 = SUM2 + W

      SUM = SUM1 + SUM2
      IF ((SUM > UNDER) .and. (SUM < UPPER)) THEN
         PRINT *,'OK'
      ELSE
         PRINT *,'NG',SUM
      ENDIF

      END
