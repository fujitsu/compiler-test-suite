      PROGRAM MAIN
      REAL A(100,100,100)/1000000*1/
      REAL B(10,10,2000)/200000*1/

      DO 100 I=1,100
        DO 100 J=1,100
          DO 100 K=1,100
            A(I,J,K) = K
  100 CONTINUE

      DO 130 I=1,10
        IF (A(1,1,1).EQ.0) GOTO 130
  160   J = 1
  200   DO 150 K=1,100
          IF (K.LT.0) GOTO 150
          B(I,J,K) = B(I,J,K) + J
          IF (K.GT.100) GOTO 150
          B(I,J,K) = B(I,J,K) + A(I,J,K)
  150   CONTINUE
        A(I,J,K-1) = A(I,J,K-1) / I
        IF (A(I,J,K-1).NE.A(I,J,K-1)) GOTO 160
        J = J + 1
        IF (J.LE.10) GOTO 200
  130 CONTINUE

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (((A(I,J,K),I=1,100,20),J=1,100,30),K=1,100,30)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) (((B(I,J,K),I=1,10,5),J=1,10,5),K=1,2000,200)
      WRITE(6,*)

      DO 240 I=1,10
        IF (A(2,2,2).EQ.0) GOTO 230
        IF (B(1,1,1).EQ.0) GOTO 230
        DO 210 J = 1,100
          DO 210 K = 1,100
            A(I,J,K) = J + K
  210   CONTINUE
        IF (I.LE.10) THEN
          B(I,I,I) = I
        ENDIF
        DO 220 J = 1,100
          DO 220 K=1,100
            A(I,J,K) = A(I,J,K) + 1
  220   CONTINUE
  240 CONTINUE
  230 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (((A(I,J,K),I=1,100,20),J=1,100,30),K=1,100,30)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) (((B(I,J,K),I=1,10,5),J=1,10,5),K=1,2000,200)

      DO 300 I=1,100
        DO 300 J=1,10
          DO 300 K=1,100
            IF (B(5,5,I+J+K).EQ.0) GOTO 310
            IF (B(2,2,J).EQ.0) GOTO 310
            A(I,J,K) = SIN(A(I,J,K)) * COS(A(I,J,K))
  300 CONTINUE

  310 WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (((A(I,J,K),I=1,100,20),J=1,100,30),K=1,100,30)
      WRITE(6,*)
    1 FORMAT(5E15.6)
      STOP
      END
