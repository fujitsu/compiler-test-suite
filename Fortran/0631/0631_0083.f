      PROGRAM MAIN
      REAL A(10,10,5000)
      REAL B(10,500,10)
      DATA A/500000*1/,B/50000*2/

      DO 10 I=1,10
        DO 10 J=1,10
          DO 10 K=1,500
            A(I,J,K) = A(I,J,K) + K
            B(I,K,J) = A(I,J,K) + B(I,K,J) - K
   10 CONTINUE

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (((A(I,J,K),I=1,10,5),J=1,10,5),K=1,5000,500)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) (((B(I,J,K),I=1,10,5),J=1,500,50),K=1,10,5)
      WRITE(6,*)

      DO 20 I=1,10
        DO 20 J=1,10
          IF (J.LE.5) THEN
            DO 30 K=1,5000
              A(I,J,K) = SIN(A(I,J,K)) + 1
   30       CONTINUE
          ELSE
            DO 40 K=1,5000
              A(I,J,K) = COS(A(I,J,K)) - 1
   40       CONTINUE
          ENDIF
   20 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (((A(I,J,K),I=1,10,5),J=1,10,5),K=1,5000,500)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) (((B(I,J,K),I=1,10,5),J=1,500,50),K=1,10,5)
      WRITE(6,*)

      DO 50 I=1,10
        DO 50 J=1,10
          IF (J.LE.5) THEN
            DO 60 K=1,5000
              A(I,J,K) = SIN(A(I,J,K)) + 1
   60       CONTINUE
          ELSE

            DO 70 K=1,5000
              A(I,J,K) = COS(A(I,J,K)) - 1
   70       CONTINUE
          ENDIF
   50 CONTINUE

      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (((A(I,J,K),I=1,10,5),J=1,10,5),K=1,5000,500)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) (((B(I,J,K),I=1,10,5),J=1,500,50),K=1,10,5)
      WRITE(6,*)

      DO 90 I=1,10
        DO 90 J=1,10
          DO 90 K=1,500
            A(I,J,K) = A(I,J,K) + K
            B(I,K,J) = A(I,J,K) + B(I,K,J) - K
   90 CONTINUE

      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (((A(I,J,K),I=1,10,5),J=1,10,5),K=1,5000,500)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) (((B(I,J,K),I=1,10,5),J=1,500,50),K=1,10,5)
      WRITE(6,*)
    1 FORMAT (5E15.6)
      STOP
      END
