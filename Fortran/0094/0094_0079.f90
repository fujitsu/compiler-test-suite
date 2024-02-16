module m1
  integer :: n(3,2)
  real :: x(3,2)
  real :: rslt(2,2)
end module m1
program pro
use m1
implicit none
n(1,1)= 1
n(1,2)= 2
n(2,1)= 1
n(2,2)= 2
n(3,1)= 2.5
n(3,2)= 1.2
x(1,1)= 1.4
x(1,2)= 2.0
x(2,1)= 1.8
x(2,2)= 2.2
x(3,1)= 2.5
x(3,2)= 1.2
rslt=BESSEL_YN(n(1*1:1+1,1:3-1),x(1:3-1,3-2:2*1))
if( .not.(rslt(1,1)<-0.46 .and. rslt(1,1)>-0.48))  print *,101
if( .not.(rslt(2,1)<-0.21 .and. rslt(2,1)>-0.23))  print *,102
if( .not.(rslt(1,2)<-0.60 .and. rslt(1,2)>-0.62))  print *,103
if( .not.(rslt(2,2)<-0.50 .and. rslt(2,2)>-0.52))  print *,104
print*,"pass"
end
