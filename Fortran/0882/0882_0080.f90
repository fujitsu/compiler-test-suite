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

print*, tgt%ii
call sub(ptr, int1)
print*, tgt%jj  

contains
subroutine sub(dum,int2) 
use m1
class(*):: dum
integer    :: int2
select type(dum)
class default
print *, int2
endselect
end subroutine sub
end
