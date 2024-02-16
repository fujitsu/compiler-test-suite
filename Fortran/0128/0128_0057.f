      INTEGER N, SUM
      DOUBLE PRECISION  Q, ANS
      PARAMETER (N=1200000)
      PARAMETER (ANS=12000)
      DOUBLE PRECISION  A(1:N)
      DOUBLE PRECISION  B(1:N)

      DO 5 I=1,N
         A(I)=0.1
 5    CONTINUE

      DO 10 I=1,N
         B(I)=A(I)
 10      CONTINUE

      Q = 0.0
      DO 20 I=1,N
         Q = Q + A(I) * B(I)
 20      CONTINUE

      SUM = Q
      IF (SUM.EQ.ANS) THEN
         WRITE(6,*) 'OK: SUM = ', SUM
      ELSE
         WRITE(6,*) 'NG: SUM = ', SUM, ', ANS = ', ANS
      END IF

      END
