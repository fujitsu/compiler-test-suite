      PROGRAM MAIN
      CHARACTER*10 CHR
      WRITE(6,*)'#### START ####'
      CHR(6:10)='FGHIJ'
      CHR(1:5)='ABCDE'
      IF(CHR.EQ.'ABCDEFGHIJ') THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
