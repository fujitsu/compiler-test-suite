program pro
implicit none
integer,parameter ::n1= 2
integer,parameter ::n2= 3
real,parameter ::x1= 1.0
real,parameter ::x2= 2.0
real :: rslt1(2)=BESSEL_YN(n1,n2,x1)
real :: rslt2=ASIN(x1)
real :: rslt3(2)=BESSEL_YN(n1,n2,x2)
if( .not.(rslt1(1)<-1.64 .and. rslt1(1)>-1.66))  print *,101
if( .not.(rslt1(2)<-5.81 .and. rslt1(2)>-5.83))  print *,102
if(.not.(rslt2>1.55 .and. rslt2<1.60)) print*,103
if( .not.(rslt3(1)<-0.60 .and. rslt3(1)>-0.62))  print *,104
if( .not.(rslt3(2)<-1.11 .and. rslt3(2)>-1.13))  print *,105
print*,"pass"
end
