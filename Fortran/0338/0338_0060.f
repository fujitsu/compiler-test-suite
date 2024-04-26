      PROGRAM MAIN
      LOGICAL*1 RES
      REAL A,B
      CHARACTER CH
      WRITE(6,*)'#### START ####'
      CALL SUB(A,B,CH)
      RES=.FALSE..OR.A+B.GT.10*2.AND.CH.EQ.'C'.EQV..TRUE.
      IF(RES) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(A,B,CH)
      REAL A,B
      CHARACTER CH
      A=50.5
      B=100.25
      CH='C'
      END
