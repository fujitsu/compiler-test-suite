module m1
  complex :: arr(2,2)
  real :: x(2,2)
end module m1
program pro
use m1
implicit none
arr(1,1)= (1.0,3.0)
arr(1,2)= (2.0,4.4)
arr(2,1)= (2.0,3.8)
arr(2,2)= (1.4,4.2)
x=LOG_GAMMA(arr%im)
if( .not.(x(1,1)>0.68 .and. x(1,1)<0.70))  print *,101
if( .not.(x(2,1)>1.53 .and. x(2,1)<1.55))  print *,102
if( .not.(x(1,2)>2.30 .and. x(1,2)<2.32))  print *,103
if( .not.(x(2,2)>2.03 .and. x(2,2)<2.05))  print *,104
        print*,"pass"
end
