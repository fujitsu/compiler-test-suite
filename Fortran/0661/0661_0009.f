      I=1
      J=1
      IF (I.EQ.1.OR .I.EQ.1)  GOTO 1
      IF (I.EQ.1.AND.I.EQ.1)  GOTO 1
      IF (I.NE.1.OR .I.NE.1)  GOTO 1
      IF (I.NE.1.AND.I.NE.1)  GOTO 1
      IF (I.GT.1.OR .I.GT.1)  GOTO 1
      IF (I.GT.1.AND.I.GT.1)  GOTO 1
      IF (I.GE.1.OR .I.GE.1)  GOTO 1
      IF (I.GE.1.AND.I.GE.1)  GOTO 1
      IF (I.LT.1.OR .I.LT.1)  GOTO 1
      IF (I.LT.1.AND.I.LT.1)  GOTO 1
      IF (I.LE.1.OR .I.LE.1)  GOTO 1
      IF (I.LE.1.AND.I.LE.1)  GOTO 1
  1   IF (I.EQ.1.OR .I.EQ.1)  J=J+1
      IF (I.EQ.1.AND.I.EQ.1)  J=J+1
      IF (I.NE.1.OR .I.NE.1)  J=J+1
      IF (I.NE.1.AND.I.NE.1)  J=J+1
      IF (I.GT.1.OR .I.GT.1)  J=J+1
      IF (I.GT.1.AND.I.GT.1)  J=J+1
      IF (I.GE.1.OR .I.GE.1)  J=J+1
      IF (I.GE.1.AND.I.GE.1)  J=J+1
      IF (I.LT.1.OR .I.LT.1)  J=J+1
      IF (I.LT.1.AND.I.LT.1)  J=J+1
      IF (I.LE.1.OR .I.LE.1)  J=J+1
      IF (I.LE.1.AND.I.LE.1)  J=J+1
      IF (I.EQ.1.OR .I.EQ.1.OR .I.EQ.1) GOTO 11
      IF (I.EQ.1.AND.I.EQ.1.AND.I.EQ.1) GOTO 11
      IF (I.NE.1.OR .I.NE.1.OR .I.NE.1) GOTO 11
      IF (I.NE.1.AND.I.NE.1.AND.I.NE.1) GOTO 11
      IF (I.GT.1.OR .I.GT.1.OR .I.GT.1) GOTO 11
      IF (I.GT.1.AND.I.GT.1.AND.I.GT.1) GOTO 11
      IF (I.GE.1.OR .I.GE.1.OR .I.GE.1) GOTO 11
      IF (I.GE.1.AND.I.GE.1.AND.I.GE.1) GOTO 11
      IF (I.LT.1.OR .I.LT.1.OR .I.LT.1) GOTO 11
      IF (I.LT.1.AND.I.LT.1.AND.I.LT.1) GOTO 11
      IF (I.LE.1.OR .I.LE.1.OR .I.LE.1) GOTO 11
      IF (I.LE.1.AND.I.LE.1.AND.I.LE.1) GOTO 11
 11   IF (I.EQ.1.OR .I.EQ.1.OR .I.EQ.1) J=J+1
      IF (I.EQ.1.AND.I.EQ.1.AND.I.EQ.1) J=J+1
      IF (I.NE.1.OR .I.NE.1.OR .I.NE.1) J=J+1
      IF (I.NE.1.AND.I.NE.1.AND.I.NE.1) J=J+1
      IF (I.GT.1.OR .I.GT.1.OR .I.NE.1) J=J+1
      IF (I.GT.1.AND.I.GT.1.AND.I.GT.1) J=J+1
      IF (I.GE.1.OR .I.GE.1.OR .I.GE.1) J=J+1
      IF (I.GE.1.AND.I.GE.1.AND.I.GE.1) J=J+1
      IF (I.LT.1.OR .I.LT.1.OR .I.LT.1) J=J+1
      IF (I.LT.1.AND.I.LT.1.AND.I.LT.1) J=J+1
      IF (I.LE.1.OR .I.LE.1.OR .I.LE.1) J=J+1
      IF (I.LE.1.AND.I.LE.1.AND.I.LE.1) J=J+1
      IF (I.EQ.1.OR .I.EQ.1.AND.I.EQ.1) GOTO 111
      IF (I.EQ.1.AND.I.EQ.1.OR .I.EQ.1) GOTO 111
      IF (I.NE.1.OR .I.NE.1.AND.I.NE.1) GOTO 111
      IF (I.NE.1.AND.I.NE.1.OR .I.NE.1) GOTO 111
      IF (I.GT.1.OR .I.GT.1.AND.I.GT.1) GOTO 111
      IF (I.GT.1.AND.I.GT.1.OR .I.GT.1) GOTO 111
      IF (I.GE.1.OR .I.GE.1.AND.I.GE.1) GOTO 111
      IF (I.GE.1.AND.I.GE.1.OR .I.GE.1) GOTO 111
      IF (I.LT.1.OR .I.LT.1.AND.I.LT.1) GOTO 111
      IF (I.LT.1.AND.I.LT.1.OR .I.LT.1) GOTO 111
      IF (I.LE.1.OR .I.LE.1.AND.I.LE.1) GOTO 111
      IF (I.LE.1.AND.I.LE.1.OR .I.LE.1) GOTO 111
 111  IF (I.EQ.1.OR .I.EQ.1.AND.I.EQ.1) J=J+1
      IF (I.EQ.1.AND.I.EQ.1.OR .I.EQ.1) J=J+1
      IF (I.NE.1.OR .I.NE.1.AND.I.NE.1) J=J+1
      IF (I.NE.1.AND.I.NE.1.OR .I.NE.1) J=J+1
      IF (I.GT.1.OR .I.GT.1.AND.I.NE.1) J=J+1
      IF (I.GT.1.AND.I.GT.1.OR .I.GT.1) J=J+1
      IF (I.GE.1.OR .I.GE.1.AND.I.GE.1) J=J+1
      IF (I.GE.1.AND.I.GE.1.OR .I.GE.1) J=J+1
      IF (I.LT.1.OR .I.LT.1.AND.I.LT.1) J=J+1
      IF (I.LT.1.AND.I.LT.1.OR .I.LT.1) J=J+1
      IF (I.LE.1.OR .I.LE.1.AND.I.LE.1) J=J+1
      IF (I.LE.1.AND.I.LE.1.OR .I.LE.1) J=J+1
      IF (J.EQ.19) GOTO 9
      STOP 'ERROR'
  9   PRINT *,'PASS'
      END
