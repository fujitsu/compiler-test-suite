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
integer::i
 
allocate(ptr(15))
ptr(1:15)%ii = 10
ptr(3)%ii = 20
call sub(ptr(1:10:2),i)
contains
  subroutine sub(dum,yy)
    class(drv1):: dum(5)
    integer :: yy
    yy = dum(2)%ii
    print*,yy
  end subroutine sub
end

