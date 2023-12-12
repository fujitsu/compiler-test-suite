module m
 real:: y(2)  =BESSEL_Y0((/1.4,2.2/))
contains
subroutine sub
if( .not.(y(1)>0.32 .and. y(1)<0.34))  print *,101
if( .not.(y(2)>0.51 .and. y(2)<0.54))  print *,102
print*,"pass"
end subroutine
end module
program pro
use m
call sub
end
