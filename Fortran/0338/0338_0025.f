      PROGRAM MAIN
      CHARACTER   ARR1(2)
      CHARACTER*3 ARR2(2)
      CHARACTER*8 SCA
      WRITE(6,*)'#### START ####'
      ARR1(1)='F'
      ARR1(2)='O'
      ARR2(1)='RTR'
      ARR2(2)='AN'
      SCA=ARR1(1)//ARR1(2)//ARR2(1)//ARR2(2)
      IF(SCA.EQ.'FORTRAN') THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

