      PROGRAM MAIN
      LOGICAL*1 AR1(3),T1,F1
      LOGICAL*4 AR4(3),T4,F4,RES
      WRITE(6,*)'#### START ####'
      T1=.TRUE.
      T4=.TRUE.
      F1=.FALSE.
      F4=.FALSE.
      AR1(1)=.TRUE.
      AR1(2)=T4
      AR1(3)=T1.AND.T4.EQV..NOT.F4
      AR4(1)=.TRUE.
      AR4(2)=T1
      AR4(3)=.NOT.AR1(1).OR..TRUE.
      RES=AR1(1).AND.AR1(2).AND.AR1(2).AND.AR4(1).AND.AR4(2).AND.AR4(3)
      IF(RES) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
