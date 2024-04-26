module m1
type t1
INTEGER,pointer:: a(:,:),d
end type t1
end module m1
module m2
use m1
type, extends(t1) :: ty
INTEGER,pointer:: b(:)
end type ty
end module m2
program pro
use m1
use m2
type(ty),allocatable::obj
  allocate(obj)
  allocate(obj%a(2,2),obj%b(2),obj%d)
  obj%a(1,1)=17
  obj%a(1,2)=18
  obj%a(2,1)=19
  obj%a(2,2)=20
  obj%d=1
  call sub1
  if(obj%b(1).ne.2)print*,101
  if(obj%b(2).ne.6)print*,102
  print*,"pass"
contains
subroutine sub1
  use m1
  use m2
 obj%b=IPARITY(array=obj%a,dim=obj%d)
end subroutine sub1
END PROGRAM
