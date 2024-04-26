module m1
type t1
LOGICAL :: a(2,2)
INTEGER :: d
end type t1
end module m1
module m2
use m1
type, extends(t1) :: ty
LOGICAL :: b(2)
end type ty
end module m2
program pro
use m1
use m2
type(ty)::obj
  obj%a(1,1)= .TRUE.
  obj%a(1,2)= .TRUE.
  obj%a(2,1)= .TRUE.
  obj%a(2,2)= .TRUE.
  obj%d=1
  call sub1
  if(obj%b(1).neqv. .FALSE.)print*,101
  if(obj%b(2).neqv. .FALSE.)print*,102
  print*,"pass"
contains
subroutine sub1
  use m1
  use m2
 obj%b=parity(mask=obj%a,dim=obj%d)
end subroutine sub1
END PROGRAM
