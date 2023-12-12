Module mod5
real :: y1 = BESSEL_J0(1.0_4)
real :: y2 = BESSEL_J0(1.0_8)
real :: y3 = BESSEL_J0(1.0_16)
contains 
Subroutine sub
 if(.not.(y1>0.75 .and. y1<0.78)) print *,101
 if(.not.(y2>0.75 .and. y2<0.78)) print *,102
 if(.not.(y3>0.75 .and. y3<0.78)) print *,103
 end Subroutine 
end Module
use mod5
call sub
 print *, "pass"
end

