module m1
type t1
INTEGER,allocatable:: a(:,:),d
end type t1
end module m1
module m2
use m1
type, extends(t1) :: ty
INTEGER,allocatable:: b(:)
end type ty
end module m2

program pro
use m1
use m2
implicit none
type(ty)::obj
  allocate(obj%a(2,2),obj%b(2),obj%d)
  obj%a(1,1)=17
  obj%a(1,2)=18
  obj%a(2,1)=19
  obj%a(2,2)=20
  obj%d=1
  obj%b=fun1()
  if(obj%b(1).ne.19)print*,101
  if(obj%b(2).ne.20)print*,102
  print*,"pass"
contains
function fun1()
  use m1
  use m2
  implicit none
  integer, dimension(2) :: fun1
  fun1=IPARITY(array=obj%a(obj%d+1:obj%d+1,obj%d:obj%d+1),dim=obj%d)
end function fun1
END PROGRAM
