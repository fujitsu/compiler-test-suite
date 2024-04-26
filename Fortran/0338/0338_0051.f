      PROGRAM MAIN
      LOGICAL*1 FLAG(8)
      REAL*4 A
      REAL*8 B
      COMPLEX*8 C
      COMPLEX*16 D
      INTEGER E
      WRITE(6,*)'#### START ####'
      CALL SUB(A,B,C,D,E)
      FLAG(1)=E.LT.A
      FLAG(2)=A.LE.B
      FLAG(3)=A.NE.D
      FLAG(4)=C.EQ.D-(0.125,0.25)
      FLAG(5)=C.NE.D
      FLAG(6)=B.GT.B-A
      FLAG(7)=B.GE.A
      FLAG(8)=99.9.LT.E
      DO 10 I=1,8
        IF(FLAG(I)) THEN
          WRITE(6,*)'*** OK',I,' ***'
        ELSE
          WRITE(6,*)'??? NG',I,' ???'
        ENDIF
  10  CONTINUE
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(A,B,C,D,E)
      REAL*4 A
      REAL*8 B
      COMPLEX*8 C
      COMPLEX*16 D
      INTEGER E
      A=100.125
      B=100.625
      C=(100.0,10)
      D=(100.125,10.25)
      E=100
      END
