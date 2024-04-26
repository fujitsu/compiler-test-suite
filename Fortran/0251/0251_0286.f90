module m1
type ty
integer :: ii=10
end type
end module

call sub()

contains
subroutine sub()
use m1
block
character(LEN=*),parameter::ch = 'BLOCK'
interface operator(.eor.)
function fun(d1,d2)
use m1
character(LEN=*),intent(IN) :: d1
type(ty),intent(in) :: d2
integer :: fun
end function
end interface
type(ty) :: obj1
  block
  if (('abc'.eor.obj1) /= 30)print*,101 
  end block
if ((ch.eor.obj1) /= 50)print*,102 
end block
print*,"Pass"
end subroutine
end

integer function fun(d1,d2)
use m1
character(LEN=*),intent(IN) :: d1
type(ty),intent(in) :: d2
fun = len(d1) * d2%ii 
end function

