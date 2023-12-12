! Specification Example
! Keyword Used
program pro
implicit none
real,parameter ::x1= 3.0
real,parameter ::y1= 4.0
real, parameter :: rslt=HYPOT(x1,y1)
if(.not.(rslt>4.99 .and. rslt<5.01)) print *,101

        print*,"pass"
end
