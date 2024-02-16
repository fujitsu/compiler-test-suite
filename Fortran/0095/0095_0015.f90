program pro
implicit none
real ::x1= 5.0
real*8 ::x2= 5.0
real*16 ::x3= 5.0
real :: rslt1,rslt2,rslt3
rslt1=LOG_GAMMA(x=x1-(1+1))
rslt2=LOG_GAMMA(x=x2-(1+1))
rslt3=LOG_GAMMA(x=x3-(1+1))
if(.not.(rslt1>0.68 .and. rslt1<0.70)) print*,101,rslt1
if(.not.(rslt2>0.68 .and. rslt2<0.70)) print*,102,rslt2
if(.not.(rslt3>0.68 .and. rslt3<0.70)) print*,103,rslt3
        print*,"pass"
end
