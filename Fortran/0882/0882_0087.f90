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
class(drv1),allocatable :: ptr(:)
end type

end module

program test
use m1
implicit none 
type(drv3) :: obj
allocate(drv1::obj%ptr(4))
if(allocated(obj%ptr)) then
obj%ptr(1)%ii = 10
obj%ptr(1)%jj = 11
obj%ptr(2)%ii = 12
obj%ptr(2)%jj = 20
obj%ptr(3)%ii = 21
obj%ptr(3)%jj = 22
obj%ptr(4)%ii = 24
obj%ptr(4)%jj = 25
print *, 'Memory ALLOCATION SUCCESS'
else
print *, 'Memory ALLOCATION FAILURE'
end if
call sub(obj%ptr(4))
contains
subroutine sub(dum) 
CLASS(*) :: dum
type(drv1)::obj1
IF(SAME_TYPE_AS(obj1,dum) .EQV. .FALSE.) print*,201
print*,'in subroutine'
end subroutine sub
end

