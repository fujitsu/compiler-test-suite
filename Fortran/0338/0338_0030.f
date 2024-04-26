      PROGRAM MAIN
      COMPLEX*16 DCOMP
      PARAMETER (DCOMP=(10.5D1,10.5D1))
      WRITE(6,*)'#### START ####'
      IF(DCOMP.EQ.(10.5D1,10.5D1)) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
