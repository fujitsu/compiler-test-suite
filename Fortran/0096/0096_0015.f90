! Module, Subroutine used
! constant passed
module m
 real:: y(2)  =LOG_GAMMA((/3.0,4.0/))
contains
subroutine sub
if( .not.(y(1)>0.68 .and. y(1)<0.70))  print *,101
if( .not.(y(2)>1.78 .and. y(2)<1.80))  print *,102
print*,"pass"
end subroutine
end module
program pro
use m
call sub
end
