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
integer :: int1

TYPE(drv2), ALLOCATABLE :: ptr
TYPE(drv2)  :: objt

allocate(ptr)
if(allocated(ptr)) then
ptr%ii = 10
ptr%jj = 20
ptr%mm = 60
ptr%nn = 40
print *, 'Memory ALLOCATION SUCCESS'
else
print *, 'Memory ALLOCATION FAILURE'
end if

int1    = 50
objt = ptr 

print*, objt%ii
call sub(ptr, int1, objt)
print*, objt%jj  

contains
subroutine sub(dum,int2, tt) 
use m1
class(*):: dum
integer    :: int2
class(drv2):: tt
select type(dum)
class default
print *, int2
print *, tt%ii,' ',tt%jj     
endselect

call ext_sub(tt)
end subroutine sub
end

subroutine ext_sub(dum1)
use m1
TYPE(drv2):: dum1
print *, "EXTERNAL SUBROUTINE"
print *, dum1
end subroutine
