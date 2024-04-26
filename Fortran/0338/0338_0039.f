      PROGRAM MAIN
      INTEGER A,B,ADD,SUB,MUL,DIV,EXP,RES
      DATA A,B/+10,-2/
      WRITE(6,*)'#### START ####'
      B=-B
      ADD=A+B
      SUB=A-B
      MUL=A*B
      DIV=A/B
      EXP=A**B
      RES=ADD+SUB+MUL+DIV+EXP
      IF(RES.EQ.145) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
