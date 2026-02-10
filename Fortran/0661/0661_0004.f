      DIMENSION I(2)
      I(1)=1
      J=1
      IF ((1.,1.).EQ.I(1))GOTO 1
      IF ((1.,1.).EQ.I(1))STOP 'ERROR-1'
      IF ((1.,1.).EQ.J .OR.  J.EQ.(1.,1.)) GOTO 1
      IF ((1.,1.).EQ.J .AND. J.EQ.(1.,1.)) GOTO 1
      IF ((1.,1.).NE.J .OR.  J.NE.(1.,1.)) GOTO 2
      STOP 'ERROR-2'
  2   IF ((1.,1.).NE.J .AND. J.NE.(1.,1.)) GOTO 3
      STOP 'ERROR-3'
  3   IF((1.,1.).EQ.J .AND. (1.,1.).EQ.J .AND. (1.,1.).EQ.J)STOP'ERROR'
      IF((1.,1.).NE.J .OR . (1.,1.).NE.J .OR . (1.,1.).NE.J)GOTO 4
      STOP 'ERROR-4'
  4   IF((1.,1.).EQ.J .AND. (1.,1.).EQ.J .OR . (1.,1.).EQ.J)STOP'ERROR'
      IF((1.,1.).NE.J .OR . (1.,1.).NE.J .AND. (1.,1.).NE.J)GOTO 5
      STOP 'ERROR-5'
  5   PRINT *,'PASS'
      STOP 'PASS',quiet=.true.
  1   STOP 'ERROR-1'
      END
