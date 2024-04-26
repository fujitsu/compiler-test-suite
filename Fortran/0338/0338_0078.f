      PROGRAM MAIN
      CHARACTER*4 ARR(2)
      LOGICAL FLAG
      WRITE(6,*)'#### START ####'
      ARR(2)='ABCD'
      CALL SUB1
      CALL SUB2('AB'//'CD',ARR)

      FLAG=ARR(1).EQ.'ABCD'
      FLAG=ARR(1).EQ.ARR(2)
      IF(FLAG) THEN
        WRITE(6,*)'*** OK2 ***'
      ELSE
        WRITE(6,*)'??? NG2 ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB1
      WRITE(6,*)'*** OK1 ***'
      END

      SUBROUTINE SUB2(X,Y)
      CHARACTER*4 X,Y(2)
      Y(1)=X
      END
