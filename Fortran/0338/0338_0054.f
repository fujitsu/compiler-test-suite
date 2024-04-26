      PROGRAM MAIN
      LOGICAL F,T,RES,FLAG(3)
      LOGICAL BOOL,TR
      PARAMETER (TR=.TRUE.)
      WRITE(6,*)'#### START ####'
      CALL SUB(F,T,FLAG)
      RES=(T.OR.TR).AND.(F.NEQV..TRUE.).AND.(FLAG(2).AND.BOOL(.FALSE.))
      IF(RES) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      LOGICAL FUNCTION BOOL(X)
      LOGICAL X
      BOOL=X.NEQV..TRUE.
      END

      SUBROUTINE SUB(F,T,FLAG)
      LOGICAL F,T,FLAG(3)
      F=.FALSE.
      T=.TRUE.
      FLAG(1)=.FALSE.
      FLAG(2)=.TRUE.
      FLAG(3)=.FALSE.
      END
