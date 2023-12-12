Module mod5
real :: y1 = BESSEL_Y0(1.0_4)
real :: y2 = BESSEL_Y0(1.0_8)
real :: y3 = BESSEL_Y0(1.0_16)
contains 
Subroutine sub
 if(.not.(y1>0.086 .and. y1<0.089)) print *,101
 if(.not.(y2>0.086 .and. y2<0.089)) print *,102
 if(.not.(y3>0.086 .and. y3<0.089)) print *,103
 end Subroutine 
end Module
use mod5
call sub
 print *, "pass"
end

