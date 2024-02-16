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
rslt=BESSEL_JN(n(1*1:1+1,1:3-1),x(1:3-1,3-2:2*1))
if( .not.(rslt(1,1)>0.53 .and. rslt(1,1)<0.55))  print *,101
if( .not.(rslt(2,1)>0.57 .and. rslt(2,1)<0.59))  print *,102
if( .not.(rslt(1,2)>0.34 .and. rslt(1,2)<0.36))  print *,103
if( .not.(rslt(2,2)>0.38 .and. rslt(2,2)<0.40))  print *,104
print*,"pass"
end
