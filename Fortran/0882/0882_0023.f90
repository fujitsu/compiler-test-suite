type drv1
  integer ii
  integer jj
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

class(drv1),pointer :: ptr(:,:,:)
type(drv2),target :: trgt(3,4,6)
integer::i(3,4,6)
 
trgt(1:3,1:4,1:6)%ii = 10
trgt(3,3,3)%ii = 20
ptr=>trgt
call sub(ptr,i)
contains
  subroutine sub(dum,yy)
    class(drv1):: dum(3,4,*)
    integer :: yy(3,4,6)
    yy=100
    yy(1,1,1) = dum(3,1,6)%ii
    yy(2,3,5) = dum(3,3,3)%ii
    print*,yy(1,2,1)
    print*,yy(1,1,1)
    print*,yy(2,3,5)
  end subroutine sub
end

