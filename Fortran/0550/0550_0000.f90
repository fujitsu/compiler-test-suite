Program test 
implicit none 

type drv1
  integer ii
  integer jj
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
  class(drv1),pointer :: ptr(:)
end type

type(drv2) :: obj 
type(drv2),target :: trgt(15)
 
trgt(1:15)%ii = 10
trgt(4)%ii    = 20

obj%ptr=>trgt
print *, obj%ptr(4)%ii

call sub(obj%ptr(1:10:3))
contains
  subroutine sub(dum)
    class(*):: dum(*)
  end subroutine sub
end

