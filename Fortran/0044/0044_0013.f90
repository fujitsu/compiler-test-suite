Module mod5
complex :: x = ACOSH((0.3,0.5))
real :: y = ACOSH(1.54)
contains 
Subroutine sub
 if(.not.(real(x)>0.48 .and. real(x)<0.50)) print *,101
 if(.not.(imag(x)>1.29 .and. imag(x)<1.31)) print *,102
 if(.not.(y>0.98 .and. y<1.00)) print *,103
 end Subroutine 
end Module
use mod5
call sub
 print *, "pass"
end

