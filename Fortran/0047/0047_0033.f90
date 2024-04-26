program pro
implicit none
integer,parameter ::n1= 2
integer,parameter ::n2= 3
real,parameter ::x1= 2.0
real,parameter ::x2= 1.0
real :: rslt(2)=BESSEL_YN(n1,n2,x1)+BESSEL_YN(n1,x2)
if( .not.(rslt(1)<-2.25 .and. rslt(1)>-2.27))  print *,101
if( .not.(rslt(2)<-2.76 .and. rslt(2)>-2.78))  print *,102
print*,"pass"
end
