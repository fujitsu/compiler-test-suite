module m
 real:: y(2)  =ERFC_SCALED((/10.0,20.0/))
contains
subroutine sub
if( .not.(y(1)>0.054 .and. y(1)<0.058))  print *,101
if( .not.(y(2)>0.026 .and. y(2)<0.029))  print *,102
print*,"pass"
end subroutine
end module
program pro
use m
call sub
end
