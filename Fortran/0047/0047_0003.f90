module m1
integer(2),parameter :: n(2,2)=RESHAPE([2,1,1,2],[2,2])
real(8),parameter :: x(2,2)=RESHAPE([2.0,1.8,1.4,2.2],[2,2])
real(8) :: rslt(2,2)=BESSEL_JN(n=n,x=x)
contains
subroutine sub1
implicit none
if( .not.(rslt(1,1)>0.33 .and. rslt(1,1)<0.36))  print *,101
if( .not.(rslt(2,1)>0.56 .and. rslt(2,1)<0.59))  print *,102
if( .not.(rslt(1,2)>0.53 .and. rslt(1,2)<0.56))  print *,103
if( .not.(rslt(2,2)>0.37 .and. rslt(2,2)<0.40))  print *,104
end subroutine
end module m1

program pro
use m1
implicit none
call sub1
print*,"pass"
end
