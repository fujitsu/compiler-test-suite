      INTEGER I401(2,100)/200*1/
      DO 10 I=1,100
        I401(1,I) = I
        I401(2,I) = I + 1
        NNN = I
   10 CONTINUE
C
      DO 20 I=1,2
        DO 20 J=1,NNN
          I401(1,J) = I401(1,J) - J
   20 CONTINUE
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,111) (I401(1,J),J=1,100)
      DO 25 I=1,10
   25   MMM = I-9
      DO 30 I=1,MMM
        DO 30 J=1,NNN
          I401(2,J) = I401(2,J) + J
   30 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
      DO 40 I=1,2
        DO 40 J=1,NNN
          I401(I,J) = I401(I,J) + MMM
   40 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,111) ((I401(I,J),I=1,2),J=1,100)
C
  111 FORMAT(10I7)
C
      STOP
      END
