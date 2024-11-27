module m1

type drv1
integer ii
integer jj
end type

type,extends(drv1) :: drv2
class(*),pointer :: ptr
integer mm
integer nn
end type
end module

program test
use m1
implicit none 
type(drv1),target :: trgt
type(drv2) :: obj
trgt%ii = 10
trgt%jj = 20
obj%ptr=>trgt
print*, trgt%ii
call sub(obj%ptr)
print*, trgt%jj
contains
subroutine sub(dum) 
CLASS(*), POINTER:: dum
if(associated(dum)) then
 print*,'associated'
else
 print*,'not associated'
endif
print*,'in subroutine'
end subroutine sub
end
