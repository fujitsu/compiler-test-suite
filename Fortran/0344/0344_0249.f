      INTEGER I401(50,100)/5000*1/,I402(10)/10*1/
      INTEGER LIST(100)/100*1/
      DO 10 I=1,100
        LIST(I) = I
        DO 11 J=1,50
   11     I401(J,I) = I+J
   10 CONTINUE
C
      DO 20 K=1,10
        DO 20 I=1,K
          NN = 10
          DO 20 J=1,NN
            I401(1,J) = I401(1,J) - I
   20 CONTINUE
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,111) (I401(1,J),J=1,100)
      WRITE(6,111) I402
      DO 30 K=1,10
        DO 30 I=1,K
          I402(1) = 10
          DO 30 J=1,I402(1)
            I401(2,J) = I401(2,J) + I
   30 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
      DO 42 K=1,10
        NN = K
        DO 41 I=1,K
          DO 40 J=1,NN
            I401(2,J) = I401(2,J) + I
   40     CONTINUE
        NN = NN + 1
   41   CONTINUE
   42 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
      DO 52 K=1,5
        I402(1) = K
        DO 51 I=1,5
          DO 50 J=1,I402(1)
            I401(1,J) = I401(1,J) + J
   50     CONTINUE
          I402(1) = I402(1) + 1
   51   CONTINUE
   52 CONTINUE
      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,111) (I401(1,I),I=1,100)
C
  111 FORMAT(10I7)
C
      STOP
      END
