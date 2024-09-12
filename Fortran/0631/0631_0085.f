      PROGRAM MAIN
      REAL A(10,10,10,10,10)

      DO 10 I=1,10
        DO 10 J=1,10
          DO 10 K=1,10
            DO 10 L=1,10
              DO 10 M=1,10
                A(I,J,K,L,M) = M + 1
   10 CONTINUE

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (A(J,1,1,1,1),J=1,10)
      WRITE(6,*)

      DO 20 I=1,10
        DO 20 J=1,10
          DO 20 K=1,10
            DO 20 L=1,10
              DO 20 M=1,10
                A(I,J,K,L,M) = M  + 1
   20 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (A(1,1,1,1,J),J=1,10)
      WRITE(6,*)

      DO 30 I=1,10
        DO 30 J=1,10
          DO 30 K=1,10
            DO 30 L=1,10
              DO 30 M=1,10
                A(I,J,K,L,M) = M  + 1
   30 CONTINUE

      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (A(1,1,1,J,1),J=1,10)
      WRITE(6,*)

      DO 40 I=1,10
        DO 40 J=1,10
          DO 40 K=1,10
            DO 40 L=1,10
              DO 40 M=1,10
                A(I,J,K,L,M) = M  + 1
   40 CONTINUE

      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (A(1,1,J,1,1),J=1,10)
      WRITE(6,*)

      DO 50 I=1,10
        DO 50 J=1,10
          DO 50 K=1,10
            DO 50 L=1,10
              DO 50 M=1,10
                A(I,J,K,L,M) = M  + 1
   50 CONTINUE

      WRITE(6,*) ' ## TEST 5 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (A(1,J,1,1,1),J=1,10)
      WRITE(6,*)

      DO 60 I=1,10
        DO 60 J=1,10
          DO 60 K=1,10
            DO 60 L=1,10
              DO 60 M=1,10
                A(I,J,K,L,M) = M  + 1
   60 CONTINUE

      WRITE(6,*) ' ## TEST 6 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (A(J,1,1,1,1),J=1,10)
      WRITE(6,*)
    1 FORMAT (5E15.6)
      STOP
      END
