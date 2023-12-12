! Specification Example
! Keyword Used
program pro
implicit none
integer,parameter ::n= 2
real,parameter ::x1= 1.0
real :: rslt=BESSEL_JN(n=n,x=x1)
if(.not.(rslt>0.113 .and. rslt<0.116)) print*,101
print*,"pass"
end
