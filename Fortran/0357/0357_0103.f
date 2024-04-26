      INTEGER    N
      PARAMETER (N=50)
      REAL       Q

      Q = 0.0
      DO 20 I=1, N
         Q = Q + I
 20      CONTINUE
      CLOSE(20)

      PRINT *,Q

      END
