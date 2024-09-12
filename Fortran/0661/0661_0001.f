      DIMENSION I(10)
      I=1
      J=1
      IF (I(1).NE.I(1)) STOP 'ERROR-1'
      IF (I(1).EQ.1   ) GOTO 1
      STOP 'ERROR-3'
  1   IF (1   .NE.I(1)) STOP 'ERROR-2'
      IF (J.EQ.1 .AND. I(1).EQ.1) GOTO 2
      STOP 'ERROR-4'
  2   IF (J.NE.1 .OR.  1.NE.I(1)) STOP 'ERROR-5'
      IF (J.NE.1 .OR.  I(1).NE.1 .OR. 1.NE.J) STOP 'ERROR-6'
      IF (J.NE.1 .OR.  1.NE.I(1) .OR. 1.NE.J) STOP 'ERROR-7'
      IF (I(1).NE.I(2).OR.I(2).NE.I(1).OR.I(1).NE.I(2))STOP 'ERROR-8'
      PRINT *,'PASS'
      END
