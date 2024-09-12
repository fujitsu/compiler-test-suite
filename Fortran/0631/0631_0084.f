      PROGRAM MAIN
      INTEGER A(10,3000)
      DATA A/30000*1/

      DO 20 I=1,10
        DO 20 J=1,3000,1
          A(I,J) = A(I,J) + J
   20 CONTINUE

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,10),J=1,3000,300)
      WRITE(6,*)

      DO 30 I=1,10
        DO 30 J=1,3000,1
          A(I,J) = A(I,J) + J
   30 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,10),J=1,3000,300)
      WRITE(6,*)

      DO 40 I=1,10
        DO 40 J=1,3000,1
          A(I,J) = A(I,J) + J
   40 CONTINUE

      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,10),J=1,3000,300)
      WRITE(6,*)

      DO 50 I=1,10
        DO 60 J=1,3000,1
          A(I,J) = 0
   60 CONTINUE
        DO 50 J=1,3000,1
          A(I,J) = A(I,J) + J
   50 CONTINUE

      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,10),J=1,3000,300)
      WRITE(6,*)

      DO 70 I=1,10
        DO 80 J=1,3000,1
          A(I,J) = A(I,J) + J
   80 CONTINUE

        DO 70 J=1,3000,1
          A(I,J) = A(I,J) + J
   70 CONTINUE

      WRITE(6,*) ' ## TEST 5 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,10),J=1,3000,300)
      WRITE(6,*)

      DO 90 I=1,10
        DO 100 J=1,3000,1
          A(I,J) = A(I,J) + J
  100 CONTINUE
        DO 90 J=1,3000,1
          A(I,J) = A(I,J) + J
   90 CONTINUE

      WRITE(6,*) ' ## TEST 6 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,10),J=1,3000,300)
      WRITE(6,*)
    1 FORMAT(10I7)
      STOP
      END
