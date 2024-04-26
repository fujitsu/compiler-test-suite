module m1
type ty
integer :: ii=2
end type
end module

call sub()
contains
subroutine sub()
use m1

interface operator(.xor.)
function fun1(d1,d2)
use m1
type(ty),intent(in) :: d1
integer,intent(IN) :: d2
integer :: fun1
end function
end interface

type(ty) :: obj1
integer :: ii = 3

block
integer :: ii = 5
if((obj1.xor.ii) /=7)print*,101  
end block

if((obj1.xor.ii) /=5)print*,102  
print*,"Pass"
end subroutine
end

integer function fun1(d1,d2)
use m1
type(ty),intent(in) :: d1
integer,intent(IN) :: d2
fun1 = d1%ii + d2
end function
