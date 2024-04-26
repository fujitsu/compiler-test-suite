Module mod3
real*8,parameter :: xx1 = 3.0

real*8,parameter :: yy1 = 4.0

contains
Subroutine sub
real :: rslt1=HYPOT(xx1,y=yy1)

 if(.not.(rslt1>4.99 .and. rslt1<5.01)) print *,101
        end Subroutine
 end Module 

 use mod3
 call sub
 print *, "pass"
end
