      PROGRAM MAIN
      INTEGER COUNT
      INTEGER LB1
      WRITE(6,*)'#### START ####'
      COUNT=0
  100 CONTINUE
      IF(COUNT.EQ.0) THEN
        ASSIGN 200 TO LB1
      ELSE
        ASSIGN 300 TO LB1
      ENDIF
      GOTO LB1
    1 GOTO 999
  200 COUNT=COUNT+1
      WRITE(6,*)'*** OK1 ***'
      ASSIGN 100 TO LB2
      GOTO LB2
  999 WRITE(6,*)'??? NG2 ???'
      WRITE(6,*)'####  END  ####'
      STOP
  300 WRITE(6,*)'*** OK2 ***'
      WRITE(6,*)'####  END  ####'
      STOP
      END
