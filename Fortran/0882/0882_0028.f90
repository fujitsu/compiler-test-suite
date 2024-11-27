module m1

type drv1
integer ii
integer jj
end type

type,extends(drv1) :: drv2
class(drv1),allocatable :: ptr(:)
integer mm
integer nn
end type
end module

program test
use m1
implicit none 
integer :: err
type(drv2) :: obj
integer :: vec(3)=(/2,3,1/)

allocate(obj%ptr(5), STAT=err)
if (err == 0) then 
print *, "ALLOCATE OK"
obj%ptr(1)%ii = 10
obj%ptr(1)%jj = 20
obj%ptr(2)%ii = 30
obj%ptr(2)%jj = 40
obj%ptr(3)%ii = 50
obj%ptr(3)%jj = 60
obj%ptr(4)%ii = 70
obj%ptr(4)%jj = 80
obj%ptr(5)%ii = 90
obj%ptr(5)%jj = 100
else 
print *, "ALLOCATE FAILURE"
endif

print*, obj%ptr(2)%ii
call sub(obj%ptr(vec))
print*, obj%ptr(3)%jj

contains
subroutine sub(dum)
CLASS(drv1):: dum(3)
integer    :: int2
int2 = dum(1)%ii
print *, int2
print *,dum(2)%jj
end subroutine sub
end
