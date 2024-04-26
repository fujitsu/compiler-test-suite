      PROGRAM MAIN
      REAL*4 SCA,ARR(3)
      WRITE(6,*)'#### START ####'
      ARR(1)=-5000.25
      ARR(2)=4999.5
      ARR(3)=5000.75
      SCA=ARR(1)+ARR(2)+ARR(3)
      IF(SCA.EQ.5000.0) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
