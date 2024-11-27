type drv1
  integer ii
  integer jj
  class(drv1),pointer :: ptr(:)
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

class(drv1),pointer :: ptr(:)
type(drv2),target :: trgt(15)
integer::i(3)
 
trgt(1:15)%ii = 10
trgt(3)%ii = 20
ptr=>trgt
call sub(ptr(1:10:2),i)
contains
  subroutine sub(dum,yy)
    class(drv1):: dum(:)
    integer :: yy(3)
    yy=10
    yy(1) = dum(1)%ii
    yy(2) = dum(2)%ii
    print*,yy(1)
    print*,yy(2)
    print*,yy(3)
  end subroutine sub
end

