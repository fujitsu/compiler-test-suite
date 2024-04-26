      PROGRAM MAIN
      INTEGER A,B
      WRITE(6,*)'#### START ####'
      A=0
      B=10
      IF(A.EQ.0) THEN
        IF(B.EQ.0) THEN
          B=20
        ELSE
          B=30
        ENDIF
      ELSE
        B=40
      ENDIF

      IF(B.EQ.30) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
