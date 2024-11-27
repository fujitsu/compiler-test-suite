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

class(drv1),pointer :: ptr
type(drv2),target   :: trgt

trgt%ii = 10
trgt%jj = 20
trgt%mm = 60

ptr=>trgt
print*, ptr%ii
call sub(ptr)
print*, ptr%jj
contains

subroutine sub(dum) 
type(drv1):: dum
integer    :: int2
int2 = dum%ii
dum%jj=40
print *, int2
print *,dum%jj
end subroutine sub
end
