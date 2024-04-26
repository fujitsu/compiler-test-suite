      PROGRAM MAIN
      WRITE(6,*)'#### START ####'
      ASSIGN 10 TO I
      GO TO I,(999,10,999)
  999 WRITE(6,*)'??? NG ???'
      GO TO 20
   10 WRITE(6,*)'*** OK ***'
   20 WRITE(6,*)'####  END  ####'
      END
