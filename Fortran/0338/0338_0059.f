      PROGRAM MAIN
      LOGICAL*1 RES,TR
      LOGICAL*1 FLAG,FA
      PARAMETER (TR=.TRUE.)
      PARAMETER (FA=.FALSE.)
      WRITE(6,*)'#### START ####'
      FLAG='123'.LT.'456'
      RES=(10.GT.0).EQV.FLAG.EQV.TR.EQV..TRUE..EQV..NOT.FA
      IF(RES) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
