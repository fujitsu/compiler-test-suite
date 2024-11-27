program test
implicit none 
type drv1
integer ii
integer jj
end type

type,extends(drv1) :: drv2
integer mm
integer nn
end type

class(drv2), ALLOCATABLE:: ptr
allocate(ptr)
if(allocated(ptr)) then
ptr%ii = 10
ptr%jj = 20
ptr%mm = 60
print *, "Memory ALLOCATION SUCCESS"
else
print *, "Memory ALLOCATION FAILURE"
end if

print*, ptr%ii
call sub(ptr)
print*, ptr%jj
contains

subroutine sub(dum) 
type(drv2):: dum
integer    :: int2
int2 = dum%ii
dum%jj=40
print *, int2
print *,dum%jj
end subroutine sub
end
