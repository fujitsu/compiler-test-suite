      PROGRAM MAIN
      CHARACTER*7 CHR
      CHARACTER*4 CHR1
      CHARACTER*3 CHR2(1)
      CHARACTER*3 CHR3
      WRITE(6,*)'#### START ####'
      CHR1='TEST'
      CHR2(1)=CHR3()
      CHR=CHR1//CHR2(1)
      IF(CHR.EQ.'TEST OK') THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      CHARACTER*3 FUNCTION CHR3()
      CHR3=' OK'
      END
