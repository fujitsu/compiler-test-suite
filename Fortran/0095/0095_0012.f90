module m1
  class(*), allocatable :: arr(:,:)
  real :: x(2,2)
end module m1
program pro
use m1
implicit none
allocate(real(kind=8) :: arr(2,2))
select type(arr)
type is (real(kind=8))
  arr(1,1)= 3.0
  arr(1,2)= 4.4
  arr(2,1)= 3.8
  arr(2,2)= 4.2
x=LOG_GAMMA(x=arr)
class default
print*,105
end select
if( .not.(x(1,1)>0.68 .and. x(1,1)<0.70))  print *,101
if( .not.(x(2,1)>1.53 .and. x(2,1)<1.55))  print *,102
if( .not.(x(1,2)>2.30 .and. x(1,2)<2.32))  print *,103
if( .not.(x(2,2)>2.03 .and. x(2,2)<2.05))  print *,104
print*,"pass"
end
