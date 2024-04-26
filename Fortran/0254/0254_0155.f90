program pro
implicit none
integer, allocatable :: x
allocate(x)
x=2
call sub(x)
contains
subroutine sub(x)
  implicit none
  integer :: x
  real :: arr(x,x)
  integer :: d(x)
  real :: rslt(2)

  d=1
  arr(1,1)= 3.0
  arr(1,2)= 2.0
  arr(2,1)= 4.0
  arr(2,2)= 5.0
  rslt=NORM2(x=arr,dim=d(2))
  if(.not.(rslt(1)>=4.9 .and. rslt(1)<=5.1)) print*,101
  if(.not.(rslt(2)>=5.2 .and. rslt(2)<=5.4)) print*,102
  print*,"pass"
end subroutine sub
end
