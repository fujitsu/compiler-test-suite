program pro
implicit none
real ::x1= 1.0
real ::x2= 2.0
real :: rslt1,rslt2,rslt3
rslt1=BESSEL_Y0(x1)
rslt2=ASIN(x1)
rslt3=BESSEL_Y0(x2)
if(.not.(rslt1>0.086 .and. rslt1<0.089)) print*,101
if(.not.(rslt2>1.55 .and. rslt2<1.60)) print*,102
if(.not.(rslt3>0.50 .and. rslt3<0.53)) print*,103
print*,"pass"
end
