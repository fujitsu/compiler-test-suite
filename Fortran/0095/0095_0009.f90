module m1
  real, allocatable :: arr(:)
end module m1
program pro
use m1
implicit none
allocate(arr(4))
  arr(1)= 3.0
  arr(2)= 4.4
  arr(3)= 3.8
  arr(4)= 4.2
call sub(arr)
contains
subroutine sub(x)
  implicit none
  real :: x(2,*)
  real :: y(2,2)
  y=LOG_GAMMA(x=x(:,:2))
  if( .not.(y(1,1)>0.68 .and. y(1,1)<0.70))  print *,101
  if( .not.(y(1,2)>1.53 .and. y(1,2)<1.55))  print *,102
  if( .not.(y(2,1)>2.30 .and. y(2,1)<2.32))  print *,103
  if( .not.(y(2,2)>2.03 .and. y(2,2)<2.05))  print *,104
        print*,"pass"
end subroutine sub
end
