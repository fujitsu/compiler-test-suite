      PROGRAM MAIN
      REAL*8 DFLOAT
      PARAMETER (DFLOAT=100.625D2)
      WRITE(6,*)'#### START ####'
      IF(DFLOAT.EQ.100.625D2) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
