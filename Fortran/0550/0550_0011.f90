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

type(drv2),allocatable ::ptr(:)
integer :: vec(5)=(/2,3,4,1,6/)

allocate(ptr(5))
ptr%ii=10
ptr(3)%ii = 20
call sub(ptr(vec))
contains

  subroutine sub(dum)
    use mod2
    class(*):: dum(5:9)
    print*,'Upper bound is: ',UBOUND(dum)
  end subroutine

end

