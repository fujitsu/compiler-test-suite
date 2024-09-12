      IPARM = 1
      IF(IPARM.NE.2) GO TO 6104
      CALL F66102
 6104 IF(IPARM.NE.4) GO TO 6116
      CALL F66104
 6116 CONTINUE
      IF(IPARM.NE.57) GO TO 6158
      CALL F66157
 6158 CONTINUE
      IF(IPARM.NE.58) GO TO 6162
      CALL F66158
 6162 IF(IPARM.NE.62) GO TO 6163
      CALL F66162
 6163 IF(IPARM.NE.63) GO TO 6164
      CALL F66163
 6164 IF(IPARM.NE.64) GO TO 6166
      CALL F66164
 6166 CONTINUE
      IF(IPARM.NE.59) GO TO 6159
      CALL F66159
 6159 CONTINUE
      IF(IPARM.NE.61) GO TO 6161
      CALL F66161
 6161 CONTINUE
      IF(IPARM.NE.65) GO TO 6165
      CALL F66165
 6165 CONTINUE
      WRITE(6,30)
   30 FORMAT(21X,'= TEST =',5X,'OK'//,6X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE F66102
      WRITE(6,20)
   20 FORMAT(1H0,4HN910)
      J = 62
      WRITE ( 6,100 )
  100 FORMAT (1H0,20X,'========== FAIL ===========')
      STOP
      END
      SUBROUTINE F66104
      DATA S1,S2 / 4HMAST,4HER  /
      WRITE (6,20)
   10 FORMAT (I4,I4)
      I = 61
   20 FORMAT (1H ,4HN911 )
      WRITE ( 6,100 )
  100 FORMAT (1H0,20X,30H========== FAIL ===========   )
      ABC1 = 1
      ABC2 = 2
      WRITE (I,10) ABC1,ABC2
      REWIND I
      READ (I ,10)
      STOP
      END
      SUBROUTINE F66157
      WRITE (6,10)
   10 FORMAT (1H ,4X,'N901')
      I41= 40
      I41= 41
      REWIND 41
      WRITE ( 6,100 )
  100 FORMAT (1H0,20X,'========== FAIL ===========')
      STOP
      END
      SUBROUTINE F66158
      WRITE (6,10)
      WRITE (6,20)
   10 FORMAT ('1',5X,'====== FORTRAN ======')
   20 FORMAT (1H ,4X,'N901')
      I=61
      WRITE(6,100)
  100 FORMAT (1H0,20X,'========== FAIL ===========')
      STOP
      END
      SUBROUTINE F66159
      WRITE (6,10)
   10 FORMAT (1H ,4X,'N905')
      I=2
      WRITE ( 6,100 )
  100 FORMAT (1H0,20X,'========== FAIL ===========')
   20 STOP
      END
      SUBROUTINE F66161
      WRITE (6,10)
   10 FORMAT (1H ,4X,'N907')
      I=66161
      J=255
      WRITE ( 6,100 )
  100 FORMAT (1H0,20X,'========== FAIL ===========')
      STOP
      END
      SUBROUTINE F66162
      I1=41
      WRITE (6,10)
   10 FORMAT (1H ,4X,'N908')
      WRITE (I1,20)
   20 FORMAT (1H ,4X,'N908')
      READ (I1,20)
      WRITE ( 6,100 )
  100 FORMAT (1H0,20X,'========== FAIL ===========')
      STOP
      END
      SUBROUTINE F66163
      DOUBLE PRECISION  S00100,S00200
      I1=41
      WRITE (6,10)
   10 FORMAT (1H ,4X,'N908')
      READ (I1,20) S00100,S00200
   20 FORMAT (A8,A8)
      BACKSPACE I1
      WRITE (I1,20) S00100,S00200
      WRITE ( 6,100 )
  100 FORMAT (1H0,20X,'========== FAIL ===========')
      STOP
      END
      SUBROUTINE F66164
      I1=41
      WRITE (6,10)
   10 FORMAT (1H ,4X,'N908')
      WRITE (I1,10)
   20 FORMAT (1H ,4X,'N908')
      BACKSPACE I1
   30 READ (I1,10)
      WRITE ( 6,100 )
  100 FORMAT (1H0,20X,'========== FAIL ===========')
      STOP
      END
      SUBROUTINE F66165
      I2=42
      WRITE (6,10)
   10 FORMAT (1H ,4X,'N904')
      WRITE ( 6,100 )
  100 FORMAT (1H0,20X,'========== FAIL ===========')
      STOP
      END
