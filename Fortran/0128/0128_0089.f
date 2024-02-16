      INTEGER N,I,P,Q,R
      PARAMETER (N=24)

      P = 0
      R = 0
      DO 10 I=1,N
         P = P + I
         R = R + I - P
 10      CONTINUE
      CLOSE(10)

      Q = 0
      DO 20 I=R, P
         Q = Q + I
 20      CONTINUE
      CLOSE(20)

      PRINT *,P
      PRINT *,Q
      PRINT *,R

      END
