! Specification Example
! Keyword Used
program pro
implicit none
integer,parameter ::n= 2
real,parameter ::x1= 1.0
real :: rslt=BESSEL_YN(n=n,x=x1)
if(.not.(rslt<-1.64 .and. rslt>-1.66)) print*,101
print*,"pass"
end
