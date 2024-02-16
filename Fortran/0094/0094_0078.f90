module m1
  integer :: n(2)
  real :: x(2)
  real :: rslt(2)
contains
 function fun()
 real :: fun(2)
 fun=BESSEL_YN(n=n,x=x)
 end function
end module m1
program pro
use m1
implicit none
n(1)= 1
n(2)= 2
x(1)= 3.0
x(2)= 2.0
rslt=fun()
if( .not.(rslt(1)>0.31 .and. rslt(1)<0.33))  print *,101
if( .not.(rslt(2)<-0.60 .and. rslt(2)>-0.62))  print *,102
print*,"pass"
end
