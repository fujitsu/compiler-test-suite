      PROGRAM MAIN
      LOGICAL F,T,RES
      WRITE(6,*)'#### START ####'
      CALL SUB(F)
      T=.NOT.F
      RES=.NOT.(F.AND.F).AND..TRUE..AND.T
      IF(RES) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(F)
      LOGICAL F
      F=.FALSE.
      END
