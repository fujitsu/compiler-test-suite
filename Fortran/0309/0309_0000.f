      PROGRAM MAIN
      CALL TEST01 (1)
      CALL TEST02 (2)
      CALL TEST03 (3)
      CALL TEST04 (4)
      CALL TEST05 (5)
      CALL TEST06 (6)
      CALL TEST07 (7)
      CALL TEST08 (8)
      CALL TEST09 (9)
      CALL TEST10 (10)
      CALL TEST11 (11)
      CALL TEST12 (12)
      END
      SUBROUTINE FOO
      END
      SUBROUTINE TEST01 (I)
      IF (I .EQ. 1) THEN
         WRITE (6,*) '###   1 - OK  ###'
      ELSE
         WRITE (6,*) '###   1 - NG  ###'
      ENDIF
      CALL FOO
      END
      SUBROUTINE TEST02 (I)
      IF (I .NE. 1) THEN
         WRITE (6,*) '###   2 - OK  ###'
      ELSE
         WRITE (6,*) '###   2 - NG  ###'
      ENDIF
      CALL FOO
      END
      SUBROUTINE TEST03 (I)
      IF (I .LT. 4) THEN
         WRITE (6,*) '###   3 - OK  ###'
      ELSE
         WRITE (6,*) '###   3 - NG  ###'
      ENDIF
      CALL FOO
      END
      SUBROUTINE TEST04 (I)
      IF (I .GE. 1) THEN
         WRITE (6,*) '###   4 - OK  ###'
      ELSE
         WRITE (6,*) '###   4 - NG  ###'
      ENDIF
      CALL FOO
      END
      SUBROUTINE TEST05 (I)
      IF (I .GT. 1) THEN
         WRITE (6,*) '###   5 - OK  ###'
      ELSE
         WRITE (6,*) '###   5 - NG  ###'
      ENDIF
      CALL FOO
      END
      SUBROUTINE TEST06 (I)
      IF (I .LE. 7) THEN
         WRITE (6,*) '###   6 - OK  ###'
      ELSE
         WRITE (6,*) '###   6 - NG  ###'
      ENDIF
      CALL FOO
      END
      SUBROUTINE TEST07 (I)
      X = FLOAT(I)
      IF (X .EQ. 7.0) THEN
         WRITE (6,*) '###   7 - OK  ###'
      ELSE
         WRITE (6,*) '###   7 - NG  ###'
      ENDIF
      CALL FOO
      END
      SUBROUTINE TEST08 (I)
      X = FLOAT(I)
      IF (X .NE. 1.0) THEN
         WRITE (6,*) '###   8 - OK  ###'
      ELSE
         WRITE (6,*) '###   8 - NG  ###'
      ENDIF
      CALL FOO
      END
      SUBROUTINE TEST09 (I)
      X = FLOAT(I)
      IF (X .LT. 11.0) THEN
         WRITE (6,*) '###   9 - OK  ###'
      ELSE
         WRITE (6,*) '###   9 - NG  ###'
      ENDIF
      CALL FOO
      END
      SUBROUTINE TEST10 (I)
      X = FLOAT(I)
      IF (X .GE. 1.0) THEN
         WRITE (6,*) '###  10 - OK  ###'
      ELSE
         WRITE (6,*) '###  10 - NG  ###'
      ENDIF
      CALL FOO
      END
      SUBROUTINE TEST11 (I)
      X = FLOAT(I)
      IF (X .GT. 1.0) THEN
         WRITE (6,*) '###  11 - OK  ###'
      ELSE
         WRITE (6,*) '###  11 - NG  ###'
      ENDIF
      CALL FOO
      END
      SUBROUTINE TEST12 (I)
      X = FLOAT(I)
      IF (X .LE. 13.0) THEN
         WRITE (6,*) '###  12 - OK  ###'
      ELSE
         WRITE (6,*) '###  12 - NG  ###'
      ENDIF
      CALL FOO
      END
