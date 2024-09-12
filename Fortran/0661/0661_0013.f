      LOGICAL LS
      DIMENSION LS(2)
      DIMENSION IM(2)
      IM=1
      I=1
      LS=IM.EQ.1
      IF (LS(1).OR.IM(1).EQ.1) GOTO 1
 1    PRINT *,'PASS'
      END
