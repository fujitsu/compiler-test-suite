module m1

type drv1
  integer::i1 = 0 
  integer::i2 =0
end type

type,extends(drv1) :: drv2
  integer::j1   =0
  real::j2      = 0.0
end type

type,extends(drv2) :: drv3
  class(drv2),allocatable :: ptr
end type

end module

program test
use m1
implicit none 

type(drv1) :: obj
obj%i1=2
obj%i2=3
call sub(obj%i1+obj%i2)
contains
subroutine sub(dum) 
  CLASS(*):: dum
  TYPE(drv2) :: var_drv2
  LOGICAL :: x
  x= SAME_TYPE_AS(dum , var_drv2)
  if(x .eqv. .false.) then
    print*,'pass'
  else
    print*,111
  endif
end subroutine sub
end
