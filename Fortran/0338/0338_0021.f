      PROGRAM MAIN
      COMPLEX*8 SCA,ARR(3)
      WRITE(6,*)'#### START ####'
      ARR(1)=(-5000.25,10.0)
      ARR(2)=(4999.5,-10.0)
      ARR(3)=(5000.75,50.0)
      SCA=ARR(1)+ARR(2)+ARR(3)
      IF(SCA.EQ.(5000.0,50.0)) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
