      INTEGER N,I,SUM
      PARAMETER (N=24)
      INTEGER A(1:N), C(1:N)

      DO 10 I=1,N
         A(I) = I
 10      C(I) = 0


      DO 40 I=1,N
         DO 20 J=1,N
 20         C(I) = A(J)*I - C(I)
 40      C(I) = C(I) + A(I)*J

      SUM = 0
      DO 30 I=1,N
 30      SUM = SUM - C(I)
            
      PRINT *,SUM

      END
