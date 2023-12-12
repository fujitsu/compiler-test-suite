Module mod5
complex :: x = ASINH((0.3,0.5))
real :: y = ASINH(0.54)
contains 
Subroutine sub
 if(.not.(real(x)>0.32 .and. real(x)<0.34)) print *,101
 if(.not.(imag(x)>0.48 .and. imag(x)<0.51)) print *,102
 if(.not.(y>0.50 .and. y<0.52)) print *,104
 end Subroutine 
end Module
use mod5
call sub
 print *, "pass"
end

