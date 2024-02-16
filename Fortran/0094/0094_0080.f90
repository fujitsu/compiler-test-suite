program pro
implicit none
real :: rslt(4)
rslt=BESSEL_YN((/2,3,2,3/),(/1.4,2.0,1.8,2.2/))
if( .not.(rslt(1)<-1.01 .and. rslt(1)>-1.03))  print *,101
if( .not.(rslt(2)<-1.11 .and. rslt(2)>-1.13))  print *,102
if( .not.(rslt(3)<-0.71 .and. rslt(3)>-0.73))  print *,103
if( .not.(rslt(4)<-0.93 .and. rslt(4)>-0.95))  print *,104
print*,"pass"
end
