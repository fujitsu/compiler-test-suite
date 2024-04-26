module m1
type t1
INTEGER:: a(2,2),d
end type t1
end module m1
module m2
use m1
type, extends(t1) :: ty
INTEGER:: b(2)
end type ty
end module m2
program pro
use m1
use m2
type(ty)::obj
  obj%a(1,1)=17
  obj%a(1,2)=18
  obj%a(2,1)=19
  obj%a(2,2)=20
  obj%d=1
  call sub1
  if(obj%b(1).ne.17)print*,101
  if(obj%b(2).ne.16)print*,102
  print*,"pass"
contains
subroutine sub1
  use m1
  use m2
 obj%b=IALL(array=obj%a,dim=obj%d)
end subroutine sub1
END PROGRAM
