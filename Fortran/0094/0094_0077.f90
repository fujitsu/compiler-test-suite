module m1
integer(2) :: n(2,2)
real(8) :: x(2,2)
real(8) :: rslt(2,2)
contains
subroutine sub1
implicit none
 rslt=BESSEL_YN(n=n,x=x)
end subroutine
end module m1

program pro
use m1
implicit none
 n(1,1)= 2
 n(1,2)= 1
 n(2,1)= 1
 n(2,2)= 2
 x(1,1)= 2.0
 x(1,2)= 1.4
 x(2,1)= 1.8
 x(2,2)= 2.2
call sub1
if( .not.(rslt(1,1)<-0.60 .and. rslt(1,1)>-0.62))  print *,101
if( .not.(rslt(2,1)<-0.21 .and. rslt(2,1)>-0.23))  print *,102
if( .not.(rslt(1,2)<-0.46 .and. rslt(1,2)>-0.48))  print *,103
if( .not.(rslt(2,2)<-0.50 .and. rslt(2,2)>-0.52))  print *,104
print*,"pass"
end
