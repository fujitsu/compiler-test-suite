        Module mod2
complex,parameter :: xx1 = (3.0,5.0)

real :: rslt1=HYPOT(xx1%re,4.0)
contains 
Subroutine sub
if(.not.(rslt1>4.99 .and. rslt1<5.01)) print *,101
end Subroutine 
end Module
use mod2
call sub
 print *, "pass"
end
