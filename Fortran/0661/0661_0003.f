      DIMENSION I(2)
      I=1
      A=1.0
      IF (I(2).EQ.I(1).AND..TRUE..AND.I(1).EQ.1.AND.I(2).EQ.IFUN())
     1  J=1
      IF (I(1).EQ.1 .AND. 1.EQ.I(2) .OR. I(1).NE.I(2) .OR. I(1).NE.1)
     1  K=1
      IF (I(1).EQ.2 .OR.  I(1).NE.I(2) .OR. I(1).EQ.J .AND. K.EQ.I(2))
     1  L=1
      IF (IFUN().EQ.1 .OR. I(2).EQ.IFUN() .OR. A.EQ.I(2) .OR.
     1  A.EQ.L .OR. I(2).EQ.A) THEN
      PRINT *,'PASS'
      STOP 'PASS'
      ENDIF
      STOP 'ERROR'
      END
      FUNCTION IFUN()
      IFUN=1
      END
