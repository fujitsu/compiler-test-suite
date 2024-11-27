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

type(drv2),target :: trgt(15)
class(drv1),pointer ::ptr(:)
integer :: vec(5)=(/2,3,4,1,6/)
integer::k(3)

trgt(1:15)%ii=10
trgt(3)%ii = 20
ptr=>trgt
call sub(ptr(vec),k)
contains

  subroutine sub(dum,yy)
    use mod2
    class(drv1):: dum(5)
    integer :: yy(3)
    type(drv1) :: aa(5)

    yy(3) = dum(2)%ii
    print*,yy(3)
    aa = dum
    print*,dum(2)%ii
    print*,aa(2)%ii
  end subroutine

end

