      PROGRAM MAIN
      INTEGER LABEL
      WRITE(6,*)'#### START ####'
      ASSIGN 100 TO LABEL
      GO TO LABEL(100,110,120)
   10 CONTINUE
      GO TO 120
  100 WRITE(6,*)'*** LABEL 1 ***'
      CALL SUB
  110 WRITE(6,*)'*** LABEL 4 ***'
  120 WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB
      INTEGER LABEL
      ASSIGN 100 TO LABEL
      GO TO LABEL(100,110)
   10 RETURN
  100 WRITE(6,*)'*** LABEL 2 ***'
  110 WRITE(6,*)'*** LABEL 3 ***'
      END
