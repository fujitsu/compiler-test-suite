module m1
  real, allocatable :: arr(:)
end module m1
program pro
use m1
implicit none
allocate(arr(4))

arr(1)= 3.0
arr(2)= 2.0
arr(3)= 4.0
arr(4)= 5.0
call sub(arr)
contains
subroutine sub(x)
  implicit none
  real :: x(2,*)
  real :: rslt
  rslt=NORM2(x=x(:,:2))
  if(.not.(rslt>=7.2 .and. rslt<=7.4)) print*,101
  print*,"pass"
end subroutine sub
end
