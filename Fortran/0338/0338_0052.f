      PROGRAM MAIN
      LOGICAL*1 FLAG(8)
      CHARACTER*1 A,B
      CHARACTER*2 C,D
      CHARACTER*3 E,F
      WRITE(6,*)'#### START ####'
      A='A'
      B='B'
      C='A2'
      D='B1'
      E='<12>'
      F='<34>'
      FLAG(1)=A.LT.B
      FLAG(2)=C.LE.D
      FLAG(3)=D.EQ.'B1'
      FLAG(4)=A.NE.C
      FLAG(5)=C.GT.A
      FLAG(6)=D.GE.A
      FLAG(7)=E.LT.F
      FLAG(8)=A.GT.F
      DO 10 I=1,8
        IF(FLAG(I)) THEN
          WRITE(6,*)'*** OK',I,' ***'
        ELSE
          WRITE(6,*)'??? NG',I,' ???'
        ENDIF
  10  CONTINUE
      WRITE(6,*)'####  END  ####'
      END
