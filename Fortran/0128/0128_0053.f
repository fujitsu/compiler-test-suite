      INTEGER N, I, J, YEAR
      REAL    RAT
      PARAMETER (N=50)
      PARAMETER (RAT=0.9)
      PARAMETER (ANS1=9.948462247926802)
      PARAMETER (ANS2=10.30369824009385)
      PARAMETER (ERROR=0.000001)
      REAL DV(1:N), MM(1:N)
      REAL P, Q, R, SUM

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

      IF ((SUM-ANS1)<ERROR) THEN
         PRINT *,"OK"
      ELSE
         PRINT *,"NG : ",SUM
      ENDIF

      P = DV(4)
      Q = DV(5)
      R = DV(5)

      DO 85 I=1,N
 85      MM(I) = 0

      DO 90 I=1,N-2
 90      MM(I) = DV(I)+(R*DV(I)-Q*DV(I+1)+P*DV(I+2))

      J = I*P
      IF (J < 1) THEN
         J = 1
      ENDIF
      IF (J >= N) THEN
         J = 1
      ENDIF

      DO 100 I=J,N
 100     SUM = SUM + MM(I)

      IF ((SUM-ANS2)<ERROR) THEN
         PRINT *,"OK"
      ELSE
         PRINT *,"NG : ",SUM
      ENDIF
 
      END
