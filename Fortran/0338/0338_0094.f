      PROGRAM MAIN
      LOGICAL INIT
      INTEGER C1,C2
      COMMON /COM/C1,C2
      WRITE(6,*)'#### START ####'
      INIT=.TRUE.
      CALL SUB(INIT)
      CALL SUB(INIT)
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(INIT)
      INTEGER X,Y,A,B,TOTAL
      LOGICAL INIT
      COMMON /COM/X,Y
      SAVE A,B,/COM/
      IF(INIT) THEN
        A=10
        B=10
        X=10
        Y=10
        INIT=.FALSE.
      ELSE
        TOTAL=0
        TOTAL=A+B+X+Y
        IF(TOTAL.EQ.40) THEN
          WRITE(6,*)'*** OK ***'
        ELSE
          WRITE(6,*)'??? NG ???'
        ENDIF
      ENDIF
      END
