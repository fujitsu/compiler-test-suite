      PROGRAM MAIN
      COMPLEX*8 COMP
      PARAMETER (COMP=(10.5E1,10.25))
      WRITE(6,*)'#### START ####'
      IF(COMP.EQ.(10.5E1,10.25)) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
