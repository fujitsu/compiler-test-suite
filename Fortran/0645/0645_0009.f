      PROGRAM MAIN
      EXTERNAL BLOCK1
      COMMON /COM1/A,B
      CALL SUB()
      PRINT *,' *** PASS *** '
      STOP
      END
      SUBROUTINE SUB()
      COMMON /COM1/A,B

      IF (A.EQ.1.0 .AND. B.EQ.2.0) THEN
       PRINT *,' *** TEST ITEM 1 : OK *** '
      ELSE
       PRINT *,' +++ TEST ITEM 1 : NG +++ '
      ENDIF
      RETURN
      END
      BLOCK DATA BLOCK1
      COMMON /COM1/A,B
      DATA A/1./B/2./
      END
