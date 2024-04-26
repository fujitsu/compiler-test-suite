      PROGRAM MAIN
      INTEGER CASE,A
      LOGICAL FLAG
      WRITE(6,*)'#### START ####'
      CASE=2
      A=0
  100 IF(A.EQ.0) THEN
        IF(CASE.LT.0.OR.CASE.GT.3) THEN
          FLAG=.FALSE.
        ELSE IF(CASE.EQ.1) THEN
          FLAG=.FALSE.
        ELSE IF(CASE.EQ.2) THEN
          A=10
          FLAG=.FALSE.
          IF(A.EQ.10) THEN
            FLAG=.TRUE.
          ENDIF
        ELSE IF(CASE.EQ.3) THEN
          FLAG=.FALSE.
        ENDIF
      ELSE
        FLAG=.FALSE.
      ENDIF

      IF(FLAG) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
