      PROGRAM MAIN
      INTEGER*2 SCA,ARR(3)
      WRITE(6,*)'#### START ####'
      ARR(1)=-5001
      ARR(2)=4999
      ARR(3)=5002
      SCA=ARR(1)+ARR(2)+ARR(3)
      IF(SCA.EQ.5000) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
