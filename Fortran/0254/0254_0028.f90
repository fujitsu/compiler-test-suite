module m1
type t1
INTEGER(kind=8),allocatable:: a(:,:),d
logical,allocatable:: msk(:,:)
end type t1
end module m1
module m2
use m1
type, extends(t1) :: ty
INTEGER(kind=8),allocatable:: b(:)
end type ty
end module m2
program pro
use m1
use m2
implicit none
type(ty)::obj
  call sub2
  obj%a(1,1)=17
  obj%a(1,2)=18
  obj%a(2,1)=19
  obj%a(2,2)=20
  obj%msk(1,1)=.false.
  obj%msk(1,2)=.false.
  obj%msk(2,1)=.true.
  obj%msk(2,2)=.true.
  obj%d=1
  call sub1
  if(obj%b(1).ne.19)print*,101
  if(obj%b(2).ne.20)print*,102
  print*,"pass"
contains
subroutine sub1
  use m1
  use m2
  implicit none
 obj%b=IALL(array=obj%a,dim=obj%d,mask=obj%msk)
end subroutine sub1
subroutine sub2
  use m1
  use m2
  allocate(obj%a(2,2),obj%b(2),obj%d,obj%msk(2,2))
end subroutine sub2
END PROGRAM
