      PROGRAM MAIN
      WRITE(6,*)'#### START ####'
      JUMP=0
      GO TO (999,999,999),JUMP
  100 JUMP=4
      GO TO (999,999,999),JUMP
  200 JUMP=2
      GO TO (999,10,999),JUMP
  999 WRITE(6,*)'??? NG ???'
      GO TO 20
   10 WRITE(6,*)'*** OK ***'
   20 WRITE(6,*)'####  END  ####'
      END
