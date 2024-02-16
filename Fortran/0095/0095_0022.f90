 module m1
  real :: arr(2)
  real :: x(2)
contains
 function fun()
 real :: fun(2)
fun(1)= 3.0
fun(2)= 4.0
 end function
end module m1
program pro
use m1
implicit none
 x=LOG_GAMMA(fun())
if( .not.(x(1)>0.68 .and. x(1)<0.70))  print *,101
if( .not.(x(2)>1.78 .and. x(2)<1.80))  print *,102
print*,"pass"
end
