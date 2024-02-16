program pro
implicit none
real ::x1= 3.0
real ::x2= 4.0
real :: rslt1
rslt1=LOG_GAMMA(x1)+LOG_GAMMA(x2)
if(.not.(rslt1>2.47 .and. rslt1<2.49)) print*,101,rslt1
print*,"pass"
end
