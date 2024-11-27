type drv1
  integer ii
  integer jj
  class(drv1),pointer :: ptr(:)
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

type(drv1),allocatable :: ptr(:,:)
integer::i(3)

allocate(ptr(10,10)) 
ptr(1:10,1:10)%ii = 10
ptr(3,3)%ii = 20
call sub(ptr(1:10:2,1:10:2),i)
contains
  subroutine sub(dum,yy)
    class(drv1):: dum(5,*)
    integer :: yy(3)
    yy(1) = dum(2,2)%ii
    print*,yy(1)
  end subroutine sub
end

