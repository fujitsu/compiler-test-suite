MODULE M
IMPLICIT NONE

TYPE T
 INTEGER::A
 CONTAINS
  PROCEDURE::UNFMTWRITE
  PROCEDURE::UNFMTREAD
  GENERIC::WRITE(UNFORMATTED)=>UNFMTWRITE
  GENERIC::READ(UNFORMATTED)=>UNFMTREAD
END TYPE T

CONTAINS
     SUBROUTINE UNFMTWRITE (DTV, UNIT, IOSTAT, IOMSG)
         CLASS (T), INTENT(IN)    :: DTV
         INTEGER,                  INTENT(IN)    :: UNIT
         INTEGER,                  INTENT(OUT)   :: IOSTAT
         CHARACTER(LEN=*),         INTENT(INOUT) :: IOMSG

        WRITE (UNIT=UNIT, IOSTAT=IOSTAT, IOMSG=IOMSG) DTV%A+1
     END SUBROUTINE UNFMTWRITE

     SUBROUTINE UNFMTREAD(DTV, UNIT, IOSTAT, IOMSG)
         CLASS (T), INTENT(INOUT)  :: DTV
         INTEGER,                  INTENT(IN)     :: UNIT
         INTEGER,                  INTENT(OUT)    :: IOSTAT
         CHARACTER (LEN=*),        INTENT(INOUT)  :: IOMSG

        READ (UNIT=UNIT, IOSTAT=IOSTAT, IOMSG=IOMSG) DTV%A
        DTV%A=DTV%A+1
     END SUBROUTINE UNFMTREAD
END MODULE M

PROGRAM MAIN
USE M 

IMPLICIT NONE
INTEGER::C=7,D=9
TYPE(T)::OBJR

 OPEN (UNIT=71, FILE='fort.8', FORM='UNFORMATTED')
     WRITE(UNIT=71)C,T(2),D

     CLOSE (UNIT=71)

 OPEN (UNIT=77, FILE='fort.8', FORM='UNFORMATTED')
   READ (UNIT=77)C,OBJR,D
     CLOSE (UNIT=77,status='delete')

IF( OBJR%A.EQ. 4)THEN
 PRINT*,'PASS'
ELSE
 PRINT*,'ERROR'
END IF

END PROGRAM
