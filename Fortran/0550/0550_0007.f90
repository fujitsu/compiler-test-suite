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

class(drv1),allocatable ::ptr(:)
integer :: vec(5)=(/2,3,4,1,6/)
integer::k(3)

k=7
allocate(drv1::ptr(15))
ptr(1:15)%ii=10
ptr(3)%ii = 20
call sub(ptr(vec),k)
contains

  subroutine sub(dum,yy)
    use mod2
    class(*):: dum(5)
    integer :: yy(3)
    print*,yy(3)
  end subroutine

end

