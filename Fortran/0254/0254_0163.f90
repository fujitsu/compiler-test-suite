module m1
type t1
REAL,allocatable:: a(:,:)
INTEGER,allocatable:: d
end type t1
end module m1
module m2
use m1
type, extends(t1) :: ty
REAL,allocatable:: b(:)
end type ty
type(ty)::obj
end module m2

program pro
use m1
use m2
implicit none
interface
  function fun1()
  REAL, dimension(2) :: fun1
  end function fun1
end interface

  allocate(obj%a(2,2),obj%b(2),obj%d)
  obj%a(1,1)=3.0
  obj%a(1,2)=2.0
  obj%a(2,1)=4.0
  obj%a(2,2)=5.0
  obj%d=1
  obj%b=fun1()
  if(.not.(obj%b(1)<=5.1 .and. obj%b(1)>=4.9)) print*,101
  if(.not.(obj%b(2)<=5.4 .and. obj%b(2)>=5.2)) print*,102
  print*,"pass"
END PROGRAM
function fun1()
  use m1
  use m2
  implicit none
  REAL, dimension(2) :: fun1
  fun1=NORM2(x=obj%a(1:2,1:2),dim=obj%d)
end function fun1
