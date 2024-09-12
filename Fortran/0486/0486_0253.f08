 module m1
  real :: arr(2)
  real :: x(2)
contains
 function fun()
 real :: fun(2)
fun(1)= 1.0
fun(2)= 2.0
 end function
end module m1
program main
use m1
implicit none
 x=BESSEL_J0(fun())

if( .not.(x(1)>0.70 .and. x(1)<0.80))  print *,101
if( .not.(x(2)>0.20 .and. x(2)<0.25))  print *,102
print*,"pass"
end
