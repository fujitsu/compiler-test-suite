      INTEGER N,I,SUM
      PARAMETER (N=24)
      INTEGER A(1:N), B(1:N), C(1:N)

      DO 10 I=1,N
         A(I) = I
         B(I) = 0
         C(I) = 0
 10      SUM = 0

      DO 20 I=1,N
         DO 20 J=1,N
           C(I) = A(J)*I - C(I)
           B(I) = A(J)*I - B(I)
           B(I) = N + B(I)
 20      SUM = SUM + B(J)

      DO 30 I=1,N
 30      SUM = SUM - C(I)
            
      PRINT *,SUM

      END
