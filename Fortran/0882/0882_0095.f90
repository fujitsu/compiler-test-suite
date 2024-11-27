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
call sub(NULL(ptr))
contains
subroutine sub(dum) 
TYPE(drv1), POINTER:: dum
if(associated(dum)) then
  print*,'already associated...'
else
  dum=>trgt
  print*, dum%ii
endif
end subroutine sub
end
