PROGRAM main
interface
subroutine sub(dd1,dd2)
PROCEDURE(sqrt),POINTER,intent(in) :: dd1
real::dd2
end subroutine
end interface
real :: res
Intrinsic :: sqrt
res = 0.0
call sub (sqrt,res)
IF(res == 3.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

subroutine sub(dmy1,dmy2)
PROCEDURE(sqrt),POINTER,intent(in) :: dmy1
REAL :: num1 = 9.0
if (.not.associated(dmy1))print*,101
dmy2 = dmy1(num1)
end subroutine
