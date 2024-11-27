type drv1
  integer ii
  integer jj
  class(drv1),pointer :: ptr(:)
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

class(drv1),allocatable :: ptr(:)
real::i(3)
 
i=4
allocate(drv2::ptr(15))
ptr(1:15)%ii = 10
ptr(3)%ii = 20
call sub(ptr(1:10:2),i)
contains
  subroutine sub(dum,yy)
    class(*):: dum(:)
    real :: yy(3)
    select type(dum)
    class default
     print*,yy(1)
    endselect
  end subroutine sub
end

