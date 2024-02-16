program pro
implicit none
real ::x1= 3.0
real ::x2= 4.0
real :: rslt1
rslt1=BESSEL_Y1(x1)+BESSEL_Y1(x2)
if(.not.(rslt1>0.70 .and. rslt1<0.74)) print*,101
print *, "pass"
end
