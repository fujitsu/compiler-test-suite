

      INTEGER N
      PARAMETER (N=50)
      REAL A(1:N), B(1:N), C(1:N)
      INTEGER D(1:N), E(1:N)
      REAL Q(1:N)
      REAL KEI, ANS
      PARAMETER (ANS=-30.0)

      DO 5 I=1,N
         A(I) = REAL(I - (I/2)*2)
         B(I) = REAL(I - (I/3)*3)
         C(I) = REAL(I - (I/4)*4)
         D(I) = I
         E(I) = N - I + 1
 5    CONTINUE

      Q = REAL(0)
      Q = (A+B+C) - Q

      KEI = SUM(Q)

      Q(D) = Q(E) - (A+B+C)
      KEI = KEI + SUM(Q)

      Q = Q*(A(D)*C - A(E)*B)
      KEI = KEI + SUM(Q)

      IF (KEI == ANS) THEN
         PRINT *,'OK'
      ELSE
         PRINT *,'NG',KEI,ANS
      ENDIF

      END
