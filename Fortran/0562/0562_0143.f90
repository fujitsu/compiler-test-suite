MODULE mod2
INTEGER :: num1 = 5,num2 = 3,res
END MODULE

PROGRAM main
USE mod2
intrinsic :: mod
call sub (mod)
IF(res .EQ. 2) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
contains
subroutine sub(dmy)
PROCEDURE(mod),POINTER,intent(in) :: dmy
if (.not.associated(dmy))print*,101
res = dmy(num1,num2)
end subroutine
END PROGRAM
