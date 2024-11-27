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
class(*),allocatable :: ptr
end type

end module

program test
use m1
implicit none 
type(drv3) :: obj
allocate(drv3::obj%ptr)
if(allocated(obj%ptr)) then
print *, 'Memory ALLOCATION SUCCESS'
else
print *, 'Memory ALLOCATION FAILURE'
end if
call sub(obj%ptr)
contains
subroutine sub(dum) 
CLASS(*), ALLOCATABLE:: dum
if(allocated(dum)) then
 print*,'allocated'
else
 print*,'not allocated'
endif
print*,'in subroutine'
end subroutine sub
end

