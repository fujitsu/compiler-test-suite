program pro
implicit none
intrinsic:: LOG_GAMMA
real ::x1= 3.0
real*8 ::x2= 3.0
real*16 ::x3= 3.0
real :: rslt1,rslt2,rslt3
rslt1=LOG_GAMMA(x1)
rslt2=LOG_GAMMA(x2)
rslt3=LOG_GAMMA(x3)
if(.not.(rslt1>0.68 .and. rslt1<0.70)) print*,101
if(.not.(rslt2>0.68 .and. rslt2<0.70)) print*,102
if(.not.(rslt3>0.68 .and. rslt3<0.70)) print*,103
print*,"pass"
end
