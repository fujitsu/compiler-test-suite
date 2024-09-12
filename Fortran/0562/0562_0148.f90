PROGRAM main
interface
subroutine sub(dd1,dd2)
PROCEDURE(SINH),POINTER,intent(in) :: dd1
real::dd2
end subroutine
end interface

Intrinsic :: SINH
real :: res
call sub (SINH,res)
IF(res .EQ. 1.17520118) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR",res
END IF
END PROGRAM

subroutine sub(dmy1,dmy2)
PROCEDURE(SINH),POINTER,intent(in) :: dmy1
REAL :: num1 = 1.0
real::dmy2
if (.not.associated(dmy1))print*,101
dmy2 = dmy1(num1)
end subroutine
