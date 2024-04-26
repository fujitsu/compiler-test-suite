      PROGRAM MAIN
      LOGICAL*4 FLAG
      PARAMETER (FLAG=.TRUE.)
      WRITE(6,*)'#### START ####'
      IF(FLAG) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
