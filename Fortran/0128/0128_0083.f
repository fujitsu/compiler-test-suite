      INTEGER N,P,R
      PARAMETER (N=24)
      INTEGER A(1:N), B(1:N), C(1:N)

      DO 10 I=1,N
         A(I)=I
         B(I)=-I
         C(I)=A(I)*B(I)
 10      CONTINUE
      CLOSE(10)

      P = 0
      DO 20 I=1,N
         P = P +A(I)
 20      CONTINUE
      CLOSE(20)

      R = 0
      DO 30 I=1,N
         R = R +C(I)
         P = P +A(I)*B(I)
 30      CONTINUE
      CLOSE(30)

      PRINT *,P
      PRINT *,R

      END
