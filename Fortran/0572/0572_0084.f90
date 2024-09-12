program pro
implicit none
real ::xx1= 1.0
real ::x1= 10.0
real ::x2= 20.0
real :: rslt1,rslt2,rslt3
rslt1=ERFC_SCALED(x1)
rslt2=ASIN(xx1)
rslt3=ERFC_SCALED(x2)
if(.not.(rslt1>0.055 .and. rslt1<0.058)) print*,101
if(.not.(rslt2>1.55 .and. rslt2<1.60)) print*,102
if(.not.(rslt3>0.027 .and. rslt3<0.029)) print*,103
print*,"pass"
end
