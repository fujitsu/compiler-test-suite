! Module, Subroutine used
Module mod5
real :: y1 = LOG_GAMMA(3.0)
real :: y2 = LOG_GAMMA(3.0_8)
real :: y3 = LOG_GAMMA(3.0_16)
contains 
Subroutine sub
 if(.not.(y1>0.68 .and. y1<0.70)) print *,101
 if(.not.(y2>0.68 .and. y2<0.70)) print *,102
 if(.not.(y3>0.68 .and. y3<0.70)) print *,103
 end Subroutine 
end Module
use mod5
call sub
 print *, "pass"
end

