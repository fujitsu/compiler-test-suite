      PROGRAM MAIN
      LOGICAL T,F
      WRITE(6,*)'#### START ####'
      CALL SUB(F)
      T=.NOT.F
      IF(T) THEN
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
