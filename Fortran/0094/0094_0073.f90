program pro
implicit none
integer ::n= 2
real ::x1= 1.0
real :: rslt
rslt=BESSEL_YN(n=n,x=x1)
if(.not.(rslt<-1.64 .and. rslt>-1.66)) print*,101
print*,"pass"
end
