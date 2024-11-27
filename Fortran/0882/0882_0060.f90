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

class(drv1),pointer :: ptr
type(drv2),target   :: trgt
type(drv2)  :: objt

int1    = 50
trgt%ii = 10
trgt%jj = 20
trgt%mm = 60

objt%ii = 200
objt%jj = 100

ptr=>trgt
print*, ptr%ii

call sub(ptr, int1, objt )

print*, ptr%jj
contains

subroutine sub(dum,int2 , tt) 
class(drv1), pointer:: dum
integer    :: int2
class(drv1):: tt

int2 = dum%ii
dum%jj=40
print *, int2
print *, tt%jj
end subroutine sub
end
