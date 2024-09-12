module m1
  real :: arr(2)
  real :: x(2)
contains
 function fun()
 real :: fun(2)
 fun=erfc_scaled(x=arr)
 end function
end module m1
program pro
use m1
implicit none
arr(1)= 10.0
arr(2)= 20.0
x=fun()
if( .not.(x(1)>0.054 .and. x(1)<0.058))  print *,101,x
if( .not.(x(2)>0.026 .and. x(2)<0.029))  print *,102
print*,"pass"
end
