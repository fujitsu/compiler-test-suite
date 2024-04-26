module m1
type t1
LOGICAL,allocatable:: a(:,:)
end type t1
end module m1
module m2
use m1
type, extends(t1) :: t2
LOGICAL,allocatable:: b
end type t2

type :: ty
type(t2)::obj
end type ty
end module m2

program pro
use m1
use m2
implicit none
type(ty)::o
  allocate(o%obj%a(2,2),o%obj%b)
  o%obj%a(1,1)=.TRUE.
  o%obj%a(1,2)=.FALSE.
  o%obj%a(2,1)=.TRUE.
  o%obj%a(2,2)=.TRUE.
  o%obj%b=fun1()
  if(o%obj%b.neqv. .TRUE.)print*,101
  print*,"pass"
contains
function fun1()
  use m1
  use m2
  implicit none
  LOGICAL :: fun1
  fun1=PARITY(mask=o%obj%a)
end function fun1
END PROGRAM
