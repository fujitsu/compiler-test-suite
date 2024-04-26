      PROGRAM MAIN
      INTEGER*4 HEX
      PARAMETER (HEX=Z'00000064')
      WRITE(6,*)'#### START ####'
      IF(HEX.EQ.100) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
