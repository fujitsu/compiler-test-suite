Module mod5
real :: y1 = BESSEL_Y1(3.0_4)
real :: y2 = BESSEL_Y1(3.0_8)
real :: y3 = BESSEL_Y1(3.0_16)
contains 
Subroutine sub
 if(.not.(y1>0.30 .and. y1<0.34)) print *,101
 if(.not.(y2>0.30 .and. y2<0.34)) print *,102
 if(.not.(y3>0.30 .and. y3<0.34)) print *,103
 end Subroutine 
end Module
use mod5
call sub
 print *, "pass"
end

