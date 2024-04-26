      PROGRAM MAIN
      LOGICAL*4 SCA,ARR(3)
      WRITE(6,*)'#### START ####'
      ARR(1)=.TRUE.
      ARR(2)=.TRUE.
      ARR(3)=.FALSE.
      SCA=ARR(1).AND.(ARR(2).AND..NOT.ARR(3))
      IF(SCA) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
