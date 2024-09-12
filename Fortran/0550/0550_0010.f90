type drv1
  integer ii
  integer jj
  class(drv1),pointer :: ptr(:)
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

type(drv2),pointer :: ptr(:,:)
type(drv2),target :: trgt(3,4)
integer::i(3)

i=4 
trgt%ii = 10
trgt(3,3)%ii = 20
ptr=>trgt
call sub(ptr(1:3,1:4),i)
contains
  subroutine sub(dum,yy)
    class(*):: dum(3,*)
    integer :: yy(3)
    print*,yy(1)
  end subroutine sub
end

