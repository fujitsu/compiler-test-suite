      CALL S1
      PRINT *,'PASS'
      END
      SUBROUTINE S1
      CHARACTER*200 R,NAME*9
      NAME=' '
      OPEN (1,PAD='YES')
      WRITE(1,*) 'AA'
      REWIND 1
 1    READ(1,'(A)',END=10) R
      IX1= INDEX(R,' X12Y10 ')
      IX2= INDEX(R,' X10Y31 ')
      IX=MAX(IX1,IX2)
      IF (IX.NE.0) THEN
         IF (NAME.NE.R(IX+8:IX+8+8)) THEN
            WRITE(11,'(A)') R(IX+8: IX+8+8)
            NAME =          R(IX+8: IX+8+8)
         ENDIF
      ELSE IF (INDEX(R,'COMMON BLOCK:').NE.0 .OR.
     1         INDEX(R,'COMMON BLOCK NAME:').NE.0) THEN
         DO 11 IK=LEN(R),1,-1
            IF (R(IK:IK).NE.' ') GOTO 12
 11      CONTINUE
 12      WRITE(11,'(A)') R(:IK)
      ENDIF
      GOTO 1
 10   END
