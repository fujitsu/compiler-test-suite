program pro
implicit none
real ::x1= 10.0
real ::x2= 20.0
real :: rslt1
rslt1=ERFC_SCALED(x1)+ERFC_SCALED(x2)
if(.not.(rslt1>0.083 .and. rslt1<0.086)) print*,101,rslt1
print*,"pass"
end
