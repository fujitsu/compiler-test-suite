module m1
type ty
integer :: ii=3
end type
end module

program main
call sub()
contains
subroutine sub()
use m1

interface operator(.ppp.)
function fun(d1,d2)
import ty
integer,pointer,intent(IN) :: d1
type(ty),pointer,intent(in) :: d2
integer :: fun
end function
end interface

type(ty),target :: obj
integer,target :: ii = 3

if((ii .ppp. obj) /= 9)print*,103
if (obj%ii /=5)print*,104
print*,"Pass"
end subroutine
end

function fun(d1,d2)
use m1
integer,pointer,intent(IN) :: d1
type(ty),pointer,intent(in) :: d2
integer :: fun
if (.not.associated(d1))print*,101
if (.not.associated(d2))print*,102
fun = d1 * d2%ii
d2%ii = 5
end function

