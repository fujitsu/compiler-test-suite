module m1
  integer :: n1=2
  integer :: n2=3
  complex :: x=(1.0,1.0)
  real :: rslt(2)
end module m1
program pro
use m1
implicit none
rslt=BESSEL_YN(n1,x=x%im, n2=n2)
if( .not.(rslt(1)<-1.64 .and. rslt(1)>-1.66))  print *,101
if( .not.(rslt(2)<-5.81 .and. rslt(2)>-5.83))  print *,102
print*,"pass"
end
