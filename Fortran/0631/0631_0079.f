      PROGRAM MAIN
      INTEGER A(10,5000),K/1/

      DO 10 I=1,10
        DO 10 J=1,5000
          A(I,J) = I
   10 CONTINUE

      DO 20 I=1,10
        DO 30 J=1,5000
          A(I,J) = INT(SIN(REAL(A(I,J)))*(J+1))
   30   CONTINUE
        K=1
   40     A(I,K) = A(I,K) + K
          K = K + 1
        IF (K.LE.5000) GOTO 40
   20 CONTINUE

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,10),J=1,5000,200)
      WRITE(6,*)

      DO 50 I=1,10
        K=1
   60     A(I,K) = A(I,K) + K
          K = K + 1
        IF (K.LE.5000) GOTO 60
        DO 70 J=1,5000
          A(I,J) = INT(SIN(REAL(A(I,J)))*(J+1))
   70   CONTINUE
   50 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,10),J=1,5000,200)
      WRITE(6,*)

      DO 80 I=1,10
        K=1
   90     A(I,K) = A(I,K) + K
          K = K + 1
        IF (K.LE.5000) GOTO 90
        M = 1
  100     A(I,M) = INT(SIN(REAL(A(I,M)))*(M+1))
          M = M + 1
        IF (M.LE.5000) GOTO 100
   80 CONTINUE

      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,10),J=1,5000,200)
      WRITE(6,*)

      DO 110 I=1,10
        DO 120 K=1,5000
          A(I,K) = A(I,K) + K
  120   CONTINUE
        DO 110 M=1,5000
          A(I,M) = INT(SIN(REAL(A(I,M)))*(M+1))
  110 CONTINUE

      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,10),J=1,5000,200)
      WRITE(6,*)
    1 FORMAT(10I7)
      STOP
      END
