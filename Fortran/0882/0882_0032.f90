module m1

type drv1
integer ii
integer jj
end type

type,extends(drv1)   :: drv2
class(drv1), allocatable :: ptr(:)
integer mm
integer nn
end type
end module

program test
use m1
implicit none 
integer :: err
type(drv2) :: obj

allocate(obj%ptr(5), STAT=err)
if (err == 0) then 
obj%ptr(1:5)%ii = 10
obj%ptr(2)%ii = 55
print *, "ALLOCATE OK"
else 
print *, "ALLOCATE FAILURE"
endif

print*, obj%ptr(2)%ii
call sub(obj%ptr)
print*, obj%ptr(3)%ii

contains
subroutine sub(dum)
CLASS(drv1),allocatable:: dum(:)
integer    :: int2
int2 = dum(2)%ii
print *, int2        
print *, dum(3)%ii 
end subroutine sub
end
