      INTEGER I401(50,100)/5000*1/
      INTEGER LIST(100)/100*1/
      DO 10 I=1,100
        LIST(I) = I
        DO 11 J=1,50
   11     I401(J,I) = I+J
   10 CONTINUE
C
      DO 20 K=1,10
        DO 20 I=1,10
          DO 20 J=1,K*2
            I401(1,J) = I401(1,J) - I
   20 CONTINUE
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,111) (I401(1,J),J=1,100)
      DO 30 K=1,10
        DO 30 I=5,15
          DO 30 J=1,LIST(K)-2
            I401(2,J) = I401(2,J) + I
   30 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
      DO 40 K=1,50
        DO 40 I=1,50
          DO 40 J=1,INT(REAL(K)*1.25)
            I401(2,J) = I401(2,J) + I
   40 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
      DO 50 K=1,50
        DO 50 I=1,50
          DO 50 J=1,INT(SIN(REAL(K)))
            I401(1,J) = I401(1,J) + I
   50 CONTINUE
      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,111) (I401(1,I),I=1,100)
C
  111 FORMAT(10I7)
C
      STOP
      END
