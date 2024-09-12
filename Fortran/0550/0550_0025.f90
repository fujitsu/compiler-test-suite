module m1

type drv1
integer ii
integer jj
end type

type,extends(drv1) :: drv2
integer mm
integer nn
end type

type,extends(drv2) :: drv3
class(drv2),allocatable :: ptr
end type

end module

program main
use m1
implicit none 
type(drv3) :: obj
allocate(obj%ptr)
if(allocated(obj%ptr)) then
obj%ptr%ii = 10
obj%ptr%jj = 20
obj%ptr%mm = 60
print *, 'Memory ALLOCATION SUCCESS'
else
print *, 'Memory ALLOCATION FAILURE'
end if
print*, obj%ptr%ii
call sub(obj%ptr)
print*, obj%ptr%jj
contains
subroutine sub(dum) 
CLASS(*):: dum
print*,'In subroutine'
end subroutine sub
end
