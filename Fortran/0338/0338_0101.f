      PROGRAM MAIN
      LOGICAL JUMP
      WRITE(6,*)'#### START ####'
      JUMP=.FALSE.
  100 CONTINUE
      IF(JUMP) GO TO 170
  110 CONTINUE
      GO TO 130
  120 WRITE(6,*)'??? LABEL 1 ???'
  130 WRITE(6,*)'*** LABEL 1 ***'
      GO TO 150
  140 WRITE(6,*)'??? LABEL 2 ???'
  150 WRITE(6,*)'*** LABEL 2 ***'
      JUMP=.TRUE.
      GOTO 100
  160 WRITE(6,*)'??? LABEL 3 ???'
  170 WRITE(6,*)'*** LABEL 3 ***'
      WRITE(6,*)'####  END  ####'
      END
