program test
implicit none 
type drv1
integer ii
end type

type,extends(drv1) :: drv2
integer mm
end type

integer err
TYPE(drv2),allocatable :: ptr
allocate(ptr,STAT=err)
if (err .EQ. 0)then 
print *, "ALLOCATE SUCCESS"
ptr%ii=10
ptr%mm=20
else 
print *, "ALLOCATE FAILURE"
endif

print*, ptr%ii
call sub(ptr)
print*, ptr%mm   
contains
subroutine sub(dum) 
TYPE(drv2), allocatable:: dum
integer    :: int2
int2 = dum%ii
dum%mm=40
print *, int2
end subroutine sub
end
