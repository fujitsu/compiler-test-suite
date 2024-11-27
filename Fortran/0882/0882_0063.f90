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

TYPE(drv2), POINTER :: ptr
TYPE(drv2), TARGET  :: tgt

tgt%ii = 10
tgt%jj = 20
tgt%mm = 60
ptr =>tgt

int1    = 50

print*, ptr%ii
call sub(ptr, int1)
print*, ptr%jj  

contains
subroutine sub(dum,int2) 
use m1
class(drv1):: dum
integer    :: int2
int2 = dum%ii
dum%jj=40
print *, int2
print *, dum%jj
call ext_sub(dum)

end subroutine sub
end

subroutine ext_sub(tt)
use m1
TYPE(drv1):: tt

print *, "EXT SUBROUTINE"
print *, tt
end subroutine
