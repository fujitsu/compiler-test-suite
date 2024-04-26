      INTEGER I401(50,100)/5000*1/
      INTEGER RC/1/
      DO 10 I=1,100
        DO 11 J=1,50
   11     I401(J,I) = I+J
        NNN = I
        MMM = I - 98
   10 CONTINUE
C
      DO 20 I=1,2
        IF (RC.LE.10) THEN
          DO 21 J=1,NNN
            I401(1,J) = I401(1,J) - J
   21     CONTINUE
        ENDIF
   20 CONTINUE
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,111) (I401(1,J),J=1,100)
      DO 30 I=1,2
        IF (I.LT.10000) THEN
          DO 31 J=1,NNN
            I401(2,J) = I401(2,J) + J
   31     CONTINUE
        ENDIF
   30 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
      DO 40 I=1,2
        IF (I.GT.0) THEN
          DO 41 J=1,NNN
            I401(2,J) = I401(2,J) + SIN(REAL(J))
   41     CONTINUE
        ENDIF
   40 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,111) (I401(2,J),J=1,100)
      DO 50 I=1,2
        IF (RC.EQ.1 .AND. I.GT.0) THEN
          DO 51 J=1,NNN
            I401(1,J) = I401(1,J) + MMM
   51     CONTINUE
        ENDIF
   50 CONTINUE
      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,111) (I401(1,I),I=1,100)
C
  111 FORMAT(10I7)
C
      STOP
      END
