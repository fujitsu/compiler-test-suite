type drv1
  integer ii
  integer jj
  class(drv1),pointer :: ptr(:)
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

class(drv1),pointer :: ptr(:,:)
type(drv2),target :: trgt(10,10)
integer::i(3)

i=4 
trgt(1:5,1:5)%ii = 10
trgt(3,3)%ii = 20
ptr=>trgt
call sub(ptr(1:10:2,1:10:2),i)
contains
  subroutine sub(dum,yy)
    class(*):: dum(5,*)
    integer :: yy(3)
    select type(dum)
     class default
      print*,yy(1)
    endselect
  end subroutine sub
end

