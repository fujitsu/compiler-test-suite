      PROGRAM MAIN
      LOGICAL*1 FLAG(6)
      LOGICAL*1 F,T
      WRITE(6,*)'#### START ####'
      CALL SUB(F,T)
      FLAG(1)=.NOT.F
      FLAG(2)=T.AND.T
      FLAG(3)=T.OR.F
      FLAG(4)=T.EQV.T
      FLAG(5)=T.NEQV.F
      FLAG(6)=T.AND..NOT.F.OR.F.EQV.T.NEQV.F.OR..NOT.T
      DO 10 I=1,6
        IF(FLAG(I)) THEN
          WRITE(6,*)'*** OK',I,' ***'
        ELSE
          WRITE(6,*)'??? NG',I,' ???'
        ENDIF
  10  CONTINUE
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(F,T)
      LOGICAL*1 F,T
      F=.FALSE.
      T=.TRUE.
      END
