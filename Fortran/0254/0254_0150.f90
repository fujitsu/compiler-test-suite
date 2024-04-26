module m1
  real :: arr(2)
  real :: x
contains
 function fun()
 real :: fun
 fun=NORM2(x=arr)
 end function
end module m1
program pro
use m1
implicit none
arr(1)= 3.0
arr(2)= 4.0
x=fun()
if(x.ne.5.0) print*,101
print*,"pass"
end
