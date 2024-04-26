      PROGRAM MAIN
      LOGICAL FLAG
      WRITE(6,*)'#### START ####'
      FLAG=.TRUE.
      IF(FLAG) THEN
        IF(FLAG) THEN
        ENDIF
        IF(FLAG.AND..TRUE.) THEN
          WRITE(6,*)'*** OK ***'
        ENDIF
        IF(FLAG.AND..FALSE.) THEN
          WRITE(6,*)'??? NG ???'
        ENDIF
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
