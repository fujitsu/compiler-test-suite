program pro
implicit none
real ::xx1= 1.0
real ::x1= 3.0
real ::x2= 4.0
real :: rslt1,rslt2,rslt3
rslt1=LOG_GAMMA(x1)
rslt2=ASIN(xx1)
rslt3=LOG_GAMMA(x2)
        if(.not.(rslt1>0.68 .and. rslt1<0.70))  print *,101
        if(.not.(rslt2>1.55 .and. rslt2<1.60))  print *,102
        if(.not.(rslt3>1.78 .and. rslt3<1.80))  print *,103
print*,"pass"
end
