Module mod5
complex :: x = ATANH((0.3,0.5))
real :: y = ATANH(0.54)
contains 
Subroutine sub
 if(.not.(real(x)>0.23 .and. real(x)<0.25)) print *,101
 if(.not.(imag(x)>0.48 .and. imag(x)<0.51)) print *,102
 if(.not.(y>0.59 .and. y<0.62)) print *,103
 end Subroutine 
end Module
use mod5
call sub
print *, "pass"
end

