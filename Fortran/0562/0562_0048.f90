module m1
type ty
integer :: ii=2
end type
end module

program main
call sub()
contains
subroutine sub()
use m1

interface operator(.xor.)
function fun1(d1,d2)
import ty
type(ty),pointer,intent(in) :: d1
integer,pointer,intent(IN) :: d2
integer :: fun1
end function
end interface

type(ty),target :: obj1
integer,target :: ii = 3
if((obj1 .xor. ii) /=5)print*,103  
print*,"Pass"
end subroutine
end

integer function fun1(d1,d2)
use m1
type(ty),pointer,intent(in) :: d1
integer,pointer,intent(IN) :: d2
if (.not.associated(d1))print*,101
if (.not.associated(d2))print*,102
fun1 = d1%ii + d2
end function
