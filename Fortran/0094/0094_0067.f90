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
 x=BESSEL_Y1(fun())

if( .not.(x(1)>0.30 .and. x(1)<0.34))  print *,101
if( .not.(x(2)>0.37 .and. x(2)<0.40))  print *,102
print*,"pass"
end
