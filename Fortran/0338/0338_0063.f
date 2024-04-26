      PROGRAM MAIN
      WRITE(6,*)'#### START ####'
      ASSIGN  10 TO L1
      ASSIGN  20 TO L2
      ASSIGN  30 TO L3
      GO TO L2
   10 WRITE(6,*)'??? NG ???'
   20 WRITE(6,L3)
   30 FORMAT(' *** OK ***')
      WRITE(6,*)'####  END  ####'
      END
