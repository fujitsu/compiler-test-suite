
      INTEGER N, I, J, YEAR, KAI
      REAL    RAT
      PARAMETER (N=50)
      PARAMETER (RAT=0.9)
      REAL DV(1:N), MM(1:N)
      REAL P, Q, R, KEI, KEI_D, ANS
      PARAMETER (ANS=5.69999981)

      DV = REAL(1)
      DV(2:N) = REAL(0)
      YEAR = 0

      DV(2:N) = DV(1:N-1)*RAT

      DO 70 I=2,N,1
 70     YEAR = YEAR + 1

      IF (YEAR > 10) THEN
         KEI = REAL(0)
         KEI = KEI + SUM(DV)
      ELSE
         KEI = 1
      ENDIF

      KEI_D = KEI

      P = DV(4)
      Q = DV(5)
      R = DV(5)
      KAI = P * Q * R 

      IF (P*Q*R >= 50) THEN
        KAI = N
      ELSE
         IF (P*Q*R < 10) THEN
           KAI = N
         ELSE
           KAI = P*Q*R
         ENDIF
      ENDIF

      MM = 0
      MM(1:KAI-2)=DV(1:KAI-2)+(R*DV(1:KAI-2)-Q*DV(2:KAI-1)+P*DV(3:KAI))

      J = I*P
      IF (J < 1) THEN
         J = 1
      ENDIF
      IF (J >= N) THEN
         J = 1
      ENDIF

      KEI = KEI + SUM(MM(J:KAI))

      KEI = KEI + KEI_D

      IF (KEI == ANS) THEN
         WRITE(*,*) 'OK'
      ELSE
         WRITE(*,*) 'NG'
      ENDIF

      END
