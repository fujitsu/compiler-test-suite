program pro
implicit none
real ::x1= 1.0
real ::x2= 2.0
real :: rslt1
rslt1=BESSEL_Y0(x1)+BESSEL_Y0(x2)
if(.not.(rslt1>0.57 .and. rslt1<0.61)) print*,101
print*,"pass"
end
