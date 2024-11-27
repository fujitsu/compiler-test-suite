type drv1
  integer ii
  integer jj
  class(drv1),pointer :: ptr(:)
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

class(*),pointer :: ptr(:)
type(drv2),target :: trgt(15)
real::i(3)

i=7.2 
trgt(1:15)%ii = 10
trgt(3)%ii = 20
ptr=>trgt
call sub(ptr,i)
contains
  subroutine sub(dum,yy)
    class(*),POINTER:: dum(:)
    real :: yy(3)
    print*,yy(1)
    if(associated(dum)) then
     print*,'associated'
    else
     print*,'not associated'
    end if
  end subroutine sub
end

