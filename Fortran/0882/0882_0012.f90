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
integer::i(3)
 
allocate(ptr(20))
ptr(1:10)%ii = 10
ptr(4)%ii = 20
call sub(ptr(1:10:3),i)
contains
  subroutine sub(dum,yy)
    class(drv1):: dum(:)
    integer :: yy(2)
    yy(1) = dum(2)%ii
    yy(2) = dum(1)%ii
    print*,yy(1)
    print*,yy(2)
  end subroutine sub
end

