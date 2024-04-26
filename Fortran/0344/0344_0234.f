      INTEGER I401(50,100)/5000*1/
      INTEGER RC/1/
      DO 10 I=1,100
        DO 11 J=1,50
   11     I401(J,I) = I+J
        NNN = I
        MMM = I - 98
   10 CONTINUE
C
      DO 20 I=1,50
        DO 20 J=1,NNN
          IF (RC.LE.10) THEN
            I401(1,J) = I401(1,J) - J
          ENDIF
   20 CONTINUE
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,111) (I401(1,J),J=1,100)
      DO 30 I=1,50
        DO 30 J=1,NNN
          IF (J.LT.10000) THEN
            I401(2,J) = I401(2,J) + J
          ENDIF
   30 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
      DO 40 I=1,50
        DO 40 J=1,NNN
          IF (J.GT.0) THEN
            I401(2,J) = I401(2,J) + SIN(REAL(J))
          ENDIF
   40 CONTINUE
      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
      DO 50 I=1,50
        DO 50 J=1,NNN
          IF (RC.EQ.1 .AND. J.GT.0) THEN
            I401(1,J) = I401(1,J) + MMM
          ENDIF
   50 CONTINUE
      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,111) (I401(1,I),I=1,100)
C
  111 FORMAT(10I7)
C
      STOP
      END
