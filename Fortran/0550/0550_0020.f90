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

program main
use m1
implicit none 
integer :: int1

CLASS(*), ALLOCATABLE :: ptr
TYPE(drv2)  :: objt

objt%ii = 10
objt%jj = 20
objt%mm = 60
objt%nn = 70
allocate(ptr, SOURCE = objt)
if(allocated(ptr)) then
print *, 'Memory ALLOCATION SUCCESS'
else
print *, 'Memory ALLOCATION FAILURE'
end if

int1    = 50

print*, objt%ii
call sub(ptr, int1, objt)
print*, objt%jj

contains
subroutine sub(dum,int2, tt) 
use m1
class(*), ALLOCATABLE:: dum
integer    :: int2
class(drv1):: tt
print *, int2
print *, tt%ii,' ',tt%jj     
end subroutine sub
end
