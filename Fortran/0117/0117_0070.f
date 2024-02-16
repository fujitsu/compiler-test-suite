      INTEGER N
      REAL P,R
      PARAMETER (N=24)
      REAL A(1:N), B(1:N), C(1:N)

      DO 10 I=1,N
         A(I)=I
         B(I)=-I
         C(I)=A(I)*B(I)
 10      CONTINUE
      CLOSE(10)

      P = 0.0
      DO 20 I=1,6
         P = P + A(I)
 20      CONTINUE
      CLOSE(20)

      R = 0.0
      DO 30 I=1,N
         P = P + A(I)*B(I)
         R = R + C(I)
 30      CONTINUE
      CLOSE(30)

      DO 40 I=1,N
         P = P + A(I)/9.0
         R = R + B(I)/9.0
 40   CONTINUE
      CLOSE(40)

      PRINT *,P
      PRINT *,R

      END
