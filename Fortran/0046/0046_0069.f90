module m
 real:: y(2)  =BESSEL_Y1((/3.0,4.0/))
contains
subroutine sub
if( .not.(y(1)>0.30 .and. y(1)<0.34))  print *,101
if( .not.(y(2)>0.37 .and. y(2)<0.41))  print *,102
print*,"pass"
end subroutine
end module
program pro
use m
call sub
end
