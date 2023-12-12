! Constant Used
program pro
implicit none
real,parameter :: rslt(2)=BESSEL_YN(2,3,1.0)

if( .not.(rslt(1)<-1.64 .and. rslt(1)>-1.66))  print *,101
if( .not.(rslt(2)<-5.81 .and. rslt(2)>-5.83))  print *,102
print*,"pass"
end
