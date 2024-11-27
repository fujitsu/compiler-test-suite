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
call sub(NULL())
contains
subroutine sub(dum) 
TYPE(drv1), POINTER:: dum
integer :: err
allocate(dum, STAT=err)
if(err .EQ. 0) then 
print *, "SUCCESS"
dum%ii=20
else
print *, "FAILURE"
endif 
print *, dum%ii
end subroutine sub
end
