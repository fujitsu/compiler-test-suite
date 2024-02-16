      INTEGER P, Q, Z, M
      PARAMETER (N=24)
      INTEGER A(1:N), B(1:N)

      A = 0
      B = A + 1

      Q = B(N-A(1))
      P = B(N-A(2))
      DO 10 I=1,N
         Z = Q + P
         M = Z + I
         Q = M + P
         Z = Q - P
         Q = Z - A(I)
 10      CONTINUE
      CLOSE(10)

      PRINT *,Q

      P=0
      DO 20 I=1,N
         P=P+(A(I)-B(I))
 20      CONTINUE
      CLOSE(20)

      PRINT *,P

      END
