MODULE mod1
INTEGER :: num1,num2
INTERFACE gnr
  MODULE PROCEDURE qsub
END INTERFACE

CONTAINS
SUBROUTINE qsub(dd1,dd2)
  INTEGER :: dd1,dd2
  dd1 = dd1 * 2
  dd2 = dd2 * 3
END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
num1 = 5
num2 = 7
call sub(qsub)
IF(num1 .EQ. 10 .AND. num2 .EQ. 21) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
contains
subroutine sub(dmy)
procedure(qsub),pointer,intent(in)::dmy
if (.not.associated(dmy))print*,100
call dmy(num1,num2)
end subroutine
END PROGRAM
