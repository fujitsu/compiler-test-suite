
      INTEGER P, Q, Z, M
      PARAMETER (N=24)
      INTEGER A(1:N), B(1:N), C(1:N)
      INTEGER ANS
      PARAMETER (ANS=301)

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

      C = A - B
      P = SUM(C)

      P = P + Q

      IF (P == ANS) THEN
         PRINT *,'OK'
      ELSE
         PRINT *,'NG'
      ENDIF

      END
