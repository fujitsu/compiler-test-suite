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

integer :: int1

class(drv2),allocatable :: ptr
type(drv2)  :: objt

allocate(ptr)

if(allocated(ptr)) then
ptr%ii = 10
ptr%jj = 20
ptr%mm = 60
print *, 'Memory ALLOCATION SUCCESS'
else 
print *, 'Memory ALLOCATION FAILURE'
end if 

int1    = 50
objt%ii = 200
objt%jj = 100
print*, ptr%ii

call sub(ptr, int1, objt )
print*, ptr%jj

contains
subroutine sub(dum,int2 , tt) 
class(drv1):: dum
integer    :: int2
class(drv1):: tt
int2 = dum%ii
dum%jj=40
print *, int2
print *, tt%jj
end subroutine sub
end
