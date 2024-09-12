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
integer :: err
type(drv2) :: obj

allocate(obj%ptr(3), STAT=err)
if (err == 0) then 
obj%ptr%ii = 10
obj%ptr(1)%ii = 20
endif

call sub(obj%ptr(1))
contains
subroutine sub(dum)
  TYPE(drv1)    :: dum
  if(dum%ii /=20) then
    print*,111
  else
    print*,'pass'
  endif
end subroutine sub
end

