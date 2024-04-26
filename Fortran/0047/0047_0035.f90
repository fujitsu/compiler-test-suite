module m1
  integer,parameter :: n1=2
  integer,parameter :: n2=3
  complex,parameter :: x=(1.0,1.0)
end module m1
program pro
use m1
implicit none
  real :: rslt(2)=BESSEL_YN(n1,x=x%im, n2=n2)
if( .not.(rslt(1)<-1.64 .and. rslt(1)>-1.66))  print *,101
if( .not.(rslt(2)<-5.81 .and. rslt(2)>-5.83))  print *,102
print*,"pass"
end
