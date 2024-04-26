      PROGRAM MAIN
      INTEGER A,B
      WRITE(6,*)'#### START ####'
      A=0
      B=10
      IF(A.EQ.0) THEN
        A=A+10
        IF(A.EQ.10) THEN
          A=A+10
        ENDIF
      ENDIF
      A=A+10
      IF(A.EQ.10) THEN
        A=A+10
      ELSE IF(A.EQ.30) THEN
        A=A+10
        A=A+10
      ENDIF
      A=A+10
      IF(A.EQ.60) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
