      PROGRAM MAIN
      CHARACTER*1 CHR1,CHR2(3)
      CHARACTER*5 CHR3
      WRITE(6,*)'#### START ####'
      CHR1='O'
      CHR2(1)='K'
      CHR2(2)='!'
      CHR2(3)=CHR2(2)
      CHR3=CHR1//CHR2(1)//(CHR2(2)//CHR2(3)//'!')
      IF(CHR3.EQ.'OK!!!') THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
