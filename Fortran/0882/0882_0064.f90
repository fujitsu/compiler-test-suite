module m1
type drv1
integer ii
integer jj
end type

type,extends(drv1) :: drv2
integer mm
integer nn
end type
end module

program test
use m1
implicit none 
interface
subroutine EXT_SUB(tt)
use m1
class(drv1)::tt 
end subroutine
end interface
integer :: int1
TYPE(drv2), ALLOCATABLE :: ptr

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
print*, ptr%ii

call sub(ptr, int1)
print*, ptr%jj

contains
subroutine sub(dum,int2) 
use m1
class(drv2):: dum
integer    :: int2
int2 = dum%ii
dum%jj=40
print *, int2
call EXT_SUB(dum)
end subroutine sub
end

subroutine EXT_SUB(tt)
use m1
class(drv1)::tt 
print *, " External Subroutine"
print *, tt%ii,' ',tt%jj
end subroutine 
