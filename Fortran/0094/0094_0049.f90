program pro
implicit none
integer ::n1= 2
integer ::n2= 3
real ::x1= 1.0
real ::x2= 2.0
real :: rslt1(2),rslt2
rslt1=BESSEL_JN(n1,n2,x1)
rslt2=BESSEL_JN(n1,x2)
if( .not.(rslt1(1)>0.10 .and. rslt1(1)<0.12))  print *,101
if( .not.(rslt1(2)>0.0194 .and. rslt1(2)<0.0196))  print *,102
if(.not.(rslt2>0.34 .and. rslt2<0.36)) print*,103
print*,"pass"
end
