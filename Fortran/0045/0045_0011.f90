        module m
 real:: rslt1(2)  =HYPOT((/5.4, 3.5/),(/2.0,5.0/))
contains
subroutine sub
 if(.not.(rslt1(1)>5.74 .and. rslt1(1)<5.76)) print *,101
 if(.not.(rslt1(2)>6.09 .and. rslt1(2)<6.11)) print *,102
 print*,"pass"
end subroutine
end module
program pro
use m
call sub
end
