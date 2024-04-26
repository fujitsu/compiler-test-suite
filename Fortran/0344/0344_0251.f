      INTEGER I401(50,100)/5000*1/
      INTEGER I402(100)/100*1/
      INTEGER RC/1/
      DO 10 I=1,100
        DO 11 J=1,50
   11     I401(J,I) = I+J
        I402(I) = I
        NNN = I
        MMM = I - 99
   10 CONTINUE
C
      DO 30 I=1,50,MMM
        DO 30 J=1,NNN
          IF (J.LT.10000) THEN
            I401(2,J) = I401(2,J) + J
          ENDIF
   30 CONTINUE
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
      DO 40 I=50,1,-MMM
        DO 40 J=1,NNN
          IF (J.LT.10000) THEN
            I401(2,J) = I401(2,J) + J
          ENDIF
   40 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
      DO 50 I=50,1,-(MMM+MMM)
        DO 50 J=1,NNN
          IF (J.LT.10000) THEN
            I401(2,J) = I401(2,J) + J
          ENDIF
   50 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
C
  111 FORMAT(10I7)
C
      STOP
      END
