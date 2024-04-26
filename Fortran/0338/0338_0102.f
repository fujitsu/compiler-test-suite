      PROGRAM MAIN
      INTEGER JUMP,A
      WRITE(6,*)'#### START ####'
      A=0
      JUMP=3
  100 JUMP=JUMP+A
      GO TO (300,400,500,600,700) JUMP
  200 WRITE(6,*)'*** LABEL 6 ***'
      A=2
      GO TO 800
  300 WRITE(6,*)'*** LABEL 3 ***'
      A=1
      GO TO (100,800),A
  400 WRITE(6,*)'*** LABEL 4 ***'
      A=2
      GO TO (800,100,800),A
  500 WRITE(6,*)'*** LABEL 1 ***'
      A=2
      GO TO (800,100,800,800,800,800,800),A
  600 WRITE(6,*)'*** LABEL 5 ***'
      A=-4
      GO TO 100
  700 WRITE(6,*)'*** LABEL 2 ***'
      A=-4
      GO TO 100
  800 WRITE(6,*)'*** LABEL 7 ***'
      WRITE(6,*)'####  END  ####'
      END
