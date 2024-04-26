      PROGRAM MAIN
      CHARACTER*2 CHR
      PARAMETER (CHR='OK')
      WRITE(6,*)'#### START ####'
      IF(CHR.EQ.'OK') THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
