      INTEGER N1, N2
      REAL  Q, R, T, S, U, V, W, ANS, DIF
      PARAMETER (N1=100)
      PARAMETER (N2=150)
      PARAMETER (ANS=99841.6328)
      PARAMETER (DIF=0.2)
      REAL  A(1:N2)
      REAL  B(1:N2)
      REAL  C(1:N2)
      REAL  D(1:N2)
      REAL  E(1:N2)

      R = 0.0
      S = 0.0
      T = 0.0
      V = 0.0
      U = 0.0
      W = 0.0
      DO 5 I=1,N2
         A(I) = 0.01*I
         B(I) = 0.02*I
         C(I) = 0.03*I
         D(I) = 0.04*I
         E(I) = 0.05*I
         R = R + A(I)*0.1
         T = T + B(I)*0.1
         S = S + C(I)*0.1
         U = U + C(I)*0.05
         V = V + C(I)*0.05
         W = W + C(I)*0.05
 5    CONTINUE

      Q = 0.0
      DO 10 I=1,N1
        A(I) = Q + B(I)*(R*E(I+10)+T*E(I+11)+S*E(I+12))
        A(I) = A(I) + C(I)*(U*E(I+13)+V*E(I+14)+W*E(I+15))
        A(I) = A(I) + D(I)*(U*E(I+13)+V*E(I+14)+W*E(I+15))
 10   CONTINUE

      Q = 0.0
      DO 20 I=1,N1
        Q = Q + A(I)
 20   CONTINUE

      IF (ABS(Q-ANS).LT.DIF) THEN
         WRITE(6,*) 'OK: Q = ', ANS
      ELSE
         WRITE(6,*) 'NG: Q = ', Q, ', ANS = ', ANS
      END IF

      END
