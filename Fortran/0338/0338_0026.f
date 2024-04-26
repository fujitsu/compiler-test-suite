      PROGRAM MAIN
      PARAMETER (INT=10000)
      WRITE(6,*)'#### START ####'
      IF(INT.EQ.10000) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
