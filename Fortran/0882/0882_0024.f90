Program main
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

allocate(ptr(10)) 
ptr(1:10)%ii = 10
ptr(2)%ii = 20

call sub(ptr,i)
contains
  subroutine sub(dum,yy)
    class(drv1),allocatable:: dum(:)
    integer :: yy(3)
    yy(1) = dum(2)%ii
    print*,yy(1)
  end subroutine sub
end

