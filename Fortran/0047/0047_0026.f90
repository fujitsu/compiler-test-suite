module m1
integer(2),parameter :: n(2,2)=RESHAPE([2,1,1,2],[2,2])
real(8),parameter :: x(2,2)=RESHAPE([2.0,1.8,1.4,2.2],[2,2])
contains
subroutine sub1
implicit none
 real(8) :: rslt(2,2)=BESSEL_YN(n=n,x=x)
if( .not.(rslt(1,1)<-0.60 .and. rslt(1,1)>-0.62))  print *,101
if( .not.(rslt(2,1)<-0.21 .and. rslt(2,1)>-0.23))  print *,102
if( .not.(rslt(1,2)<-0.46 .and. rslt(1,2)>-0.48))  print *,103
if( .not.(rslt(2,2)<-0.50 .and. rslt(2,2)>-0.52))  print *,104
end subroutine
end module m1

program pro
use m1
implicit none
call sub1
print*,"pass"
end
