      INTEGER I401(50,100)/5000*1/
      DO 10 I=1,100
        DO 11 J=1,50
   11     I401(J,I) = I+J
        NNN = I
        MMM = I - 98
   10 CONTINUE
C
      DO 20 I=1,50
        DO 20 J=1,NNN
          I401(1,J) = I401(1,J) - J
   20 CONTINUE
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,111) (I401(1,J),J=1,100)
      DO 30 I=1,50
        DO 30 J=1,I
          I401(2,J) = I401(2,J) + J
   30 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
      DO 40 I=1,NNN
        DO 40 J=1,2
          I401(1,J) = I401(1,J) + MMM
   40 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,111) (I401(1,I),I=1,2)
C
  111 FORMAT(10I7)
C
      STOP
      END
