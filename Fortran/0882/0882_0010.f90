type drv1
  integer ii
  integer jj
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

class(drv1),pointer :: ptr(:,:)
type(drv2),target :: trgt(5,5)
integer::i(3)

i=4
trgt(1:5,1:5)%ii = 10
trgt(5,5)%ii = 20
ptr=>trgt
call sub(ptr(1:5:2,1:5:2),i)
contains
  subroutine sub(dum,yy)
    class(drv1):: dum(3,*)
    integer :: yy(3)
    yy=14 
    yy(1) = dum(3,3)%ii
    yy(2) = dum(1,3)%ii
    print*,yy(1)
    print*,yy(2)
    print*,yy(3)
  end subroutine sub
end
