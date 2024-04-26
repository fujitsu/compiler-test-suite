module m1
  real, allocatable :: arr(:,:)
  integer, allocatable :: d(:)
end module m1
program pro
use m1
implicit none
allocate(arr(2,2),d(2))
d=1

arr(1,1)= 3.0
arr(1,2)= 2.0
arr(2,1)= 4.0
arr(2,2)= 5.0
call sub(arr,d)
contains
subroutine sub(x,dim)
  real, allocatable :: x(:,:)
  integer, allocatable :: dim(:)
  real :: rslt(2)
  rslt=NORM2(x=x,dim=dim(2))
  if(.not.(rslt(1)>=4.9 .and. rslt(1)<=5.1)) print*,101
  if(.not.(rslt(2)>=5.2 .and. rslt(2)<=5.4)) print*,102
  print*,"pass"
end subroutine sub
end
