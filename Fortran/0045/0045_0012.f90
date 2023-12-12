! Array Element as argument
module m
real*16, parameter :: x1(2)= (/5.4, 3.5/)
        
real*16, parameter :: y1(2)= (/2.0,5.0/)
        
 real:: rslt1  = HYPOT(x=x1(1),y=y1(2))
contains
subroutine sub
 if(.not.(rslt1>7.34 .and. rslt1<7.36)) print *,101
 print*,"pass"
end subroutine
end module
program pro
use m
call sub
end
