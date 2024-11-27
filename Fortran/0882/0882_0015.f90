module mod2
 
implicit none
 
type drv1
  integer::ii
  integer::jj
  class(drv1),pointer :: ptr(:)
end type
 
type,extends(drv1) :: drv2
  character(len=5)::name1
  real::r1
end type
 
end module

use mod2

class(drv2),pointer :: ptr(:)
type(drv2),target :: trgt(15)
integer::i

i=4 
trgt(1:15)%ii = 10
trgt(3)%ii = 20
ptr=>trgt
print*, ptr%ii
call sub(ptr(1:10:2),i)
contains
  subroutine sub(dum,yy)
    type(drv2):: dum(5)
    integer :: yy
    print*, dum%ii
    yy = dum(2)%ii
    print*,yy
  end subroutine sub

end
