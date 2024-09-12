MODULE M
IMPLICIT NONE

TYPE T
INTEGER::A=22
CONTAINS
  PROCEDURE::FMTWRITE
GENERIC::write(formatted)=>FMTWRITE
END TYPE T

type,extends(T)::tty
  integer::aa
end type
INTEGER::AT=1
CONTAINS
SUBROUTINE FMTWRITE (DTV, UNIT, IOTYPE, V_LIST, IOSTAT,IOMSG)
    CLASS(T), INTENT(IN)            :: DTV
    INTEGER, INTENT(IN)            :: UNIT
    CHARACTER(LEN=*), INTENT(IN)    :: IOTYPE
    INTEGER, INTENT(IN)             :: V_LIST (:)
    INTEGER, INTENT(OUT)            :: IOSTAT
    CHARACTER(LEN=*), INTENT(INOUT) :: IOMSG
        select type(DTV)
         class is(tty)
    IF(SIZE(V_LIST)/=0) THEN
        WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) V_LIST(1),V_LIST(2),DTV%A+1,IOTYPE
      ELSE
           AT= DTV%aa + 5
        WRITE (UNIT=UNIT,*, IOSTAT=IOSTAT, IOMSG=IOMSG) DTV%A+1
      END IF  
       end select
END SUBROUTINE FMTWRITE

END MODULE M



PROGRAM MAIN
USE M

IMPLICIT NONE
type(tty)::obj
obj%aa = 20
open(44,file='fort.45',form='formatted')
write(44,*)obj
close(44,status='delete')
if(AT/=25)print*,'101',AT
print*,'pass'
END

