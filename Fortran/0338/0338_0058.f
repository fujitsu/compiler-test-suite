      PROGRAM MAIN
      LOGICAL F,T,RES,FLAG(2)
      WRITE(6,*)'#### START ####'
      CALL SUB(F)
      T=.NOT.F
      FLAG(1)=F.EQV..TRUE.
      FLAG(2)=T.NEQV..TRUE.
      RES=FLAG(1).EQV.(FLAG(2).EQV..TRUE.)
      IF(RES) THEN
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
