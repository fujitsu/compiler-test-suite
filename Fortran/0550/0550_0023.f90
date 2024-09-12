module m1
type drv1
integer ii
integer jj
end type

type, extends(drv1) :: drv2
integer mm
integer nn
end type
end module

program main
use m1
implicit none 
interface aa
function fun1()
use m1
TYPE(drv2), POINTER :: fun1
end function 
end interface 

call sub(fun(fun1()))

contains

subroutine sub(dum) 
use m1
class(*):: dum
end subroutine sub

function fun(dum)
use m1
TYPE(drv2),  POINTER :: dum
CLASS(drv2), ALLOCATABLE :: fun
allocate(fun)
if(allocated(fun)) then
fun%ii = 10
fun%jj = 20
fun%mm = 60
print *, 'Memory ALLOCATION SUCCESS'
else
print *, 'Memory ALLOCATION FAILURE'
end if
print *, fun%jj
print *, dum %ii
end function fun

end

function fun1()
use m1
TYPE(drv2), POINTER :: fun1
TYPE(drv2), target, save :: tgt
tgt%ii = 10
tgt%jj = 20
tgt%mm = 60
fun1=>tgt
print*, fun1%ii
end function 
