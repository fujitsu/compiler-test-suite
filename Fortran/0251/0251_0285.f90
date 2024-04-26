module m1
type ty
integer :: ii=3
end type
end module

call sub()

contains
subroutine sub()
use m1

interface operator(.ppp.)
function fun(d1,d2)
use m1
type(ty),intent(in) :: d1
integer,intent(IN) :: d2
integer :: fun
end function
end interface
type(ty) :: obj1
integer :: ii = 3

block
integer :: ii = 6
if((obj1.ppp.ii) /= 18)print*,101
end block
if((obj1.ppp.ii) /= 9)print*,102
print*,"Pass"
end subroutine
end

function fun(d1,d2)
use m1
type(ty),intent(in) :: d1
integer,intent(IN) :: d2
integer :: fun
fun = d1%ii * d2
end function

