
      INTEGER N, I, YEAR
      REAL    RAT
      PARAMETER (N=50)
      PARAMETER (RAT=0.9)
      REAL DV(1:N), MM(1:N)
      REAL P, Q, R, KEI, ANS
      PARAMETER (ANS=3.79999995)

      DV(1) = REAL(1)
      DV(2:N) = REAL(0)
      YEAR = 0

      DV(2:N) = DV(1:N-1) * RAT

      DO 70 I=2,N,1
 70     YEAR = YEAR + 1

      IF (YEAR > 10) THEN
         KEI = REAL(0)
         KEI = KEI + SUM(DV)
      ELSE
         KEI = 1
      ENDIF

      P = DV(4)
      Q = DV(5)
      R = DV(5)

      MM = 0
      MM(1:N-2) = DV(1:N-2)+(P*DV(1:N-2)-Q*DV(2:N-1)+R*DV(3:N))

      KEI = KEI + SUM(MM)

      IF (abs(KEI - ANS) < 0.00002 ) THEN
         PRINT *,'OK'
      ELSE
         PRINT *,'NG'
      ENDIF

      END
