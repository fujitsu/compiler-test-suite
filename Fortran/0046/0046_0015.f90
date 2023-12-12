module m
 real:: y(2)  =BESSEL_J0((/1.4,2.2/))
contains
subroutine sub
if( .not.(y(1)>0.54 .and. y(1)<0.58))  print *,101
if( .not.(y(2)>0.09 .and. y(2)<0.12))  print *,102
print*,"pass"
end subroutine
end module
program pro
use m
call sub
end
