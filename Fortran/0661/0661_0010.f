      I=1
      J=2
      K=2
      IF (I.EQ.2.OR.I+1.EQ.J.AND.J-1.EQ.I) GOTO 1
  2   STOP 'ERROR-1'
  1   IF (I.EQ.2.OR.I+1.EQ.J.AND.J-1.EQ.I) K=K+1
      IF (I.EQ.2.AND.I+1.EQ.J.OR.J-1.EQ.I) GOTO 3
      STOP 'ERROR-2'
  3   IF (I.EQ.2.AND.I+1.EQ.J.OR.J-1.EQ.I) K=K+1
      IF (K.NE.4) GOTO 2
      PRINT *,'PASS'
      END
