module m1

type drv1
integer :: ii= 0 
integer ::  jj= 1
end type

type,extends(drv1) :: drv2
integer :: mm = 2
integer :: nn = 3
end type

end module 

program test
use m1
implicit none 
integer :: int1

CLASS(*), ALLOCATABLE :: ptr
TYPE(drv2)  :: objt

allocate(ptr, SOURCE = objt)
if(allocated(ptr)) then
print *, 'Memory ALLOCATION SUCCESS'
else
print *, 'Memory ALLOCATION FAILURE'
end if

objt%ii = 10
objt%jj = 20
objt%mm = 60
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
select type(dum)
class default
print *, int2
print *, tt%ii,' ',tt%jj     
endselect
end subroutine sub
end
