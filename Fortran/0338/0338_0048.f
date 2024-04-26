      PROGRAM MAIN
      CHARACTER*15 CHR
      CHARACTER*3 CHR1
      PARAMETER (CHR1='TES')
      WRITE(6,*)'#### START ####'
      CHR=CHR1//('T'//'048')
      IF(CHR.EQ.'TEST048') THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
