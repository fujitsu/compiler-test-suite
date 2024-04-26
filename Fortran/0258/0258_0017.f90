module m1
type t1
LOGICAL,pointer:: a(:,:)
INTEGER,POINTER :: d
end type t1
end module m1
module m2
use m1
type, extends(t1) :: ty
LOGICAL,pointer:: b(:)
end type ty
end module m2

program pro
use m1
use m2
implicit none
type(ty),allocatable::obj
allocate(obj)
  allocate(obj%a(2,2),obj%b(2),obj%d)
  obj%a(1,1) = .TRUE.
  obj%a(1,2) = .FALSE.
  obj%a(2,1) = .TRUE.
  obj%a(2,2) = .FALSE.
  obj%d=1
  obj%b=fun1()
  if(obj%b(1).neqv. .TRUE.)print*,101
  if(obj%b(2).neqv. .FALSE.)print*,102
  print*,"pass"
contains
function fun1()
  use m1
  use m2
  implicit none
  logical, dimension(2) :: fun1
  fun1=PARITY(mask=obj%a(2:2,1:2),dim=obj%d)
end function fun1
END PROGRAM
