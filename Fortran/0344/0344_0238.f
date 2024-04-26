      INTEGER I401(50,100)/5000*1/
      INTEGER LIST1(100)/100*1/,LIST2(100)/100*1/
      DO 10 I=1,100
        DO 11 J=1,50
   11     I401(J,I) = I+J
        LIST1(I) = MOD(I,50) + 1
        LIST2(I) = I
        NNN = I - 80
        MMM = I - 98
   10 CONTINUE
C
      DO 20 I=1,MMM-2
        DO 21 J=1,NNN*2
          I401(1,J) = I401(1,J) - J
   21   CONTINUE
   20 CONTINUE
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,111) (I401(1,J),J=1,100)
      DO 30 I=1,MMM/2
        DO 31 J=1,NNN
          I401(2,J) = I401(2,J) + J
   31   CONTINUE
   30 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
      DO 40 I=1,MMM
        DO 41 J=1,NNN*3
          I401(2,J) = I401(2,J) + J
   41   CONTINUE
   40 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
C
  111 FORMAT(10I7)
C
      STOP
      END
