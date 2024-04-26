      PROGRAM MAIN
      PARAMETER (FLOAT=100.375E2)
      WRITE(6,*)'#### START ####'
      IF(FLOAT.EQ.100.375E2) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
