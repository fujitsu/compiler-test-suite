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
real::i(3)

i=4.7 
trgt(1:15)%ii = 10
trgt(3)%ii = 20
ptr=>trgt
call sub(ptr(1:10:2),i)
contains
  subroutine sub(dum,yy)
    class(*):: dum(:)
    real :: yy(3)
    if(sizeof(dum)== 400) print*,yy(1)
  end subroutine sub
end
