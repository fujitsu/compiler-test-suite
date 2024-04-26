      PROGRAM MAIN
      INTEGER A
      WRITE(6,*)'#### START ####'
      A=0
      DO 10 WHILE (A.LE.100)
   10   A=A+1

      IF(A.EQ.101) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
