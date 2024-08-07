MODULE M
IMPLICIT NONE

TYPE T
 REAL(2)::RR2
 COMPLEX(2)::CC2
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
      WRITE(UNIT,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%RR2+1,DTV%CC2+1
     END SUBROUTINE UNFMTWRITE


     SUBROUTINE UNFMTREAD(DTV, UNIT, IOSTAT, IOMSG)
         CLASS (T), INTENT(INOUT)  :: DTV
         INTEGER,                  INTENT(IN)     :: UNIT
         INTEGER,                  INTENT(OUT)    :: IOSTAT
         CHARACTER (LEN=*),        INTENT(INOUT)  :: IOMSG
      READ (UNIT=UNIT, IOSTAT=IOSTAT, IOMSG=IOMSG) DTV%RR2,DTV%CC2
       DTV%RR2= DTV%RR2+1
       DTV%CC2= DTV%CC2+1

     END SUBROUTINE UNFMTREAD
END MODULE M



PROGRAM MAIN
USE M

IMPLICIT NONE
INTEGER::I
TYPE(T),POINTER::OBJW(:),OBJR(:)
ALLOCATE(OBJW(1),OBJR(1))

OBJW%RR2=1.5_2
OBJW%CC2=(3.5_2,4.5_2)

 OPEN (UNIT=71, FILE='FORT.81', FORM='UNFORMATTED')
     WRITE(UNIT=71)(OBJW,I=1,3)
  
     CLOSE (UNIT=71)


 OPEN (UNIT=77, FILE='FORT.81', FORM='UNFORMATTED')
     READ(UNIT=77)(OBJR,I=1,3)
     CLOSE (UNIT=77,STATUS='DELETE')
  IF(OBJR(1)%RR2 /= 1.5_2+2 ) PRINT*,"101"
  IF(OBJR(1)%CC2 /= (5.5_2,4.5_2) ) PRINT*,"102"
  PRINT*,"PASS"

END PROGRAM


