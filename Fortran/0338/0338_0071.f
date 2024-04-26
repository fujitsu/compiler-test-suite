      PROGRAM MAIN
      INTEGER A
      WRITE(6,*)'#### START ####'
      A=0
      IF(A.NE.0) THEN
        A=10
      ELSE IF(A.EQ.0) THEN
        A=20
      ELSE IF(A.EQ.20) THEN
        A=30
      ENDIF

      IF(.FALSE.) THEN
      ELSE IF(A.EQ.20) THEN
        WRITE(6,*)'*** OK ***'
      ELSE IF(A.NE.20) THEN
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
