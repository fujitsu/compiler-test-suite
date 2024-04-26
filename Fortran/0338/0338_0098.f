      PROGRAM MAIN
      LOGICAL*1 T1,F1,A(3)
      LOGICAL*4 T2,F2,B(3)
      WRITE(6,*)'#### START ####'
      T1=.TRUE.
      T2=.TRUE.
      F1=.FALSE.
      F2=.FALSE.
      A(1)=T1.AND.T2.EQV.(F1.EQV.F2)
      A(2)=T1.AND.T2.AND..NOT.F1.AND..NOT.F2
      A(3)=T2.OR.F1.AND..NOT.(T1.NEQV.F2)
      B(1)=A(1).EQV.A(2).AND..TRUE..OR..NOT.A(1).NEQV..FALSE..EQV..TRUE.
      B(2)=(B(1).OR.F2).AND.T1.AND.((A(1).EQV.A(2).EQV.A(3)).EQV.T1)
      B(3)=A(1).AND.A(2).AND.A(3).AND.B(1).AND.B(2)
      IF(B(3)) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
