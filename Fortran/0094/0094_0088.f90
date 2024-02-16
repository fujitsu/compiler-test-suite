program pro
implicit none
block
INTRINSIC::BESSEL_YN
integer ::n1= 1
integer ::n2= 3
real ::x1= 4.0
real :: rslt(2)
rslt=BESSEL_YN(n1=3-n1,n2=1*1*n2,x=x1-(2+1))
if( .not.(rslt(1)<-1.64 .and. rslt(1)>-1.66))  print *,101
if( .not.(rslt(2)<-5.81 .and. rslt(2)>-5.83))  print *,102
print*,"pass"
end block
end
