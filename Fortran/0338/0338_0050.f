      PROGRAM MAIN
      LOGICAL*1 FLAG(6)
      INTEGER A,B,C
      WRITE(6,*)'#### START ####'
      CALL SUB(A,B,C)
      FLAG(1)=A.LT.B
      FLAG(2)=A.LE.C
      FLAG(3)=A.EQ.A
      FLAG(4)=A.NE.B
      FLAG(5)=B.GT.A
      FLAG(6)=A.GE.C
      DO 10 I=1,6
        IF(FLAG(I)) THEN
          WRITE(6,*)'*** OK',I,' ***'
        ELSE
          WRITE(6,*)'??? NG',I,' ???'
        ENDIF
  10  CONTINUE
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(A,B,C)
      INTEGER A,B,C
      A=100
      B=200
      C=100
      END
