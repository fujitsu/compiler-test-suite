program pro
implicit none
integer ::n= 2
real ::x1= 1.0
real :: rslt
rslt=BESSEL_JN(n=n,x=x1)
if(.not.(rslt>0.113 .and. rslt<0.116)) print*,101
print*,"pass"
end
