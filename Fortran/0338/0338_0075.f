      PROGRAM MAIN
      INTEGER A
      WRITE(6,*)'#### START ####'
      A=0
      DO 20 I=1,10
        A=A+I
   10   CONTINUE
   20 CONTINUE
   30 CONTINUE
      IF(A.EQ.55) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
