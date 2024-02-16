program pro
implicit none
block
INTRINSIC:: BESSEL_JN
integer ::n1= 1
integer ::n2= 3
real ::x1= 4.0
real :: rslt(2)
rslt=BESSEL_JN(n1=3-n1,n2=1*1*n2,x=x1-(2+1))
if( .not.(rslt(1)>0.10 .and. rslt(1)<0.12))  print *,101
if( .not.(rslt(2)>0.0194 .and. rslt(2)<0.0196))  print *,102
print*,"pass"
end block
end
