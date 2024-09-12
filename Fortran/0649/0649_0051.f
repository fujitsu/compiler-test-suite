      PROGRAM MAIN
      I=1
      CALL SUB(I)
      CALL SUB2(I)
      PRINT *,'PASS'
      END
      SUBROUTINE SUB(I)
      IF (I.EQ.1) THEN
         CALL SUB2(I)
      ENDIF
      END
      SUBROUTINE SUB2(I)
      I=I+1
      CALL SUB(I)
      END
