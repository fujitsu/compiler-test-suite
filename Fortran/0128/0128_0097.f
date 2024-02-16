      INTEGER P, Q
      PARAMETER (N=24)
      INTEGER A(1:N), B(1:N), C(1:N)

      DO 10 I=1,N
         Q=I
         A(I)=Q-I/2
         Q=I*I
         B(I)=Q-I/4
         Q=A(I)-B(I)
         C(I)=Q-I
         PRINT *,Q
 10      CONTINUE
      CLOSE(10)

      P=0
      DO 20 I=1,N
         P=P+C(I)
 20      CONTINUE
      CLOSE(20)

      PRINT *,P

      END
