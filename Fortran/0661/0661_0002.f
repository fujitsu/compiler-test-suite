      DIMENSION I(10)
      DIMENSION T(10)
      I=1
      J=1
      T=1.0
      R=1.0
      IF (I(1).NE.R   ) STOP 'ERROR-1'
      IF (I(1).EQ.R   ) GOTO 1
      STOP 'ERROR-3'
  1   IF (R   .NE.I(1)) STOP 'ERROR-2'
      IF (J.EQ.1 .AND. I(1).EQ.R) GOTO 2
      STOP 'ERROR-4'
  2   IF (J.NE.1 .OR.  R.NE.I(1)) STOP 'ERROR-5'
      IF (J.NE.1 .OR.  I(1).NE.R .OR. 1.NE.J) STOP 'ERROR-6'
      IF (J.NE.1 .OR.  R.NE.I(1) .OR. 1.NE.J) STOP 'ERROR-7'
      IF (J.NE.R .OR.  R.NE.I(1) .OR. 1.NE.J) STOP 'ERROR-8'
      IF (J.NE.1 .OR.  R.NE.I(1) .OR. R.NE.J) STOP 'ERROR-9'
      IF (I(1).NE.R   .OR.R   .NE.I(1).OR.I(1).NE.R   )STOP 'ERROR-A'
      IF (I(1).NE.T(1).OR.T(1).NE.I(1).OR.I(1).NE.T(1))STOP 'ERROR-B'
      PRINT *,'PASS'
      END
