module m1
  real(kind=16) :: arr(3,2)
  real(kind=16) :: x(2,2)
end module m1
program pro
use m1
implicit none
arr(1,1)= 3.4
arr(1,2)= 5.0
arr(2,1)= 3.8
arr(2,2)= 4.2
arr(3,1)= 2.5
arr(3,2)= 3.2
x=LOG_GAMMA(arr(1*1:1+1,1:3-1))
if( .not.(x(1,1)>1.08 .and. x(1,1)<1.10))  print *,101
if( .not.(x(2,1)>1.53 .and. x(2,1)<1.55))  print *,102
if( .not.(x(1,2)>3.16 .and. x(1,2)<3.18))  print *,103
if( .not.(x(2,2)>2.03 .and. x(2,2)<2.05))  print *,104
print*,"pass"
end
