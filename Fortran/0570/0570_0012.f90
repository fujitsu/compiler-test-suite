Module mod5
real :: y1 = ERFC_SCALED(10.0)
real :: y2 = ERFC_SCALED(10.0_8)
real :: y3 = ERFC_SCALED(10.0_16)
contains 
Subroutine sub
 if(.not.(y1>0.054 .and. y1<0.058)) print *,101
 if(.not.(y2>0.054 .and. y2<0.058)) print *,102
 if(.not.(y3>0.054 .and. y3<0.058)) print *,103
 end Subroutine 
end Module
use mod5
call sub
 print *, "pass"
end

