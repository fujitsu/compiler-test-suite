      INTEGER N,Q
      PARAMETER (N=24)
      INTEGER A(1:N)

      DO 10 I=1,N
         A(I)=I
 10      CONTINUE
      CLOSE(10)

      Q = 0
      DO 20 I=1,N
         Q = Q +A(I)
 20      CONTINUE
      CLOSE(20)

      PRINT *,Q

      END
