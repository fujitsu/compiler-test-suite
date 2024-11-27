module m1

type drv1
integer ii
integer jj
end type

type,extends(drv1) :: drv2
class(drv1),pointer :: ptr(:)
integer mm
integer nn
end type
end module

program test
use m1
implicit none 
type(drv1),target :: trgt(5)
type(drv2) :: obj

trgt(1)%ii = 10
trgt(1)%jj = 20
trgt(2)%ii = 30
trgt(2)%jj = 40
trgt(3)%ii = 50
trgt(3)%jj = 60
trgt(4)%ii = 70
trgt(4)%jj = 80
trgt(5)%ii = 90
trgt(5)%jj = 100
obj%ptr=>trgt

print*, obj%ptr(1)%ii
call sub(obj%ptr(1:5:3))
print*, obj%ptr(4)%jj

contains
subroutine sub(dum)
CLASS(drv1):: dum(2)
integer    :: int2
int2 = dum(1)%ii
print *,'s', int2
print *,'s',dum(2)%jj
end subroutine sub
end
