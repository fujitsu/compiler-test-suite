 module m1
  real :: arr(2)
  real :: x(2)
contains
 function fun()
 real :: fun(2)
fun(1)= 10.0
fun(2)= 20.0
 end function
end module m1
program pro
use m1
implicit none
 x=ERFC_SCALED(fun())

if( .not.(x(1)>0.055 .and. x(1)<0.058))  print *,101
if( .not.(x(2)>0.027 .and. x(2)<0.029))  print *,102
print*,"pass"
end
