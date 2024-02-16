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
program pro
use m1
implicit none
 x=BESSEL_Y0(fun())

if( .not.(x(1)>0.086 .and. x(1)<0.089))  print *,101
if( .not.(x(2)>0.50 .and. x(2)<0.54))  print *,102
print*,"pass"
end
