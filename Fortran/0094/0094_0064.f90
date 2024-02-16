program pro
implicit none
real ::x1= 3.0
real ::x2= 4.0
real ::x3= 1.0
real :: rslt1,rslt2,rslt3
rslt1=BESSEL_Y1(x1)
rslt2=ASIN(x3)
rslt3=BESSEL_Y1(x2)
if(.not.(rslt1>0.31 .and. rslt1<0.34)) print*,101
if(.not.(rslt2>1.55 .and. rslt2<1.60)) print*,102
if(.not.(rslt3>0.37 .and. rslt3<0.40)) print*,103
print*,"pass"
end
