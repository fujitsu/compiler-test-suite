      PROGRAM MAIN
      WRITE(6,*)'#### START ####'
      CALL SUB
      STOP '(??? NG ???) #### END ####'
      END

      SUBROUTINE SUB
      DO 10 I=1,10
        IF(I.EQ.1) STOP '(*** OK ***) #### END ####',quiet=.true.
        STOP '(??? NG ???) #### END ####'
   10 CONTINUE
      END
