      REAL P,Q,R
      INTEGER N
      PARAMETER (N=100)
      REAL A(1:N)
      REAL B(1:N)
      REAL C(1:N)

      DO 10 I=1,N
         A(I)=I*0.01
         B(I)=I*0.001
         C(I)=I*0.0001
 10      CONTINUE
      CLOSE(10)

      P = 0.0
      R = 0.0
      Q = 0.0
      DO 20 I=1,N
         P = P + A(I)
         Q = Q + B(I)
         R = R + C(I)
 20      CONTINUE
      CLOSE(20)

      PRINT *,P
      PRINT *,Q
      PRINT *,R
      END
