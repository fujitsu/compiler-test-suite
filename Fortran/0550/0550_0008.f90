type drv1
  integer ii
  integer jj
  class(drv1),pointer :: ptr(:)
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

class(drv1),allocatable :: ptr(:,:)
integer::i(3)

i=4 
allocate(ptr(5,5))
ptr(1:5,1:5)%ii = 10
ptr(3,3)%ii = 20
call sub(ptr(1:5:2,1:5:2),i)
contains
  subroutine sub(dum,yy)
    class(*):: dum(3,*)
    integer :: yy(3)
    print*,yy(1)
  end subroutine sub
end

