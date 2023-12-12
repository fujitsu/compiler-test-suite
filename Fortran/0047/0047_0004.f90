! 1D Array 
! Array Constructor Used
program pro
implicit none
real :: rslt(4)=BESSEL_JN((/2,3,2,3/),(/1.4,2.0,1.8,2.2/))
if( .not.(rslt(1)>0.19 .and. rslt(1)<0.21))  print *,101
if( .not.(rslt(2)>0.11 .and. rslt(2)<0.13))  print *,102
if( .not.(rslt(3)>0.29 .and. rslt(3)<0.31))  print *,103
if( .not.(rslt(4)>0.15 .and. rslt(4)<0.17))  print *,104
print*,"pass"
end
