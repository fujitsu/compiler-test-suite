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

CLASS(*), POINTER :: ptr
TYPE(drv2)  :: objt
integer :: err

ALLOCATE(drv2::ptr, STAT=err)
if(err .NE. 0) then
print*,  'Not enough storage for data; aborting...'
else 
print*,  'ALLCATED'
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
class(*), POINTER:: dum
integer    :: int2
class(drv1):: tt
print *, int2
print *, tt%ii,' ',tt%jj     
end subroutine sub
end
