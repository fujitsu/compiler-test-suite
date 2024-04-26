program pro
implicit none
interface
  subroutine sub(arr,d)
    real :: arr(2,2)
    integer :: d
  end subroutine sub
end interface
real, allocatable :: arr1(:,:)
integer, allocatable :: d1
allocate(arr1(2,2),d1)
d1=1
arr1(1,1)= 3.0
arr1(1,2)= 2.0
arr1(2,1)= 4.0
arr1(2,2)= 5.0
call sub(arr1,d1)
end

subroutine sub(arr,d)
  implicit none
  real :: arr(2,2)
  integer :: d
  real :: rslt(2)

  rslt=NORM2(x=arr,dim=d)
  if(.not.(rslt(1)>=4.9 .and. rslt(1)<=5.1)) print*,101
  if(.not.(rslt(2)>=5.2 .and. rslt(2)<=5.4)) print*,102
  print*,"pass"
end subroutine sub
