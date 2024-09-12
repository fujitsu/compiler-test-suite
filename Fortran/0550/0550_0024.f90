module m1

type drv1
integer ii
integer jj
end type

type,extends(drv1) :: drv2
class(drv1),pointer :: ptr
integer mm
integer nn
end type
end module

program main
use m1
implicit none 
type(drv1),target :: trgt
type(drv2) :: obj
trgt%ii = 10
trgt%jj = 20
obj%ptr=>trgt
print*, obj%ptr%ii
call sub(obj%ptr)
print*, obj%ptr%jj  
contains
subroutine sub(dum) 
CLASS(*):: dum
print*,'In subroutine'
end subroutine sub
end
