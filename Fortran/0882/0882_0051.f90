type drv1
  integer ii
  integer jj
  class(*),pointer :: ptr(:)
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

type(drv1)::obj
type(drv2),target :: trgt(15)
 
trgt(1:15)%ii = 10
trgt(3)%ii = 20
obj%ptr=>trgt
call sub(obj%ptr(1:10:2))
contains
  subroutine sub(dum)
    class(*):: dum(:)
    print*,'Upper bound is: ',UBOUND(dum)
  end subroutine sub
end
