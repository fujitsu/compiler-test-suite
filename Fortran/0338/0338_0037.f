      PROGRAM MAIN
      CHARACTER*10 WORD
      CHARACTER*5  CHR(2)
      WRITE(6,*)'#### START ####'
      CHR(1)='AXXXE'
      CHR(2)(1:2)='FG'
      CHR(2)(3:5)='HIJ'
      WORD=CHR(1)//CHR(2)
      WORD(2:4)='BCD'
      IF(WORD.EQ.'ABCDEFGHIJ') THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
