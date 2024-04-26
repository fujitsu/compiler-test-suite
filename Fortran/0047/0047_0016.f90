program pro
implicit none
integer,parameter  ::n1= 2
integer,parameter  ::n2= 3
real,parameter  ::x1= 1.0
real,parameter  ::x2= 2.0
real :: rslt1=BESSEL_JN(n1,x2)
real :: rslt2(2)=BESSEL_JN(n1,n2,x1)
if(.not.(rslt1>0.34 .and. rslt1<0.36)) print*,101
if( .not.(rslt2(1)>0.10 .and. rslt2(1)<0.12))  print *,102
if( .not.(rslt2(2)>0.0194 .and. rslt2(2)<0.0196))  print *,103
print*,"pass"
end
