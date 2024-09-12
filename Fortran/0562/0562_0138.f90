MODULE mod1
CHARACTER(LEN = 3) :: ch1,ch2
CONTAINS
SUBROUTINE qsub(dd1,dd2)
  CHARACTER(LEN = 3) :: dd1,dd2
  dd1 = "abc" 
  dd2 = "xyz"
END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
INTERFACE gnr
  MODULE PROCEDURE :: qsub
END INTERFACE

call sub(qsub)
IF(ch1 .EQ. "abc" .AND. ch2 .EQ. "xyz") THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
contains
subroutine sub(dmy)
procedure(qsub),pointer,intent(in)::dmy
if (.not.associated(dmy))print*,100
CALL dmy(ch1,ch2)
end subroutine
END PROGRAM


