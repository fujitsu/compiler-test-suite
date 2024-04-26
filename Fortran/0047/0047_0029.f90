program pro
implicit none
block
INTRINSIC::BESSEL_YN
integer,parameter ::n1= 1
integer,parameter  ::n2= 3
real,parameter  ::x1= 4.0
real  :: rslt(2)=BESSEL_YN(n1=3-n1,n2=1*1*n2,x=x1-(2+1))
if( .not.(rslt(1)<-1.64 .and. rslt(1)>-1.66))  print *,101
if( .not.(rslt(2)<-5.81 .and. rslt(2)>-5.83))  print *,102
print*,"pass"
end block
end
