type drv1
  integer ii
  integer jj
  class(drv1),pointer :: ptr(:)
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

type(drv1),pointer :: ptr(:,:)
type(drv1),target :: trgt(20,20)
integer::i(3)
 
trgt(1:20,1:20)%ii = 10
trgt(5,5)%ii = 20
ptr=>trgt
call sub(ptr(1:20:4,1:20:4),i)
contains
  subroutine sub(dum,yy)
    class(drv1):: dum(5,*)
    integer :: yy(3)
    yy(1) = dum(2,2)%ii
    print*,yy(1)
  end subroutine sub
end

