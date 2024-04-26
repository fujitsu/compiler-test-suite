module m1
type ty
  real :: arr(2,2)
  integer :: d
  real :: x
end type ty
type(ty):: obj
end module m1

program pro
use m1
implicit none
obj%d=1
obj%arr(1,1)= 3.0
obj%arr(1,2)= 2.0
obj%arr(2,1)= 4.0
obj%arr(2,2)= 5.0
obj%x=NORM2(NORM2(obj%arr,obj%d),(5*2)-9)
if(.not.(obj%x<=7.4 .and. obj%x>=7.2)) print*,101,obj%x
print*,"pass"
end
