program test
implicit none 
type drv1
integer ii
end type

type,extends(drv1) :: drv2
integer mm
end type

TYPE(drv1),pointer :: ptr
TYPE(drv1),target   :: trgt

trgt%ii = 10
ptr=>trgt

print*, ptr%ii
call sub(ptr)
contains
subroutine sub(dum) 
TYPE(drv1), POINTER:: dum
integer    :: int2
int2 = dum%ii
dum%ii=40
print *, int2
print *, dum%ii
end subroutine sub
end
