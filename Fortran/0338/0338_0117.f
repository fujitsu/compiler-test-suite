      PROGRAM MAIN
      CHARACTER*72 FILE(3)
      WRITE(6,*)'#### START ####'
      CALL CLEAR(FILE)
      CALL SET(FILE)
      CALL CHECK(FILE)
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE CLEAR(TEXT)
      CHARACTER*72 TEXT(3)
      DO 10 I=1,3
        DO 10 J=1,72
   10     TEXT(I)(J:J)=' '
      END

      SUBROUTINE SET(TEXT)
      CHARACTER*72 TEXT(3)
      REAL*4 A
      CHARACTER HEX*6
      PARAMETER (HEX='100.25')
      A=100.25
      TEXT(1)=HEX
      WRITE(TEXT(2),'(2F6.2,A6)') A,A,'100.25'
      WRITE(TEXT(3),'(A24)') '100.25100.25100.25100.25'
      END

      SUBROUTINE CHECK(TEXT)
      CHARACTER*72 TEXT(3)
      INTEGER COUNT
      REAL A(8)
      READ(TEXT(1),'(F6.2)') A(1)
      READ(TEXT(2),'(3F6.2)') A(2),A(3),A(4)
      READ(TEXT(3),'(4F6.2)') A(5),A(6),A(7),A(8)
      COUNT=0
      DO 10 I=1,8
   10   IF(A(I).EQ.100.25) COUNT=COUNT+1
      IF(COUNT.EQ.8) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      END







