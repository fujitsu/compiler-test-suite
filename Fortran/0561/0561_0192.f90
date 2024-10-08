MODULE M
IMPLICIT NONE

TYPE T
 INTEGER::A=4
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
INTEGER::I
TYPE(T),POINTER::OBJW(:),OBJR(:)
TYPE(T),TARGET::OBJW11(2),OBJ22(2)
        OBJW=>OBJW11
        OBJR=>OBJ22


 OPEN (UNIT=71, FILE='fort.81', FORM='UNFORMATTED')
     WRITE(UNIT=71)(OBJW,I=1,3)
  
     CLOSE (UNIT=71)


 OPEN (UNIT=77, FILE='fort.81', FORM='UNFORMATTED')
     READ(UNIT=77)(OBJR,I=1,3)
     CLOSE (UNIT=77,status='delete')


IF( OBJR(1)%A.EQ.6)THEN
 PRINT*,'PASS'
ELSE
 PRINT*,'ERROR'
END IF
 
END PROGRAM


