      INTEGER N, I, J, YEAR, KAI
      REAL    RAT
      PARAMETER (N=50)
      PARAMETER (RAT=0.9)
      PARAMETER (ANS1=20.25216048802065)
      PARAMETER (ERROR=0.000001)
      REAL DV(1:N), MM(1:N)
      REAL P, Q, R, SUM, SUM_D

      DV = 1.0
      YEAR = 0

      DO 70 I=2,N,1
        DV(I) = DV(I-1)*RAT
 70     YEAR = YEAR + 1

      IF (YEAR > 10) THEN
         SUM = 0.0
         DO 80 I=1,N,1
 80         SUM = SUM + DV(I)
      ELSE
         SUM = 1
      ENDIF

      SUM_D = SUM

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

      DO 85 I=1,KAI
 85      MM(I) = 0

      DO 90 I=1,KAI-2
 90      MM(I) = DV(I)+(R*DV(I)-Q*DV(I+1)+P*DV(I+2))

      J = I*P
      IF (J < 1) THEN
         J = 1
      ENDIF
      IF (J >= N) THEN
         J = 1
      ENDIF

      DO 100 I=J,KAI
 100     SUM = SUM + MM(I)

      SUM = SUM + SUM_D

      IF ((SUM-ANS1)<ERROR) THEN
        PRINT *,"OK"
      ELSE
        PRINT *,"NG : ",SUM
      ENDIF

      END
