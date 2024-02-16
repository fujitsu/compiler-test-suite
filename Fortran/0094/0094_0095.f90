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
integer :: n=2
 x=BESSEL_YN(n,fun())

if( .not.(x(1)<-1.64 .and. x(1)>-1.66))  print *,101
if( .not.(x(2)<-0.60 .and. x(2)>-0.62))  print *,102
print*,"pass"
end
